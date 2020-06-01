<script>
	import CustomButton from '../components/CustomButton.svelte';
</script>

<style>
.test{
	border-color: brown;
	border-style: solid;
	border-width: 4px;

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
					<section id="sites" class="flex flex-col">

						<!-- Photo Galleries -->
							<div class="flex flex-col items-center">
								<header class="h-20 p-3">
									<p class="text-white text-3xl">Top 8</p>
								</header>
								<div class="grid grid-cols-4">
									<div class="transition duration-500 ease-in-out transform hover:scale-110">
										<a href="Arc_de_Triomphe.jpg"><img src="Arc_de_Triomphe.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="transition duration-500 ease-in-out transform hover:scale-110">
										<a href="effel_tower.jpg"><img src="effel_tower.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="transition duration-500 ease-in-out transform hover:scale-110">
										<a href="Louvre.jpg"><img src="Louvre.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="transition duration-500 ease-in-out transform hover:scale-110">
										<a href="notre_dame.jpg"><img src="notre_dame.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="transition duration-500 ease-in-out transform hover:scale-110">
										<a href="opera.jpg"><img src="opera.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="transition duration-500 ease-in-out transform hover:scale-110">
										<a href="sacre_coeur.jpg"><img src="sacre_coeur.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="transition duration-500 ease-in-out transform hover:scale-110">
										<a href="jardin_louxembourg.jpg"><img src="jardin_louxembourg.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="transition duration-500 ease-in-out transform hover:scale-110">
										<a href="versailles.jpg"><img src="versailles.jpg" alt="" title="This right here is a caption." /></a>
									</div>
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