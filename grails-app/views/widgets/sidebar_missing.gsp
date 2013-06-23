<div class="panel">
	<h3>Needs Directions</h3>
	<ul class="side-nav">
		<g:each in="${missing}" status="j" var="pop">
			<li><g:link mapping="addMap" params="[location: pop.location.replace(' ', '-'), destination: pop.destination.replace(' ', '-')]">${pop.location} to ${pop.destination}
			</g:link></li>
		</g:each>
	</ul>
</div>