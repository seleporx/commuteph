<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<r:require module="commuteph" />
<r:layoutResources />
</head>
<body>
	<div class="row">
		<div class="large-9 small-12 columns">
			<section class="page">
				<h2>
					<span class="desc">Directions From</span> <span class="pointA">
						${location}
					</span> to <span class="pointB"> ${destination}
					</span>
				</h2>
				<section class="set-directions">
					<div class="directions">
						<ul class="list-directions">
							<g:each in="${paths}" status="j" var="path">
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
					<div class="tags">
						<dl class="sub-nav tags-nav">
							<dt>Tags</dt>
							<dd>
								<a href="search-tags.php">#malls</a>
							</dd>
							<dd>
								<a href="search-tags.php">#trains</a>
							</dd>
						</dl>
					</div>
					<div class="reactions">
						<ul class="inline-list">
							<li><a href="#">Upvote</a></li>
							<li><a href="#">Downvote</a></li>
							<li><a href="#" data-dropdown="route-share-ID">Share</a></li>
						</ul>
					</div>

					<ul id="route-share-ID" class="f-dropdown" data-dropdown-content>
						<li><a href="#">Post on Facebook</a></li>
						<li><a href="#">Share on Twitter</a></li>
					</ul>
				</section>

				<g:link mapping="addMap"
					params="[location: location.replace(' ', '-'), destination: destination.replace(' ', '-')]"
					class="button expand">
					<span class="desc">Have a better route in mind?</span>
					<span class="action">Add Directions</span>
				</g:link>
			</section>

			<!-- RELATED ROUTES FOR SEARCH RESULTS:
            list down other routes that may contain PointA or PointB of search.
            limit to 10 -->

			<section class="comments">FB comments here</section>
		</div>
		<div class="large-3 columns sidebar"></div>
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