<svelte:head>
    <title>Beratung | Exupery Software</title>
</svelte:head>

<div class="heading">
    <div class="row">
        <h1>Beratung</h1>
    </div>
</div>

<div class="row">
    <div class="topic">
        <div class="topic-image">
            <img src="/img/technology.svg" alt="Layers" />
        </div>
        <div class="topic-text">
            <h2>Technologie</h2>
            <!-- Interoperability, Productivity, Sustainability -->
            <!-- Git Migration -->
            <ul>
                <li>
                    Wie sieht mein Technologie-Stack aus? Ist er immer noch
                    aktuell und auch zukunftsfähig?
                </li>
                <li>
                    Welche Technologien können meine Produktivität erhöhen?
                    Welche sind überflüssig oder bremsen mich sogar aus?
                </li>
                <li>
                    Wie kann ich Synergien zwischen den von mir eingesetzten
                    Technologien besser ausnutzen?
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="row">
    <div class="topic">
        <div class="topic-image">
            <img src="/img/processes.svg" alt="Layers" />
        </div>
        <div class="topic-text">
            <h2>Prozesse</h2>
            <!-- Agile, Continuous Delivery / Deployment -->
            <!-- Premise: "Software is easy to change" -->
            <ul>
                <li>
                    Wie sind Entwicklung und Wartung von Software miteinander
                    verknüpft? Was kann ich tun, um technische Schulden wieder
                    abzubauen und in Zukunft zu vermeiden?
                </li>
                <li>
                    Wo befinden sich die Engpässe in meinen Prozessen und wie
                    können diese effektiv ausgenutzt und entfernt werden?
                </li>
                <li>
                    Wie können Entwicklungszyklen verkürzt werden und welchen
                    Einfluss hat die richtige Definition von "fertig" darauf.
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="row">
    <div class="topic">
        <div class="topic-image">
            <img src="/img/recruiting.svg" alt="Layers" />
        </div>
        <div class="topic-text">
            <h2>Personal</h2>
            <ul>
                <li>Nach welchen Charakterzügen sollte ich Ausschau halten?</li>
                <li>
                    Wie sieht ein Arbeitsumfeld aus, das Talent anzieht und
                    hält?
                </li>
                <li>
                    Welche Rolle spielen meine Technologien und Prozesse dabei?
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
