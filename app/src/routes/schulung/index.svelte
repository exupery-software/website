<svelte:head>
    <title>Schulung | Exupery Software</title>
</svelte:head>

<div class="heading">
    <div class="row">
        <h1>Schulung</h1>
    </div>
</div>

<div class="row">
    <p>
        Ob zum Auffrischen des vorhandenen Wissens oder um den Wechsel zu einer
        neuen Technologie zu beschleunigen. Unsere Schulungen sind eine
        effektive Möglichkeit, alle Beteiligten abzuholen und auf den gleichen
        Stand zu bringen. Die Entwicklung neuer Funktionalität ist nur ein
        kleiner Teil der Softwareentwicklung; der größere ist die langfristige
        Pflege und Wartung. Wenn dieses Wissen ungleich verteilt ist, können
        natürliche Fluktuation und Restrukturierungen ein Projekt ausbremsen
        oder sogar zum Stillstand bringen. Durch den Fokus auf eine solide
        Wissensbasis stärken wir Ihre Fähigkeit, sich an Änderungen anzupassen,
        und zeigen Ihnen, dass "agil" nicht bloß ein Marketingbegriff ist.
    </p>
</div>

<div class="row">
    <h2>Entwickler-Grundlagen</h2>
    <p>
        Wir sind der Meinung, dass eine kurze und sorgfältig gepflegte Liste von
        Technologien einer langen und spezialisierten Liste fast immer überlegen
        ist. Richtig angewendet bieten diese Technologien einen Grad an
        Interoperabilität, der sehr schnell einen Mangel an Spezialisierung
        ausgleichen kann. Weniger Technologien sorgen für eine schnellere
        Einarbeitung neuer Mitarbeiter, verhindern Wissenssilos, und fördern
        eine <i>"brauchen wir das wirklich?"</i> Denkweise. Unser Ziel ist es, Ihnen
        maximale Produktivität bei minimalem Einsatz von Ressourcen zu ermöglichen.
        Alle aufgeführten Technologien sind gratis und quelloffen, und werden von
        uns selbst eingesetzt, z.B. für diese Webseite.
    </p>
</div>

