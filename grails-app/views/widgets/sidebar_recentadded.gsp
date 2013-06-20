<div class="panel">
	<h3>Recently Added</h3>
	<ul class="side-nav">
		<g:each in="${recent}" status="j" var="rec">
			<li><a href="#">
					${rec.location} to ${rec.destination}
			</a></li>
		</g:each>
	</ul>
</div>