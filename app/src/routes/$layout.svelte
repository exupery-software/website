<script>
    import Footer from "$components/Footer.svelte";
    import Navigation from "$components/Navigation.svelte";
</script>

<header>
    <Navigation />
</header>

<main>
    <slot />
</main>

<footer>
    <Footer />
</footer>

<style>
    :global(*) {
        box-sizing: border-box;
    }

    :global(html, body, #svelte) {
        height: 100%;
        margin: 0;
    }

    :global(#svelte) {
        display: flex;
        flex-direction: column;

        font-family: Arial, Helvetica, sans-serif;
        font-size: 1.125em;
        line-height: 2;
    }

    :global(.row) {
        width: 100%;
        max-width: 1024px;
        padding: 0 1rem;
        margin: 0 auto;
    }

    :root {
        --color1: hsl(180, 100%, 25%);
        --color1-light: hsl(180, 50%, 75%);
    }

    :global(a) {
        color: var(--color1);
    }

    main {
        flex: 1;
    }

    footer {
        background-color: whitesmoke;
        border-top: 1px solid lightgrey;
    }

    :global(.heading) {
		background: top right / 100% 3em no-repeat
				linear-gradient(-2deg, transparent 49%, white 50%),
			bottom -1px right / 100% 3em no-repeat linear-gradient(-2deg, white
						49%, transparent 50%),
			linear-gradient(to right, var(--color1), var(--color1-light));

		background-color: var(--color1);
		color: white;
		font-size: 1.2em;
		padding: 3em 0;
	}

	:global(.heading h1) {
		font-weight: normal;
	}
</style>
