<div class="panel">
	<h3>Popular Routes</h3>
	<ul class="side-nav">
		<g:each in="${popular}" status="j" var="pop">
			<li><a href="#">${pop.location} to ${pop.destination}</a></li>
		</g:each>
	</ul>
</div>