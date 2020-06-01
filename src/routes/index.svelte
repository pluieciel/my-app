<script>
	import CustomButton from '../components/CustomButton.svelte';
</script>

<style>
.test{
	border-color: brown;
	border-style: solid;
	border-width: 4px;

}
.fixheight{
	height:500px;
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
	<title>Travel to Paris</title>
</svelte:head>




<body>
	<div class="">

		<!-- Main -->
			<section id="main" class="flex flex-col">

				<!-- Banner -->
					<div class="h-10"></div>
					<section id="banner" class="flex flex-col justify-center items-center bg-black w-full h-64 pt-64 pb-64">
						<div class="flex flex-col justify-center items-center">
							<p class="text-white text-6xl">Welcome to Paris</p>
							<p class="text-white text-xl">A website give you the best navigation. </p>
							
							<a href="/" class="mt-10">
								<CustomButton text="Continue"/>
							</a>
						</div>
					</section>

				<!-- Site -->
					<section id="sites" class="flex flex-col p-10">

						<!-- Photo Galleries -->
							<div class="flex flex-col items-center">
								<header class="h-20 p-3">
									<p class="text-white text-3xl">Top 8</p>
								</header>
								<div class="fixheight grid grid-cols-4 grid-rows-2">

									<article class="location-listing">
									<a class="location-title" href="#">Arc de Triomphe</a>
									<div class="location-image">
										<a href="#">
										<img class="object-cover mimg"
										src="Arc_de_Triomphe.jpg" 
										alt=""></a>
									</div>
									</article>

									<article class="location-listing">
									<a class="location-title" href="#">Eiffel Tower</a>
									<div class="location-image">
										<a href="#">
										<img class="object-cover mimg"
										src="https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&w=1000&q=80" 
										alt=""></a>
									</div>
									</article>

									<article class="location-listing">
									<a class="location-title" href="#">Louvre</a>
									<div class="location-image">
										<a href="#">
										<img class="object-cover mimg"
										src="https://images.unsplash.com/photo-1499634231146-3393ed854a33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" 
										alt=""></a>
									</div>
									</article>

									<article class="location-listing">
									<a class="location-title" href="#">Notre Dame</a>
									<div class="location-image">
										<a href="#">
										<img class="object-cover mimg"
										src="https://images.unsplash.com/photo-1555397227-cbcbc55768de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" 
										alt=""></a>
									</div>
									</article>

									<article class="location-listing">
									<a class="location-title" href="#">Opera</a>
									<div class="location-image">
										<a href="#">
										<img class="object-cover mimg"
										src="https://images.unsplash.com/photo-1590101996999-e2df75f826d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" 
										alt=""></a>
									</div>
									</article>

									<article class="location-listing">
									<a class="location-title" href="#">Sacre Coeur</a>
									<div class="location-image">
										<a href="#">
										<img class="object-cover mimg"
										src="https://images.unsplash.com/photo-1568464864774-276f00277a4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" 
										alt=""></a>
									</div>
									</article>

									<article class="location-listing">
									<a class="location-title" href="#">Jardin Louxembourg</a>
									<div class="location-image">
										<a href="#">
										<img class="object-cover mimg"
										src="jardin_louxembourg.jpg" 
										alt=""></a>
									</div>
									</article>

									<article class="location-listing">
									<a class="location-title" href="#">Versailles</a>
									<div class="location-image">
										<a href="#">
										<img class="object-cover mimg"
										src="versailles.jpg" 
										alt=""></a>
									</div>
									</article>

									<!-- old ones
									<div class="overflow-hidden">
										<a href="Arc_de_Triomphe.jpg">
										<img class="object-cover h-full transition duration-500 ease-in-out transform hover:scale-110" 
										src="Arc_de_Triomphe.jpg" 
										alt="" title="" /></a>
									</div>
									
									<div class="overflow-hidden">
										<a href="effel_tower.jpg">
										<img class="object-cover h-full transition duration-500 ease-in-out transform hover:scale-110"
										src="https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&w=1000&q=80"
										alt="" title="" /></a>
									</div>
									<div class="overflow-hidden">
										<a href="Louvre.jpg">
										<img class="object-cover h-full transition duration-500 ease-in-out transform hover:scale-110" 
										src="https://images.unsplash.com/photo-1499634231146-3393ed854a33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" 
										alt="" title="" /></a>
									</div>
									<div class="overflow-hidden">
										<a href="notre_dame.jpg">
										<img class="object-cover h-full transition duration-500 ease-in-out transform hover:scale-110" 
										src="https://images.unsplash.com/photo-1555397227-cbcbc55768de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" 
										alt="" title="" /></a>
									</div>
									<div class="overflow-hidden">
										<a href="opera.jpg">
										<img class="object-cover h-full transition duration-500 ease-in-out transform hover:scale-110" 
										src="https://images.unsplash.com/photo-1590101996999-e2df75f826d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" 
										alt="" title="" /></a>
									</div>
									<div class="overflow-hidden">
										<a href="sacre_coeur.jpg">
										<img class="object-cover w-full transition duration-500 ease-in-out transform hover:scale-110" 
										src="sacre_coeur.jpg" 
										alt="" title="" /></a>
									</div>
									<div class="overflow-hidden">
										<a href="jardin_louxembourg.jpg">
										<img class="object-cover h-full transition duration-500 ease-in-out transform hover:scale-110" 
										src="jardin_louxembourg.jpg" 
										alt="" title="" /></a>
									</div>
									<div class="overflow-hidden">
										<a href="versailles.jpg">
										<img class="object-cover h-full transition duration-500 ease-in-out transform hover:scale-110" 
										src="versailles.jpg" 
										alt="" title="" /></a>
									</div>
									-->

								</div>
								<a href="/" class="mt-10">
									<button class="rounded bg-blue-600 hover:bg-blue-800 text-white p-2 pl-5 pr-5">Learn More</button>
								</a>
							</div>
					</section>

				<!-- Contact -->
					<section id="contact" class="mt-5 grid grid-cols-2 h-64">
						<!-- Social -->
							<div class="flex flex-col bg-gray-300 p-10 text-gray-900">
								<p class="font-bold text-xl mb-3">About Us</p>
								<p>We are 4 ESSEC students.</p>
								<p>Actively promoting the beauty of Paris to the world</p>
								<p class="font-bold text-xl mt-5">Follow Me</p>
								<ul class="mt-1">
									<li><a href="https://twitter.com/explore" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="https://www.facebook.com/" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
									<li><a href="https://www.instagram.com/?hl=zh-tw" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
								</ul>
							</div>

						<!-- Form -->
							<div class="bg-gray-400 p-10 text-gray-900">
								<p class="font-bold text-xl mb-3">Get in Touch</p>
								<form action="#" method="post" class="grid grid-cols-2 gap-4">
									<div class="flex flex-col">
										<label for="name" class="font-bold mb-3">Name</label>
										<input name="name" id="name" type="text" placeholder="  Name"
											class="placeholder-blue-400 border rounded">
									</div>
									<div class="flex flex-col">
										<label for="email" class="font-bold mb-3">Email</label>
										<input name="email" id="email" type="email" placeholder="  Example@email.com"
										    class="placeholder-blue-400 border rounded">
									</div>
									<div class="flex flex-col col-span-2">
										<label for="message"  class="font-bold mb-3">Message</label>
										<textarea name="message" id="message" rows="6" placeholder="  Message"
										    class="placeholder-blue-400 border rounded"></textarea>
									</div>
									<ul class="actions">
										<li><input value="Send Message" 
											class="rounded bg-blue-600 hover:bg-blue-800 text-white p-2 pl-5 pr-5 mt-4" 
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