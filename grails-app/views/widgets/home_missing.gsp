<div class="panel home">
	<h3>Help us add Directions</h3>
	<section class="desc">These are some routes that need
		directions. Maybe if you know the way, you can add it to our database!
	</section>
	<ul class="home-nav">
		<g:each in="${missing}" status="j" var="pop">
			<li><g:link mapping="addMap" params="[location: pop.location, destination: pop.destination]">${pop.location} to ${pop.destination}
			</g:link></li>
		</g:each>
	</ul>
</div>
<%--<a href="browse-missing.php" class="button secondary right">View--%>
<%--	more rotues that need directions</a>--%>