<script>
	import Nav1 from '../components/Nav1.svelte';
	import Nav2 from '../components/Nav2.svelte';
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

<div class="md:block hidden">
	<Nav1 y = {yy}/>
</div>

<div class="md:hidden block">
	<Nav2/>
</div>

<main>
	<slot></slot>
</main>

