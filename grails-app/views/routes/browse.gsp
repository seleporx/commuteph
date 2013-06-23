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
				<h2>Browse Directions</h2>
				<ul class="browse-routes">
					<g:each in="${recent}" status="j" var="rec">
						<li><g:link mapping="dirMap"
								params="[location: rec.location.replace(' ', '-'), destination: rec.destination.replace(' ', '-'), routeId: rec.routeId]">
								${rec.location} to ${rec.destination}
							</g:link></li>
					</g:each>
				</ul>
			</section>
		</div>
		<div class="large-4 pull-8 columns sidebar"></div>
	</div>

	<script>
	$.get('${createLink(controller: 'widgets', action: 'missing', id: '1')}', function(data) {
		$('.sidebar').append(data);
	});
	
	$.get('${createLink(controller: 'widgets', action: 'popular', id: '1')}', function(data) {
		$('.sidebar').append(data);
	});
	</script>
</body>
</html>