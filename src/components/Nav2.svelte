<script>
    let show=false;

    function toggleActive() {
    show = !show
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

        <a href="/" class="flex hover:opacity-25 pt-3 pb-3">
      
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

