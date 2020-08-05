# --- build ---
FROM golang:1.14.5 as build
WORKDIR /go/src

# Create and extract a new non-privileged user.
RUN useradd --shell /bin/false --system scratchuser
RUN grep '^scratchuser' /etc/passwd > /etc/passwd_scratchuser

# Build all available commands. Pass VERSION during build time to avoid
# being dependent on a .git folder. The flag CGO_ENABLED=0 is required
# for running the commands in the minimal 'FROM scratch' Docker image.
COPY . .
ARG VERSION
RUN CGO_ENABLED=0 make build



# --- deploy ---
FROM scratch

# Use the previously created non-privileged user.
COPY --from=build /etc/passwd_scratchuser /etc/passwd
USER scratchuser

# Add the root certificates for all standard certificate authorities to
# prevent an "x509: certificate signed by unknown authority" error.
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

# Add time zone and daylight-saving time data.
COPY --from=build /usr/share/zoneinfo /usr/share/zoneinfo

# Copy the requested command and set it as the entrypoint.
ARG COMMAND
COPY --from=build /go/src/build/$COMMAND /entrypoint
COPY --from=build /go/src/www/out /www/out
ENTRYPOINT ["/entrypoint"]