<div id="courses" class="row">
    <section>
        <img src="/img/bash-logo.png" alt="Bash Logo" />
        <h2>Bash</h2>
        <p>
            Stabil und fast überall verfügbar. Bash ist eine hervorragende
            universelle Shell mit guten Fähigkeiten zur Skript-Erstellung.
        </p>
        <a href="https://www.gnu.org/software/bash/">Webseite: Bash</a>

        <h3>Schulungsinhalte</h3>
        <ul>
            <li>
                Grundlagen
                <ul>
                    <li>Syntax & Builtins</li>
                    <li>Pipelines & Umleitung</li>
                    <li>Shell Expansions</li>
                    <li>(Umgebungs-) Variablen</li>
                    <li>Kontrollfluss</li>
                </ul>
            </li>
            <li>
                Fortgeschritten
                <ul>
                    <li>Best Practices</li>
                    <li>Prozesse & Signale</li>
                    <li>SSH</li>
                    <li>
                        <a href="https://www.gnu.org/software/make/"
                            >Makefiles</a
                        >
                    </li>
                </ul>
            </li>
            <li>
                Nützliche Links
                <ul>
                    <li>
                        <a
                            href="http://google.github.io/styleguide/shellguide.html"
                            >Styleguide</a
                        >
                    </li>
                    <li>
                        <a href="https://www.shellcheck.net/">ShellCheck</a>
                    </li>
                </ul>
            </li>
        </ul>
    </section>

    <section>
        <img src="/img/git-logo.png" alt="Git Logo" />
        <h2>Git</h2>
        <p>
            Wenn es um das Nachhalten von Änderungen in der Softwareentwicklung
            geht, ist Git eindeutig Industriestandard. Entwickelt vor mehr als
            15 Jahren, hat es sich als stabile Versionsverwaltung für kleine und
            große Projekte durchgesetzt.
        </p>
        <a href="https://git-scm.com/">Webseite: Git</a>

        <h3>Schulungsinhalte</h3>
        <ul>
            <li>
                Grundlagen
                <ul>
                    <li>Konfiguration</li>
                    <li>Dezentrale Versionsverwaltung</li>
                    <li>Commits & Log</li>
                    <li>Branching & Merging</li>
                    <li>Synchronisierung</li>
                    <li>Aliase</li>
                </ul>
            </li>
            <li>
                Fortgeschritten
                <ul>
                    <li>Best Practices</li>
                    <li>Arbeitsweisen</li>
                    <li>Merge / Rebase / Reset</li>
                    <li>Geschichte umschreiben</li>
                    <li>Patches & Cherry-Pick</li>
                </ul>
            </li>
            <li>
                Nützliche Links
                <ul>
                    <li>
                        <a href="https://chris.beams.io/posts/git-commit/"
                            >Commit-Texte</a
                        >
                    </li>
                    <li>
                        <a
                            href="https://www.bitsnbites.eu/a-tidy-linear-git-history/"
                            >Lineare Historie</a
                        >
                    </li>
                    <li><a href="https://jonas.github.io/tig/">Tig</a></li>
                </ul>
            </li>
        </ul>
    </section>

    <section>
        <img src="/img/go-logo.png" alt="Go Logo" />
        <h2>Go</h2>
        <p>
            Einfach und zuverlässig, mit erstklassiger Unterstützung für
            Nebenläufigkeit und außergewöhnlichem Tooling. Die perfekte Lösung
            für Kommandozeilen-Anwendungen und Web-Services, ob HTTP oder gRPC.
        </p>
        <a class="external" href="https://golang.org/">Webseite: Go</a>

        <h3>Schulungsinhalte</h3>
        <ul>
            <li>
                Grundlagen
                <ul>
                    <li>"Hello, World!"</li>
                    <li>Variablen und Funktionen</li>
                    <li>Module und Pakete</li>
                    <li>Typen und Schnittstellen</li>
                    <li>Kontrollfluss</li>
                    <li>Kommandozeilen-Argumente</li>
                    <li>HTTP Server</li>
                </ul>
            </li>
            <li>
                Fortgeschritten
                <ul>
                    <li>Best Practices</li>
                    <li>Nebenläufigkeit</li>
                    <li>Race Detector</li>
                    <li>gRPC Server</li>
                    <li>Statische Binärdateien</li>
                    <li>Dockerfiles</li>
                </ul>
            </li>
            <li>
                Nützliche Links
                <ul>
                    <li>
                        <a
                            href="https://github.com/golang/go/wiki/CodeReviewComments"
                            >Codereview Bemerkungen</a
                        >
                    </li>
                    <li>
                        <a href="https://staticcheck.io/">Statische Analyse</a>
                    </li>
                </ul>
            </li>
        </ul>
    </section>

    <section>
        <img src="/img/vscode-logo.png" alt="Visual Studio Code Logo" />
        <h2>Visual Studio Code</h2>
        <p>
            Saubere Oberfläche, hochgradig erweiterbar und aktualisiert auf
            monatlicher Basis. Die beliebteste Entwicklungs-Umgebung nach der <a
                href="https://insights.stackoverflow.com/survey/2019"
            >
                Stack Overflow’s 2019 Developer Survey</a
            >.
        </p>
        <a href="https://code.visualstudio.com/">Webseite: Visual Studio Code</a
        >

        <h3>Schulungsinhalte</h3>
        <ul>
            <li>
                Grundlagen
                <ul>
                    <li>Editor & Navigation</li>
                    <li>IntelliSense & Refactoring</li>
                    <li>Integriertes Terminal</li>
                    <li>Versionsverwaltung</li>
                    <li>Erweiterungen installieren</li>
                </ul>
            </li>
            <li>
                Fortgeschritten
                <ul>
                    <li>Arbeiten mit Bash, Git & Go</li>
                    <li>Einstellungen und Tastaturkürzel</li>
                    <li>Debugging</li>
                    <li>Tasks</li>
                </ul>
            </li>
            <li>
                Nützliche Links
                <ul>
                    <li>
                        <a
                            href="https://visualstudio.microsoft.com/services/live-share/"
                            >Live Share</a
                        >
                    </li>
                    <li>
                        <a href="https://code.visualstudio.com/api"
                            >Erweiterungen selbst erstellen</a
                        >
                    </li>
                </ul>
            </li>
        </ul>
    </section>
</div>

<div class="row">
    <p>
        Nicht gefunden, wonach Sie gesucht haben?
        <a href="/kontakt">Lassen Sie es uns wissen!</a>
        Wir erweitern und verbessern unser Angebot kontinuierlich und freuen uns
        über Ihre Rückmeldung.
    </p>
</div>

<style>
    #courses {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        align-items: stretch;
    }

    #courses section {
        display: flex;
        flex-direction: column;
        width: 100%;
        padding: 1rem;
        margin: 1rem 0;
        background-color: whitesmoke;
        border-radius: 1rem;
    }

    @media screen and (min-width: 768px) {
        #courses section {
            width: 48%;
        }
    }

    #courses section img {
        height: 8em;
        align-self: center;
    }

    #courses section h2 {
        align-self: center;
    }
</style>
