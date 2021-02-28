<svelte:head>
    <title>Exupery Software</title>
</svelte:head>

<div class="heading">
    <div class="row">
        <h1>Software einfach machen.</h1>
        <div class="quote">
            <blockquote>
                Vollkommenheit entsteht nicht dann, wenn nichts mehr
                hinzuzufügen ist, sondern erst dann, wenn man nichts mehr
                wegnehmen kann.
            </blockquote>
            <cite> Antoine de Saint-Exupéry </cite>
        </div>
    </div>
</div>

<div class="row">
    <div id="service">
        <div>
            <img src="/img/consulting.svg" alt="Puzzle" />
            <a href="/beratung">
                <h1>Beratung ›</h1>
            </a>
        </div>
        <div>
            <img src="/img/engineering.svg" alt="Cogs" />
            <a href="/entwicklung">
                <h1>Entwicklung ›</h1>
            </a>
        </div>
        <div>
            <img src="/img/training.svg" alt="Flipchart" />
            <a href="/schulung">
                <h1>Schulung ›</h1>
            </a>
        </div>
    </div>
</div>

<style>
    .quote {
        font-family: "Times New Roman", Times, serif;
        padding-left: 2rem;
    }

    .quote blockquote {
        font-style: italic;
        text-indent: -1rem;
        margin: 1em 0;
    }

    .quote blockquote::before {
        content: open-quote;
    }

    .quote blockquote::after {
        content: close-quote;
    }

    .quote cite {
        font-style: normal;
    }

    .quote cite::before {
        content: "—";
    }

    #service {
        display: flex;
        flex-direction: column;
    }

    @media screen and (min-width: 768px) {
        #service {
            flex-direction: row;
        }
    }

    #service > * {
        flex: 1;
        margin: 1rem 0;
        text-align: center;
    }

    #service img {
        width: 100%;
        max-width: 280px;
    }

    #service a {
        text-decoration: none;
    }
</style>
