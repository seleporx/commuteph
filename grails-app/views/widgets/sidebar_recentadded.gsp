<div class="panel">
	<h3>Recently Added</h3>
	<ul class="side-nav">
		<g:each in="${recent}" status="j" var="rec">
			<li><g:link controller="routes" action="d" params="[location: rec.location, destination: rec.destination, routeId: rec.routeId]">
					${rec.location} to ${rec.destination}
			</g:link></li>
		</g:each>
	</ul>
</div>