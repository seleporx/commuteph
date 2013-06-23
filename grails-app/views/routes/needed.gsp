<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<r:require module="commuteph" />
<r:layoutResources />
</head>
<body>
	<div class="row">
		<div class="large-8 push-4 columns">
			<section class="intro-content">
				<h2>Routes that need directions</h2>
				<p>These are some routes that need directions. Maybe if you know
					the way, you can add it to our database!</p>
				<ul class="browse-routes">
					<g:each in="${missing}" status="j" var="pop">
						<li><g:link mapping="addMap"
								params="[location: pop.location.replace(' ', '-'), destination: pop.destination.replace(' ', '-')]">
								${pop.location} to ${pop.destination}
							</g:link></li>
					</g:each>
				</ul>
			</section>
		</div>
		<div class="large-4 pull-8 columns sidebar"></div>
	</div>

	<script>
	$.get('${createLink(controller: 'widgets', action: 'popular', id: '1')}', function(data) {
		$('.sidebar').append(data);
	});
	
	$.get('${createLink(controller: 'widgets', action: 'recent', id: '1')}', function(data) {
		$('.sidebar').append(data);
	});
	</script>
</body>
</html>