<div class="panel">
	<h3>Popular Routes</h3>
	<ul class="side-nav">
		<g:each in="${popular}" status="j" var="pop">
			<li><g:link mapping="dirMap" params="[location: pop.location.replace(' ', '-'), destination: pop.destination.replace(' ', '-'), routeId: pop.routeId]">${pop.location} to ${pop.destination}</g:link></li>
		</g:each>
	</ul>
</div>