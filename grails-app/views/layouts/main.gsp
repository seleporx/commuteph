<!DOCTYPE html>
<!--[if IE 8]>         <html class="no-js lt-ie9" lang="en" > <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<title>Commute.ph - Commute directions in the Philippines</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" />

<r:layoutResources />
<g:layoutHead />

<!-- fonts -->
<script type="text/javascript" src="//use.typekit.net/oiu6npv.js"></script>
<script type="text/javascript">
	try {
		Typekit.load();
	} catch (e) {
	}
</script>

<g:javascript src="scripts.js"></g:javascript>

<g:pageProperty name="page.meta" />
</head>
<body>
	<header id="main-header">
		<div class="row">
			<div class="large-3 columns">
				<h1 class="title logo">Commute.ph</h1>

				<div class="button-bar">
					<ul class="button-group">
						<li><a href="browse.php" class="small button secondary">Browse</a></li>
						<li><a href="add-route-blank.php"
							class="small button secondary">Add a Route</a></li>
					</ul>
				</div>

			</div>
			<div class="large-9 columns header-search">
				<g:form name="searchForm" controller="routes" action="search">
					<div class="row">
						<div class="small-12 large-9 columns">
							<div class="row">
								<div class="small-4 large-6 columns">
									<label for="right-label" class="right inline">how to
										commute from</label>
								</div>
								<div class="small-8 large-6 columns">
									<input type="text" id="right-label" placeholder="Point A" name="location">
								</div>
							</div>
							<div class="row">
								<div class="small-4 large-6 columns">
									<label for="right-label" class="right inline">to</label>
								</div>
								<div class="small-8 large-6 columns">
									<input type="text" id="right-label" placeholder="Point B" name="destination">
								</div>
							</div>
						</div>
						<div class="small-12 large-3 columns">
							<button type="submit" class="button expand">Get Directions</button>
						</div>
					</div>
				</g:form>
			</div>
		</div>
	</header>

	<g:layoutBody />

	<footer id="main-footer">
		<div class="row">
			<div class="small-12 large-4 columns">
				<p>
					commute.ph is run by <a href="https://twitter.com/MojoJolo"
						target="_blank">Jolo Balbin</a>, <a
						href="https://twitter.com/sosheepster" target="_blank">Camille
						Zapata</a>, <a href="https://twitter.com/jpdelatorre" target="_blank">JP
						Dela Torre</a>, and <a href="https://twitter.com/maglalang17"
						target="_blank">Ian Maglalang</a>
				</p>
			</div>
			<div class="small-12 large-4 columns">
				<ul>
					<li><a href="about.php">About Us</a></li>
					<li><a href="http://blog.commute.ph">Blog</a></li>
					<li><a href="#" data-reveal-id="sendFeedback">Send Us
							Feedback</a></li>
				</ul>
			</div>
			<div class="small-12 large-4 columns">
				<div id="fb-root"></div>
				<script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=296833577072818";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
				<div class="fb-like" data-href="https://www.facebook.com/Commute.PH"
					data-send="false" data-layout="button_count" data-width="60"
					data-show-faces="false"></div>
				<a href="https://twitter.com/CommutePH"
					class="twitter-follow-button" data-show-count="false">Follow
					@CommutePH</a>
				<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
			</div>
		</div>
		<hr />
		<div class="row">
			<div class="small-12 columns">
				<ul class="inline-list">
					<li><a href="browse.php">Browse Directions</a></li>
					<li><a href="browse-missing.php">Routes that Need
							Directions</a></li>
					<li><a href="add-route-blank.php">Add Directions</a></li>
					<li><a href="contribute.php">Contribute</a></li>
					<li><a href="#" data-reveal-id="contactUs">Contact Us</a></li>
				</ul>
			</div>
		</div>
	</footer>
	<div id="sendFeedback" class="reveal-modal small">
		<a class="close-reveal-modal">&#215;</a>
		<h2>Send us Feedback</h2>

	</div>
	<div id="contactUs" class="reveal-modal small">
		<a class="close-reveal-modal">&#215;</a>
		<h2>Contact Us</h2>

		<p>You can contact us through these channels:
		
		<ul>
			<li><a href="https://www.facebook.com/Commute.PH"
				target="_blank">sending us a message on Facebook</a></li>
			<li><a href="http://twitter.com/CommutePH" target="_blank">sending
					a Direct Message on Twitter</a></li>
		</ul>
		or you can also send us an email at: ____
		</p>
	</div>
	
	<script>
		document.write('<script src='
				+ ('__proto__' in {} ? '${resource(dir: 'js/vendor', file: 'zepto')}' : '${resource(dir: 'js/vendor', file: 'jquery')}')
				+ '.js><\/script>')
	</script>

			<g:javascript src="foundation/foundation.js"></g:javascript>

	<g:javascript src="foundation/foundation.alerts.js"></g:javascript>

	<g:javascript src="foundation/foundation.clearing.js"></g:javascript>

	<g:javascript src="foundation/foundation.cookie.js"></g:javascript>

	<g:javascript src="foundation/foundation.dropdown.js"></g:javascript>

	<g:javascript src="foundation/foundation.forms.js"></g:javascript>

	<g:javascript src="foundation/foundation.interchange.js"></g:javascript>

	<g:javascript src="foundation/foundation.joyride.js"></g:javascript>

	<g:javascript src="foundation/foundation.magellan.js"></g:javascript>

	<g:javascript src="foundation/foundation.orbit.js"></g:javascript>

	<g:javascript src="foundation/foundation.placeholder.js"></g:javascript>

	<g:javascript src="foundation/foundation.reveal.js"></g:javascript>

	<g:javascript src="foundation/foundation.section.js"></g:javascript>

	<g:javascript src="foundation/foundation.tooltips.js"></g:javascript>

	<g:javascript src="foundation/foundation.topbar.js"></g:javascript>


	<script>
		$(document).foundation();
	</script>

		</body>
</html>