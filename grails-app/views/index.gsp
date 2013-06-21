<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<r:require module="commuteph" />
<r:layoutResources />
</head>
<body>
	<div class="row">
		<div class="large-9 push-3 columns main">
			<section class="intro-content">
				<div class="intro-image">
					<img src="img/homepage-jeep.svg"
						alt="Get commuting directions at Commute.ph" />
				</div>

				<h2>Commuting is not fun in the Philippines</h2>

				<p>Commute.ph is a crow-sourced commuting guide: directions are
					shared by people who commute themselves to help others in the
					struggle of going around Manila.</p>
			</section>
		</div>
		<div class="large-3 pull-9 columns sidebar">
		</div>
	</div>
	
	<script>
	$.get('${createLink(controller: 'widgets', action: 'missing', id: '2')}', function(data) {
		$('.main').append(data);
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