<script>
	import Nav1 from '../components/Nav1.svelte';

	//export let segment;
	
	let yy;
</script>

<style>
	main {
		position: relative;
		
		background-color:#f7fafc;
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

