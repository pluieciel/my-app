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

        <a href="/practical" class="flex hover:opacity-25 ml-6 pt-3 pb-3">
            <img class="w-4 " src="http://www.entypo.com/images/info-with-circle.svg" alt="">
            <p class="font-medium text-gray-300 text-sm ml-1">
            Practical
            </p>
        </a>

        <a href="/message" class="flex hover:opacity-25 ml-6 pt-3 pb-3">
            <img class="w-4 " src="http://www.entypo.com/images/chat.svg" alt="">
            <p class="font-medium text-gray-300 text-sm ml-1">
            Message Board
            </p>
        </a>

       
        <p class="w-10">
        
        </p>
        <!--a href="/" class="block px-4 py-2 mt-3 font-medium text-white bg-blue-500 rounded hover:bg-blue-700 md:ml-6 md:mt-0 text-sm leading-tight">
        Get Started
        </a-->

    </div>
</nav>

<div class="flex w-full justify-end"
on:mouseenter={handleMouseenter}
on:mouseleave={handleMouseleave}>
    <div class="flex flex-col fixed z-40  {x ? '' : 'hidden'} mt-10">
        <div class="flex flex-col bg-gray-800 bg-opacity-75 p-2 rounded mr-56">
            <a href="/arc_de_triomphe" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Arc de Triomphe</a>
            <a href="/eiffel_tower" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Tour Eiffel</a>
            <a href="/louvre" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Louvre</a>
            <a href="/notre_dame" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Notre Dame</a>
            <a href="/opera" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Opera</a>
            <a href="/sacre_coeur" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Sacre Coeur</a>
            <a href="/Jardin_Luxembourg" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Jardin Luxembourg</a>
            <a href="/Versailles" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Versailles</a>
        </div>
    </div>
</div>