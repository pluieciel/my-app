<script>
    let show=false;

    function toggleActive() {
    show = !show
    }

    let show2=false;

    function toggleActive2() {
    show2 = !show2
    }
</script>

<style>

</style>


<a href="/" on:click|preventDefault={toggleActive} class="m-2 w-8 h-8 fixed z-30 bg-gray-800 opacity-75 rounded">
    <img src="http://www.entypo.com/images/menu.svg" alt="">
</a>

<nav class="{show ? 'block' : 'hidden'} flex m-2 w-32 z-30 fixed items-center justify-between p-4 bg-gray-800 opacity-75 rounded mt-10">
    <div></div>

    <div class="flex flex-col items-left">
        <a href="/" class="flex hover:opacity-25 pt-3 pb-3">
            <img class="w-4" src="http://www.entypo.com/images/home.svg" alt="">
            <p class="font-medium text-gray-300 text-sm ml-1">
            Home
            </p>
        </a>

        <a href="/" on:click|preventDefault={toggleActive2} class="flex hover:opacity-25 pt-3 pb-3">
      
            <img class="w-4" src="http://www.entypo.com/images/address.svg" alt="">
            <p class="font-medium text-gray-300 text-sm ml-1">
            Sites
            </p>
        </a>

        <a href="/practical" class="flex hover:opacity-25 pt-3 pb-3">
            <img class="w-4" src="http://www.entypo.com/images/info-with-circle.svg" alt="">
            <p class="font-medium text-gray-300 text-sm ml-1">
            Practical
            </p>
        </a>

        <a href="/message" class="flex hover:opacity-25 pt-3 pb-3">
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

<div class="{show2 ? 'block' : 'hidden'} flex w-full">

    <div class="flex flex-col fixed z-20 mt-10">
        <div class="flex flex-col bg-gray-800 bg-opacity-75 p-2 rounded ml-32">
            <a href="/arc_de_triomphe" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Arc de Triomphe</a>
            <a href="/eiffel_tower" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Tour Eiffel</a>
            <a href="/louvre" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Louvre</a>
            <a href="/notre_dame" class="font-medium text-gray-300 text-sm m-2 hover:opacity-25">Notre Dame</a>
        </div>
    </div>
</div>