<div class="panel">
	<h3>Needs Directions</h3>
	<ul class="side-nav">
		<g:each in="${missing}" status="j" var="pop">
			<li><g:link controller="routes" action="a" params="[location: pop.location, destination: pop.destination]">${pop.location} to ${pop.destination}
			</g:link></li>
		</g:each>
	</ul>
</div>