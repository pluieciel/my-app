<script>
export window

import jQuery from "jquery"
jQuery('.navbar-toggler').click(function () {
    jQuery(this).toggleClass('active');
    jQuery('.navigation-menu').toggleClass('hidden');
    jQuery('#navbar').addClass('bg-white');
});

jQuery(function () {
    var navigation = jQuery("#navbar");

    jQuery(window).scroll(function () {
    var scroll = jQuery(window).scrollTop();
    if (scroll >= 10) {
        navigation.addClass("bg-white xl:py-4 shadow-md");
        navigation.removeClass("xl:py-8");
    } else {
        navigation.removeClass("bg-white xl:py-4 shadow-md");
        navigation.addClass("xl:py-8");
    }
    });
});

</script>

<!-- start navigation -->
<nav class="fixed inset-x-0 top-0 z-40 w-full py-4 bg-transparent" id="navbar">
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex items-center justify-between">
    <div>
        <a href="#" title="">
        <svg class="h-8" viewBox="0 0 188 39">
            <g transform="translate(-193 -27)"><text transform="translate(280 56)" fill="#454f5b" font-size="24"
                font-family="ArialRoundedMTBold, Arial Rounded MT">
                <tspan x="0" y="0">FairRate</tspan>
            </text>
            <g transform="translate(193 27)">
                <path d="M54,33H0L27,0,54,33ZM23,16V27h8V16H23Z" transform="translate(0 6)" fill="#4ad5f6" />
                <path d="M14,0,0,16H27L14,0" transform="translate(40)" fill="#95cdb1" />
                <path d="M14,0,0,16H27L14,0" transform="translate(55 18)" fill="#ffc48b" />
            </g>
            </g>
        </svg>
        </a>
    </div>

    <div class="block md:hidden">
        <button type="button" class="flex items-center justify-center navbar-toggler text-gray-600">
        <svg class="w-8 h-8" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24">
            <path d="M4 6h16M4 12h16m-7 6h7"></path>
        </svg>
        </button>
    </div>

    <nav class="flex items-center hidden md:flex">
        <a href="#" class="font-medium hover:text-gray-600 text-sm">
        Rates
        </a>

        <a href="#" class="hidden block max-w-3xl mt-4 font-medium md:ml-6 lg:inline hover:text-gray-600 md:mt-0 text-sm">
        About Us
        </a>

        <a href="#" class="block mt-3 font-medium md:ml-6 hover:text-gray-600 md:mt-0 menu_item text-sm">
        Resources
        </a>

        <a href="#" class="block mt-3 font-medium md:ml-6 hover:text-gray-600 md:mt-0 text-sm">
        FAQs
        </a>

        <a href="#" class="block px-4 py-2 mt-3 font-medium text-white bg-blue-500 rounded hover:bg-blue-700 md:ml-6 md:mt-0 text-sm leading-tight">
        Get Started
        </a>
    </nav>
    </div>
</div>
</nav>
<!-- end navigation -->
