<script>
    export let y;
    let x = false;
    const handleMouseenter = () => x = true;
	const handleMouseleave = () => x = false;
</script>

<style>

</style>

<nav class="flex w-full z-30 fixed items-center justify-between pr-4 bg-gray-800 {y < 10 ? '' : 'opacity-75'}">
    <div></div>

    <div class="flex items-center">
        <a href="/" class="flex hover:opacity-25 pt-3 pb-3">
            <img class="w-4 " src="http://www.entypo.com/images/home.svg" alt="">
            <p class="font-medium text-gray-300 text-sm ml-1">
            Home
            </p>
        </a>

        <a href="/" class="flex hover:opacity-25 ml-6 pt-3 pb-3"
        on:mouseenter={handleMouseenter}
	    on:mouseleave={handleMouseleave}>
            <img class="w-4 " src="http://www.entypo.com/images/address.svg" alt="">
            <p class="font-medium text-gray-300 text-sm ml-1">
            Sites
            </p>
        </a>

        <a href="/" class="flex hover:opacity-25 ml-6 pt-3 pb-3">
            <img class="w-4 " src="http://www.entypo.com/images/info-with-circle.svg" alt="">
            <p class="font-medium text-gray-300 text-sm ml-1">
            Practical
            </p>
        </a>

       

        <a href="/" class="block px-4 py-2 mt-3 font-medium text-white bg-blue-500 rounded hover:bg-blue-700 md:ml-6 md:mt-0 text-sm leading-tight">
        Get Started
        </a>

    </div>
</nav>

<div class="flex w-full justify-end"
on:mouseenter={handleMouseenter}
on:mouseleave={handleMouseleave}>
    <div class="flex flex-col fixed z-40 mr-56 {x ? '' : 'hidden'} mt-10">
        <div class="flex flex-col bg-gray-800 bg-opacity-75 p-2 rounded">
            <a href="/louvre" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Louvre</a>
            <a href="/" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Eiffel</a>
        </div>
    </div>
</div>