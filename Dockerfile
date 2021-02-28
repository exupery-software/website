# --- images ---
ARG DOCKER_IMAGE_NODE
ARG DOCKER_IMAGE_GOLANG



# --- frontend ---
FROM ${DOCKER_IMAGE_NODE} as frontend
WORKDIR /src
COPY Makefile Makefile
COPY app/ app/
RUN make build-frontend



# --- backend ---
FROM ${DOCKER_IMAGE_GOLANG} as backend
WORKDIR /src

# Create and extract a new non-privileged user.
RUN useradd --shell /bin/false --system scratchuser
RUN grep '^scratchuser' /etc/passwd > /etc/passwd_scratchuser

# Build all available commands. Pass VERSION during build time to avoid
# being dependent on a .git folder. The flag CGO_ENABLED=0 is required
# for running the commands in the minimal 'FROM scratch' Docker image.
COPY Makefile go.mod main.go .
COPY --from=frontend /src/app/build app/build
RUN CGO_ENABLED=0 make build-backend



# --- deploy ---
FROM scratch

# Use the previously created non-privileged user.
COPY --from=backend /etc/passwd_scratchuser /etc/passwd
USER scratchuser

# Add the root certificates for all standard certificate authorities to
# prevent an "x509: certificate signed by unknown authority" error.
COPY --from=backend /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

# Add time zone and daylight-saving time data.
COPY --from=backend /usr/share/zoneinfo /usr/share/zoneinfo

# Copy the requested command and set it as the entrypoint.
COPY --from=backend /src/build/website /entrypoint
ENTRYPOINT ["/entrypoint"]
