<div class="row">
    <div id="header">
        <a id="title" href="/">
            <img
                src="/img/logo.svg"
                alt="Logo"
            />
            exupery software
        </a>
        <input id="menu" type="checkbox" />
        <label for="menu" />
        <nav id="nav">
            <a href="/beratung">Beratung</a>
            <a href="/entwicklung">Entwicklung</a>
            <a href="/schulung">Schulung</a>
            <a href="/kontakt">Kontakt</a>
        </nav>
    </div>
</div>

<style>
    #header {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        align-items: baseline;
        margin-left: -1rem;
        margin-right: -1rem;
    }

    img {
        height: 1em;
        vertical-align: middle;
    }

    #title,
    #menu ~ label {
        font-size: 1.5em;
        font-weight: bold;
    }

    #menu {
        display: none;
    }

    #menu ~ label::before {
        content: "☰";
    }

    #menu:checked ~ label::before {
        content: "╳";
    }

    #nav {
        display: none;
        flex-basis: 100%;
        flex-direction: column;
    }

    #menu:checked ~ #nav {
        display: flex;
    }

    a,
    label {
        color: black;
        padding: 1rem;
        text-decoration: none;
    }

    @media screen and (min-width: 768px) {
        #menu ~ label {
            display: none;
        }
        #nav {
            display: flex;
            flex-basis: auto;
            flex-direction: row;
        }
    }
</style>
