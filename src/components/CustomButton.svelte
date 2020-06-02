<script>
	export let text;
</script>

<style>
	button {
		height: 4rem;
		width: 10rem;
		background-color: black;
		border-radius: 4px;
		border-color: rgba(144, 144, 144);
		border-style: solid;
		border-width: 2px;
		color: white;
		font-size: 1.25rem;
		background-image: linear-gradient(45deg, white 50%, transparent 50%);
		background-position: 100%;
		background-size: 400%;
		transition: background 300ms ease-in-out;
	}
	button:hover {
		background-position: 0;
		color: black;
		font-weight: bold;
	}
</style>

<button on:click>
	{text}
</button>