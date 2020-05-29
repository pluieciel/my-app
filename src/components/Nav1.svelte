<script>
    export let y;
    
</script>


<nav class="flex w-full z-40 fixed items-center justify-between pr-4 bg-gray-800 {y < 10 ? '' : 'opacity-75'}">
    <div></div>

    <div class="flex items-center p-2">
        <a href="/" class="flex hover:opacity-25">
            <img class="w-4 " src="http://www.entypo.com/images/home.svg" alt="">
            <p class="font-medium text-gray-300 text-sm ml-1">
            Home
            </p>
        </a>

        <a href="/louvre" class="flex hover:opacity-25 ml-6">
            <img class="w-4 " src="http://www.entypo.com/images/address.svg" alt="">
            <p class="font-medium text-gray-300 text-sm ml-1">
            Sites
            </p>
        </a>

        <a href="/" class="flex hover:opacity-25 ml-6">
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