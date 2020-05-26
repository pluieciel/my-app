<script>
	export let segment;

	import CustomButton from '../components/CustomButton.svelte';

	function handleClick() {
		alert('clicked');
	}
</script>

<style>
	nav {
		border-bottom: 1px solid rgba(255,62,0,0.1);
		font-weight: 300;
		padding: 0 1em;
	}

	ul {
		margin: 0;
		padding: 0;
	}

	/* clearfix */
	ul::after {
		content: '';
		display: block;
		clear: both;
	}

	li {
		display: block;
		float: left;
	}

	[aria-current] {
		position: relative;
		display: inline-block;
	}

	[aria-current]::after {
		position: absolute;
		content: '';
		width: calc(100% - 0.5em);
		height: 2px;
		background-color: rgb(212, 41, 41);
		display: block;
		bottom: -1px;
	}

	a {
		text-decoration: none;
		margin: 0.5em 0.25em;
		padding: 0.5em 0.25em;
		display: block;
	}
</style>

<nav class="bg-gray-100">
	<ul class="flex flex-col">
		<li><a class="hover:bg-red-200" aria-current='{segment === undefined ? "page" : undefined}' href='.'>home</a></li>
		<li><a class="hover:bg-red-200" aria-current='{segment === "louvre" ? "page" : undefined}' href='louvre'>louvre</a></li>
		<li><CustomButton on:click={handleClick} text={"Louvre"}/></li>
		<!-- for the blog link, we're using rel=prefetch so that Sapper prefetches
		     the blog data when we hover over the link or tap it on a touchscreen -->
		<!--
		<li><a rel=prefetch aria-current='{segment === "blog" ? "page" : undefined}' href='blog'>blog</a></li>
	    -->
	</ul>
</nav>
