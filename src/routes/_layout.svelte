<script>
	import Nav1 from '../components/Nav1.svelte';

	//export let segment;
	
	let yy;
</script>

<style>
	main {
		position: relative;
		
		background-color: rgb(36, 30, 30);
		padding: 0.01em;
		margin: 0 auto;
		box-sizing: border-box;
	}
</style>


<svelte:window bind:scrollY={yy}/>

<Nav1 y = {yy}/>

<main>
	<slot></slot>
</main>

