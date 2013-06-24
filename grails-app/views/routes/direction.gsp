<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">

<meta property="og:title"
	content="Directions from ${location} to ${destination}" />
<meta property="og:type" content="website" />
<meta property="og:url"
	content="${createLink(absolute: true, mapping: 'dirMap', params: [location: location.replace(' ', '-'), destination: destination.replace(' ', '-'), routeId: routeId])}" />
<meta property="og:site_name" content="Commute.ph" />
<meta property="og:description"
	content="Commute.ph is a crow-sourced commuting guide: directions are shared by people who commute themselves to help others in the struggle of going around Manila." />
<meta property="og:image" content="${resource(dir: 'img', file: 'homepage-jeep.png', absolute: true)}" />

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
					<%--					<div class="tags">--%>
					<%--						<dl class="sub-nav tags-nav">--%>
					<%--							<dt>Tags</dt>--%>
					<%--							<dd>--%>
					<%--								<a href="search-tags.php">#malls</a>--%>
					<%--							</dd>--%>
					<%--							<dd>--%>
					<%--								<a href="search-tags.php">#trains</a>--%>
					<%--							</dd>--%>
					<%--						</dl>--%>
					<%--					</div>--%>
					<div class="reactions">
						<ul class="inline-list">
							<%--							<li><a href="#">Upvote</a></li>--%>
							<%--							<li><a href="#">Downvote</a></li>--%>
							<li><a href="#" data-dropdown="route-share-ID">Share</a></li>
						</ul>
					</div>

					<ul id="route-share-ID" class="f-dropdown" data-dropdown-content>
						<li><a
							href="javascript: window.open('https://www.facebook.com/sharer/sharer.php?u=' + '${createLink(absolute: true, mapping: 'dirMap', params: [location: location.replace(' ', '-'), destination: destination.replace(' ', '-'), routeId: routeId])}', 'sharer', 'width=626,height=436');">
								Post on Facebook</a></li>
						<li><a
							href="javascript: window.open('http://twitter.com/share?text=Directions from ${location} to ${destination} via @CommutePH&url=' + '${createLink(absolute: true, mapping: 'dirMap', params: [location: location.replace(' ', '-'), destination: destination.replace(' ', '-'), routeId: routeId])}', 'tweet', 'width=575,height=400');">Share
								on Twitter</a></li>
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

			<section class="comments">
				<div id="fb-root"></div>
				<script>(function(d, s, id) {
				  var js, fjs = d.getElementsByTagName(s)[0];
				  if (d.getElementById(id)) return;
				  js = d.createElement(s); js.id = id;
				  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=296833577072818";
				  fjs.parentNode.insertBefore(js, fjs);
				}(document, 'script', 'facebook-jssdk'));</script>

				<div class="fb-comments" data-href="${createLink(absolute: true, mapping: 'dirMap', params: [location: location.replace(' ', '-'), destination: destination.replace(' ', '-'), routeId: routeId])}"
					data-width="720" data-num-posts="10"></div>
			</section>
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