<div id="footer" class="row">
    <p>
        <span>© 2020 Exupery Software UG (haftungsbeschränkt)</span>
    </p>
    <p>
        <a href="https://github.com/exupery-software">GitHub</a>
        <a href="/impressum">Impressum</a>
        <a href="/datenschutz">Datenschutz</a>
    </p>
</div>

<style>
    #footer {
        display: flex;
        justify-content: space-between;
    }

    a {
        margin-left: 1rem;
    }

    a[href^="https://github.com"]::before
    {
        content: "";
        background-image: url("/img/github-mark.png");
        background-size: 18px 18px;
        background-repeat: no-repeat;
        display: inline-block;
        width: 23px;
        height: 18px;
        vertical-align: text-top;
    }
</style>
