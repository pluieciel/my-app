<script>
	import Nav1 from '../components/Nav1.svelte';

	//export let segment;
	
	let yy;
</script>

<style>
	main {
		position: relative;
		max-width: 56em;
		background-color: white;
		padding: 2em;
		margin: 0 auto;
		box-sizing: border-box;
	}
</style>


<svelte:window bind:scrollY={yy}/>

<Nav1 y = {yy}/>

<main>
	<slot></slot>
</main>

