<script>
	import * as animateScroll from "svelte-scrollto";

</script>

<style>
.test{
	border-color: brown;
	border-style: solid;
	border-width: 4px;

}
.fixheight{
	height:524px;
}

.mimg{
	height:250px;
	width:auto;
}

/* hover styles */
.location-listing {
  position: relative;
}

.location-image {
  line-height: 0;
  overflow: hidden;
}

.location-image img {
  filter: blur(0px);
  transition: filter 0.3s ease-in;
  
  transition: transform .3s ease-in;
}

.location-title {
  font-size: 1.5em;
  font-weight: bold;
  text-decoration: none;
  z-index: 1;
  position: absolute;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  opacity: 0;
  transition: opacity .5s;
  background: rgba(90,0,10,0.4);
  color: white;
  
  /* position the text in t’ middle*/
  display: flex;
  align-items: center;
  justify-content: center;
}

.location-listing:hover .location-title {
  opacity: 1;
}

.location-listing:hover .location-image img {
  filter: blur(2px);
  transform: scale(1.1);
}
</style>

<svelte:head>
	<title>practical</title>
</svelte:head>

<body>
	<div class="">

		<!-- Main -->
			<section id="main" class="flex flex-col">

				<!-- Banner -->
					<div class="h-10"></div>
					<section id="banner" class="flex flex-col justify-center items-center bg-black w-full h-64 pt-64 pb-64">
						<div class="mt-24 flex flex-col justify-center items-center">
							<p class="text-white text-6xl">Explore the Beauty of Paris</p>
							<p class="text-white text-xl">The best choices for your traveling </p>
						</div>
						<ul class="mt-10 buttom-0 flex space-x-12 justify-center items-center">
							<div class="container relative justify-center items-center">
								<button type="button" class="absolute mt-16 mx-10 bg-white text-black rounded-sm hover:bg-white bg-white bg-opacity-75 py-1 inline-block items-center w-20 focus:shadow-outline focus:outline-none">
									<a class="text-xl" on:click={() => animateScroll.scrollTo({element: '#map', duration: 2000})}>Map</a>
								</button>								
								<img src="map2.jpg" class="rounded-full h-40 w-40 buttom-0 border-solid border-white border-8">
							    
							</div>
							<div class="container relative justify-center items-center">
								<button type="button" class="absolute mt-16 mx-10 bg-white text-black rounded-sm hover:bg-white bg-white bg-opacity-75 py-1 inline-block items-center w-20 focus:shadow-outline focus:outline-none">
						        	<a class="text-xl" href="https://www.ratp.fr/en/plan-metro">Metro</a>
								</button>
								<img src="metro.jpg" class="rounded-full border-solid border-white border-8 h-40 w-40 buttom-0">	
	
							</div>
							<div class="container relative justify-center items-center">
								<button type="button" class="absolute mt-16 mx-10 bg-white text-black rounded-sm hover:bg-white bg-white bg-opacity-75 py-1 inline-block items-center w-20 focus:shadow-outline focus:outline-none">
						        	<a class="text-xl" href="https://www.komoot.com/guide/1525177/road-cycling-routes-around-paris">Bike</a>
								</button>								
								<img src="bike.jpg" class="rounded-full border-solid border-white border-8 h-40 w-40 buttom-0">		
							</div>

						</ul>

					</section>

				<!-- Map -->
					<section id="map" class="flex flex-col p-10 bg-gray-100">

						<!-- map -->
							<div class="flex flex-col items-center">
								<header class="h-20 p-3">
									<p class="text-black text-3xl">Map</p>
								</header>
								<div class="fixheight grid grid-rows-1 grid-cols-3">
									<div class="row-span-1 col-span-2 bg-white p-4">
										<iframe src="https://www.google.com/maps/d/u/1/embed?mid=1nG_RSsx9qPV6amD6QXXoi4IZi-rQAjqH" width="800" height="486"></iframe>
									</div>

									<div class="row-span-1 col-span-1 bg-white items-center">
										<p class="ml-4 mt-16 text-center text-2xl font-semibold">Top 1 City in the World</p>
									    <p class="ml-4 mt-8 text-center text-xl font-medium">18 zones</p>
										<p class="ml-4 mt-8 text-center text-xl font-medium">More than 2 million people</p>
										<p class="ml-12 mr-8 mt-8 text-center text-base">Check out the main monuments, museums, squares, churches and attractions in our map of Paris.</p>
										<p class="ml-12 mt-4 mr-8 text-center text-base">Click on each icon to see what it is.</p>

									</div>

								</div>
								<a href="/louvre" class="mt-10">
									<button class="rounded bg-blue-600 hover:bg-blue-800 text-white text-xl p-3 pl-10 pr-10">Learn More</button>
								</a>
							</div>
					</section>

				<!-- Contact -->
					<section id="contact2" class="mt-5 grid grid-cols-2 h-64">
						<!-- Social -->
							<div class="flex flex-col bg-gray-300 p-10 text-gray-900">
								<p class="font-bold text-xl mb-3">About Us</p>
								<div class='space-y-2'>
									<p>We are 4 ESSEC students.</p>
									<p>Actively promoting the beauty of Paris to the world</p>
								</div>
								<p class="font-bold text-xl mt-10">Follow Me</p>
								<ul class="mt-5 flex space-x-4">
									<a href="https://www.instagram.com/">
										<button class="border-transparent text-gray-900 rounded-full hover:text-blue-700 focus:outline-none focus:text-gray-900"
												aria-label="Notifications">
											<svg width="28" height="28" id="Instagram" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 18" fill="currentColor" stroke="currentColor">
												<path d="M18.94586,6.28931a6.60561,6.60561,0,0,0-.41833-2.18463,4.41189,4.41189,0,0,0-1.03809-1.59412,4.41189,4.41189,0,0,0-1.59412-1.03809,6.60561,6.60561,0,0,0-2.18463-.41833C12.75073,1.01038,12.44427,1,10,1s-2.75073.01038-3.71069,0.05414a6.60561,6.60561,0,0,0-2.18463.41833A4.41189,4.41189,0,0,0,2.51056,2.51056,4.41189,4.41189,0,0,0,1.47247,4.10468a6.60561,6.60561,0,0,0-.41833,2.18463C1.01038,7.24927,1,7.55573,1,10s0.01038,2.75073.05414,3.71069a6.60561,6.60561,0,0,0,.41833,2.18463,4.41189,4.41189,0,0,0,1.03809,1.59412,4.41109,4.41109,0,0,0,1.59412,1.03809,6.60561,6.60561,0,0,0,2.18463.41833C7.24927,18.98969,7.55573,19,10,19s2.75073-.01031,3.71069-0.05414a6.60561,6.60561,0,0,0,2.18463-.41833,4.60208,4.60208,0,0,0,2.6322-2.6322,6.60561,6.60561,0,0,0,.41833-2.18463C18.98962,12.75073,19,12.44427,19,10S18.98962,7.24927,18.94586,6.28931Zm-1.61993,7.34747a4.97824,4.97824,0,0,1-.30994,1.67114A2.98017,2.98017,0,0,1,15.30792,17.016a4.9786,4.9786,0,0,1-1.67114.30994C12.68787,17.3692,12.40326,17.37836,10,17.37836s-2.68787-.00916-3.63678-0.05243A4.9786,4.9786,0,0,1,4.69208,17.016a2.78769,2.78769,0,0,1-1.03485-.67322A2.78769,2.78769,0,0,1,2.984,15.30792a4.97824,4.97824,0,0,1-.30994-1.67114C2.6308,12.68774,2.62164,12.40314,2.62164,10s0.00916-2.68774.05243-3.63678A4.9786,4.9786,0,0,1,2.984,4.69208a2.78769,2.78769,0,0,1,.67322-1.03485A2.78769,2.78769,0,0,1,4.69208,2.984a4.9786,4.9786,0,0,1,1.67114-.30994C7.31226,2.6308,7.59686,2.62164,10,2.62164s2.68774,0.00916,3.63678.05243a4.9786,4.9786,0,0,1,1.67114.30994,2.78769,2.78769,0,0,1,1.03485.67322A2.78769,2.78769,0,0,1,17.016,4.69208a4.9786,4.9786,0,0,1,.30994,1.67114c0.04327,0.949.05243,1.2337,0.05243,3.63678S17.3692,12.68774,17.32593,13.63678ZM10,5.37836A4.62164,4.62164,0,1,0,14.62164,10,4.62169,4.62169,0,0,0,10,5.37836ZM10,13a3,3,0,1,1,3-3A3,3,0,0,1,10,13Zm5.88422-7.8042a1.08,1.08,0,1,1-1.08-1.08A1.08,1.08,0,0,1,15.88422,5.1958Z" transform="translate(-1 -1)"/>
											</svg>
										</button>
									</a>

									<a href="https://www.facebook.com/">
										<button class="border-transparent text-gray-900 rounded-full hover:text-blue-700 focus:outline-none focus:text-gray-900"
												aria-label="Notifications">
											<svg width="28" height="28" version="1.1" id="Facebook" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												viewBox="0 0 20 20" enable-background="new 0 0 20 20" xml:space="preserve" fill="currentColor" stroke="currentColor">
												<path d="M17,1H3C1.9,1,1,1.9,1,3v14c0,1.101,0.9,2,2,2h7v-7H8V9.525h2V7.475c0-2.164,1.212-3.684,3.766-3.684l1.803,0.002v2.605
												h-1.197C13.378,6.398,13,7.144,13,7.836v1.69h2.568L15,12h-2v7h4c1.1,0,2-0.899,2-2V3C19,1.9,18.1,1,17,1z"/>
											</svg>
										</button>
									</a>

									<a href="https://twitter.com/explore">
										<button class="border-transparent text-gray-900 rounded-full hover:text-blue-700 focus:outline-none focus:text-gray-900"
												aria-label="Notifications">
											<svg width="28" height="28" version="1.1" id="Twitter" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												viewBox="0 0 20 20" enable-background="new 0 0 20 20" xml:space="preserve" fill="currentColor" stroke="currentColor">
												<path d="M17.316,6.246c0.008,0.162,0.011,0.326,0.011,0.488c0,4.99-3.797,10.742-10.74,10.742c-2.133,0-4.116-0.625-5.787-1.697
												c0.296,0.035,0.596,0.053,0.9,0.053c1.77,0,3.397-0.604,4.688-1.615c-1.651-0.031-3.046-1.121-3.526-2.621
												c0.23,0.043,0.467,0.066,0.71,0.066c0.345,0,0.679-0.045,0.995-0.131c-1.727-0.348-3.028-1.873-3.028-3.703c0-0.016,0-0.031,0-0.047
												c0.509,0.283,1.092,0.453,1.71,0.473c-1.013-0.678-1.68-1.832-1.68-3.143c0-0.691,0.186-1.34,0.512-1.898
												C3.942,5.498,6.725,7,9.862,7.158C9.798,6.881,9.765,6.594,9.765,6.297c0-2.084,1.689-3.773,3.774-3.773
												c1.086,0,2.067,0.457,2.756,1.191c0.859-0.17,1.667-0.484,2.397-0.916c-0.282,0.881-0.881,1.621-1.66,2.088
												c0.764-0.092,1.49-0.293,2.168-0.594C18.694,5.051,18.054,5.715,17.316,6.246z"/>
											</svg>
										</button>
									</a>
								</ul>
							</div>

						<!-- Form -->
							<div class="bg-gray-200 p-10 text-gray-900">
								<p class="font-bold text-xl mb-3">Get in Touch</p>
								<form action="#" method="post" class="grid grid-cols-2 gap-4">
									<div class="flex flex-col">
										<label for="name" class="font-bold mb-3">Name</label>
										<input name="name" id="name" type="text" placeholder=" Name"
											class="shadow appearance-none border rounded w-full py-2 px-3 text-grey-darker leading-tight focus:outline-none focus:shadow-outline">
									</div>
									<div class="flex flex-col">
										<label for="email" class="font-bold mb-3">Email</label>
										<input name="email" id="email" type="email" placeholder=" Example@email.com"
										    class="shadow appearance-none border rounded w-full py-2 px-3 text-grey-darker leading-tight focus:outline-none focus:shadow-outline">
									</div>
									<div class="flex flex-col col-span-2">
										<label for="message"  class="font-bold mb-3">Message</label>
										<textarea name="message" id="message" rows="6" placeholder=" Message"
										    class="shadow appearance-none border rounded w-full py-2 px-3 text-grey-darker leading-tight focus:outline-none focus:shadow-outline"></textarea>
									</div>
									<ul class="actions">
										<li><input value="Send Message" 
											class="rounded bg-blue-600 hover:bg-blue-800 text-white p-2 pl-6 pr-6 mt-4" 
											type="submit"></li>
									</ul>
								</form>
							</div>

					</section>

				<!-- Footer -->
					<footer id="footer">
						
					</footer>
			</section>
	</div>


</body>
