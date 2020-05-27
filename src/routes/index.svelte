<script>
	const layers = [0, 1, 2, 3, 4, 5, 6];

	let y;
</script>

<style>
h1, figure, p {
	text-align: center;
	margin: 0 auto;
}

h1 {
	font-size: 2.8em;
	text-transform: uppercase;
	font-weight: 700;
	margin: 0 0 0.5em 0;
}

figure {
	margin: 0 0 1em 0;
}

img {
	width: 100%;
	max-width: 400px;
	margin: 0 0 1em 0;
}

p {
	margin: 1em auto;
}

@media (min-width: 480px) {
	h1 {
		font-size: 4em;
	}
}


</style>

<svelte:head>
	<title>Welcome to Paris</title>
</svelte:head>


<svelte:window bind:scrollY={y}/>


{#each [0, 1, 2, 3, 4, 5, 6] as layer}
	<img
		style="transform: translate(0,{-y * layer / (layers.length - 1)}px)"
		src="{layer}.png"
		alt="parallax layer {layer}"
	>
{/each}

