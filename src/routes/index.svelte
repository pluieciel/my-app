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
					<section id="sites">

						<!-- Photo Galleries -->
							<div class="site">
								<header class="special">
									<h2>Top 8</h2>
								</header>
								<div class="content">
									<div class="media">
										<a href="Arc_de_Triomphe.jpg"><img src="Arc_de_Triomphe.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="media">
										<a href="effel_tower.jpg"><img src="effel_tower.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="media">
										<a href="Louvre.jpg"><img src="Louvre.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="media">
										<a href="notre_dame.jpg"><img src="notre_dame.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="media">
										<a href="opera.jpg"><img src="opera.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="media">
										<a href="sacre_coeur.jpg"><img src="sacre_coeur.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="media">
										<a href="jardin_louxembourg.jpg"><img src="jardin_louxembourg.jpg" alt="" title="This right here is a caption." /></a>
									</div>
									<div class="media">
										<a href="versailles.jpg"><img src="versailles.jpg" alt="" title="This right here is a caption." /></a>
									</div>
								</div>
								<footer>
									<a href="louvre.svelte" class="button big">Learn More</a>
								</footer>
							</div>
					</section>

				<!-- Contact -->
					<section id="contact">
						<!-- Social -->
							<div class="social column">
								<h3>About Us</h3>
								<p>We are 4 ESSEC students.</p>
								<p>Actively promoting the beauty of Paris to the world</p>
								<h3>Follow Me</h3>
								<ul class="icons">
									<li><a href="https://twitter.com/explore" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="https://www.facebook.com/" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
									<li><a href="https://www.instagram.com/?hl=zh-tw" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
								</ul>
							</div>

						<!-- Form -->
							<div class="column">
								<h3>Get in Touch</h3>
								<form action="#" method="post">
									<div class="field half first">
										<label for="name">Name</label>
										<input name="name" id="name" type="text" placeholder="Name">
									</div>
									<div class="field half">
										<label for="email">Email</label>
										<input name="email" id="email" type="email" placeholder="Email">
									</div>
									<div class="field">
										<label for="message">Message</label>
										<textarea name="message" id="message" rows="6" placeholder="Message"></textarea>
									</div>
									<ul class="actions">
										<li><input value="Send Message" class="button" type="submit"></li>
									</ul>
								</form>
							</div>

					</section>

				<!-- Footer -->
					<footer id="footer">
						<div class="copyright">
							&copy; Untitled Design: <a href="https://templated.co/">TEMPLATED</a>. Images: <a href="https://unsplash.com/">Unsplash</a>.
						</div>
					</footer>
			</section>
	</div>


</body>