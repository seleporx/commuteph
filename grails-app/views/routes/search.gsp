<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<r:require module="commuteph" />
<r:layoutResources />
</head>
<body>
	<div class="row">
		<div class="large-9 columns">
			<section class="search">
				<h2>
					<span class="desc">Searching directions from</span> <span
						class="pointA"> ${location}
					</span> to <span class="pointB"> ${destination}
					</span>
				</h2>
				<h3 class="search-status">
					${routes.size}
					direction${routes.size > 1? 's': ''}
					found
				</h3>

				<a name="form-top"></a>

				<g:if test="${routes.size > 0}">
					<div class="button-bar add-directions-buttons filter"
						data-magellan-expedition="fixed">
						<ul class="button-group">
							<li class="desc"><a href="#" class="inline"
								data-dropdown="copy-filter">Filter</a></li>
							<li><a href="#form-top" class="small button add-walk">Walk</a></li>
							<li><a href="#form-top" class="small button add-trike">Tricycle</a></li>
							<li><a href="#form-top" class="small button add-jeep">Jeep</a></li>
							<li><a href="#form-top" class="small button add-bus">Bus</a></li>
							<li><a href="#form-top" class="small button add-fx">FX</a></li>
							<li><a href="#form-top" class="small button add-mrt">MRT</a></li>
							<li><a href="#form-top" class="small button add-lrt">LRT</a></li>
							<li><a href="#form-top" class="small button add-lrt2">LRT2</a></li>
						</ul>
					</div>
				</g:if>

				<div id="copy-filter" class="f-dropdown content copy-info"
					data-dropdown-content>
					<p>Click on the buttons to show routes with your preferred mode
						of transportation.</p>
				</div>

				<g:each in="${routes}" status="i" var="route">
					<section class="set-directions">
						<h4>
							<a href="page-route.php">From ${location} To ${destination}</a>
						</h4>
						<div class="directions">
							<ul class="list-directions">
								<g:each in="${route.paths}" status="j" var="path">
									<g:if test="${path.mode == 'Jeep'}">
										<li class="jeep">Ride Jeep to <strong> ${path.destination}
										</strong> bound to <em> ${path.bound}
										</em></li>
									</g:if>
									<g:elseif test="${path.mode == 'Walk'}">
										<li class="walk">Walk to <strong> ${path.destination}
										</strong></li>
									</g:elseif>
									<g:elseif test="${path.mode == 'LRT2'}">
										<li class="lrt2">Ride <strong>LRT2 to ${path.destination}</strong></li>
									</g:elseif>
									<g:elseif test="${path.mode == 'LRT'}">
										<li class="lrt">Ride <strong>LRT to ${path.destination}</strong></li>
									</g:elseif>
									<g:elseif test="${path.mode == 'MRT'}">
										<li class="mrt">Ride <strong>MRT to ${path.destination}</strong></li>
									</g:elseif>
									<g:elseif test="${path.mode == 'Bus'}">
										<li class="bus">Ride Bus to <strong> ${path.destination}
										</strong> bound to <em> ${path.bound}
										</em></li>
									</g:elseif>
									<g:elseif test="${path.mode == 'Fx'}">
										<li class="fx">Ride Fx to <strong> ${path.destination}
										</strong> bound to <em> ${path.bound}
										</em></li>
									</g:elseif>
									<g:elseif test="${path.mode == 'Tricycle'}">
										<li class="trike">Ride Tricycle to <strong> ${path.destination}
										</strong></li>
									</g:elseif>
									<g:elseif test="${path.mode == 'Alight'}">
										<li class="alight">Alight at <strong> ${path.destination}
										</strong> near <em> ${path.bound}
										</em></li>
									</g:elseif>
								</g:each>
							</ul>
						</div>
						<div class="reactions">
							<ul class="inline-list">
								<li><a href="#">Upvote</a></li>
								<li><a href="#">Downvote</a></li>
								<li><a href="#">Comments</a></li>
								<li><a href="#" data-dropdown="route-share-ID">Share</a></li>
							</ul>
						</div>

						<ul id="route-share-ID" class="f-dropdown" data-dropdown-content>
							<li><a href="#">Post on Facebook</a></li>
							<li><a href="#">Share on Twitter</a></li>
						</ul>
					</section>
				</g:each>

				<g:link controller="routes" action="add"
					params="[location: location, destination: destination]"
					class="button expand">
					<span class="desc">Have a better route in mind?</span>
					<span class="action">Add Directions</span>
				</g:link>
			</section>
		</div>
		<div class="large-3 columns sidebar">
		</div>
	</div>

	<script>
	$.get('${createLink(controller: 'widgets', action: 'missing', id: '1')}', function(data) {
		$('.sidebar').append(data);
	});
	
	$.get('${createLink(controller: 'widgets', action: 'popular', id: '1')}', function(data) {
		$('.sidebar').append(data);
	});

	$.get('${createLink(controller: 'widgets', action: 'recent', id: '1')}', function(data) {
		$('.sidebar').append(data);
	});
	</script>
</body>
</html>