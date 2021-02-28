<svelte:head>
    <title>Entwicklung | Exupery Software</title>
</svelte:head>

<div class="heading">
    <div class="row">
        <h1>Entwicklung</h1>
    </div>
</div>

<div class="row">
    <div class="topic">
        <div class="topic-image">
            <img src="/img/architecture.svg" alt="Layers" />
        </div>
        <div class="topic-text">
            <h2>Architektur</h2>
            <ul>
                <li>
                    Wie kann ich meine Geschäftslogik von anderen Schichten wie
                    Steuerung und Datenzugriff trennen, um Wiederverwendbarkeit
                    zu erhöhen?
                </li>
                <li>
                    Welche Abhängigkeiten habe ich und welche davon brauche ich
                    tatsächlich? Wie prüfe ich neue Abhängigkeiten und halte
                    diese auf dem neuesten Stand?
                </li>
                <li>
                    Wie modelliere ich (relationale) Daten, sodass diese sowohl
                    konsistent als auch flexibel für zukünftige Änderungen sind?
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="row">
    <div class="topic">
        <div class="topic-image">
            <img src="/img/coding.svg" alt="Layers" />
        </div>
        <div class="topic-text">
            <h2>Programmierung</h2>
            <ul>
                <li>
                    Wie kann ich regelmäßige Analysen und Berichte für meine
                    Daten erstellen und diese für meine Entscheidungen nutzen?
                </li>
                <li>
                    Welche Möglichkeiten habe ich, verschiedene Systeme durch
                    einen zentralen Service zu verbinden?
                </li>
                <li>
                    Wie können Versionsverwaltung und Codereviews dabei helfen
                    die Qualität meiner Software zu verbessern? Welche Rolle
                    spielt ein einzelner Commit für die Wartbarkeit des Codes?
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="row">
    <div class="topic">
        <div class="topic-image">
            <img src="/img/testing.svg" alt="Layers" />
        </div>
        <div class="topic-text">
            <h2>Tests</h2>
            <ul>
                <li>Welche Faktoren machen meinen Code einfacher testbar?</li>
                <li>
                    Wie kann ich Abhängigkeiten im Test ersetzen ("mocken")?
                </li>
                <li>
                    Welche Art von Test sollte ich überhaupt schreiben, z.B.
                    Unittest, Integrationstest, Regressionstest?
                </li>
            </ul>
        </div>
    </div>
</div>

<style>
    .topic {
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        padding: 1rem 0;
    }

    .topic-image {
        flex: 1 1 50%;
        text-align: center;
    }

    .topic-image img {
        width: 280px;
    }

    .topic-text {
        flex: 1 1 50%;
    }
</style>
