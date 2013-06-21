<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<r:require module="commuteph" />
<r:layoutResources />
</head>
<body>
	<div class="row">
		<div class="large-9 columns">
			<section class="page">
				<h2>
					<span class="desc">Add directions from</span> <span class="pointA">
						${params.location}
					</span> to <span class="pointB"> ${params.destination}
					</span>
				</h2>
				<div class="button-bar add-directions-buttons"
					data-magellan-expedition="fixed">
					<ul class="button-group">
						<li><a href="#form-bottom"
							class="small button add-direction add-alight">Alight at...</a></li>
					</ul>
					<ul class="button-group">
						<li><a href="#form-bottom"
							class="small button add-direction add-walk">Walk</a></li>
						<li><a href="#form-bottom"
							class="small button add-direction add-trike">Tricycle</a></li>
						<li><a href="#form-bottom"
							class="small button add-direction add-jeep">Jeep</a></li>
						<li><a href="#form-bottom"
							class="small button add-direction add-bus">Bus</a></li>
						<li><a href="#form-bottom"
							class="small button add-direction add-fx">FX</a></li>
						<li><a href="#form-bottom"
							class="small button add-direction add-mrt">MRT</a></li>
						<li><a href="#form-bottom"
							class="small button add-direction add-lrt">LRT</a></li>
						<li><a href="#form-bottom"
							class="small button add-direction add-lrt2">LRT2</a></li>
					</ul>
				</div>

				<div class="row">
					<div class="large-9 columns">
						<g:form name="routesForm" controller="routes" action="add"
							class="form-add-directions">
							<section class="route-building blank">

								<div class="status">
									<p>Click on the buttons above to start adding directions!</p>
								</div>

							</section>
							<input type="hidden" name="location" value="${params.location}">
							<input type="hidden" name="destination"
								value="${params.destination}">
							<input id="pathCount" type="hidden" name="count" value="0">
							<input type="submit" class="button expand hide save-directions"
								value="Add Directions">
						</g:form>

						<%--						<a id="form-bottom"></a>--%>
					</div>

					<div class="large-3 columns">
						<h3>Rates</h3>
						<ul class="rates">
							<li><span class="label">Jeep</span> Php8.00</li>
							<li><span class="label">LRT/MRT</span> Php14.00</li>
						</ul>
					</div>
				</div>
			</section>
		</div>
		<div class="large-3 columns sidebar">
		</div>
	</div>

	<script>
		$.get('${createLink(controller: 'widgets', action: 'missing', id: '1')}', function(data) {
			$('.sidebar').append(data);
		});
	
		$.get('${createLink(controller: 'widgets', action: 'recent', id: '1')}', function(data) {
			$('.sidebar').append(data);
		});
	
		var id = 0;
	
		$('.add-direction').on('click', function(event) {
			var page = '';

			if ($(this).hasClass('add-walk')) {
				page = '${createLink(controller: 'widgets', action: 'add_walk')}';
			}
			else if($(this).hasClass('add-trike')){
				page = '${createLink(controller: 'widgets', action: 'add_trike')}';
			}
			else if($(this).hasClass('add-jeep')){
				page = '${createLink(controller: 'widgets', action: 'add_jeep')}';
			}
			else if($(this).hasClass('add-bus')){
				page = '${createLink(controller: 'widgets', action: 'add_bus')}';
			}
			else if($(this).hasClass('add-fx')){
				page = '${createLink(controller: 'widgets', action: 'add_fx')}';
			}
			else if($(this).hasClass('add-mrt')){
				page = '${createLink(controller: 'widgets', action: 'add_mrt')}';
			}
			else if($(this).hasClass('add-lrt')){
				page = '${createLink(controller: 'widgets', action: 'add_lrt')}';
			}
			else if($(this).hasClass('add-lrt2')){
				page = '${createLink(controller: 'widgets', action: 'add_lrt2')}';
			}
			else if($(this).hasClass('add-alight')){
				page = '${createLink(controller: 'widgets', action: 'add_alight')}';
			}

			$.get(page, {id: id}, function(data) {
				$('.route-building').append(data);
				$('#pathCount').val(id);
				
				id++;
			});

			if ($('.button.save-directions').hasClass('hide')) {
				$('.button.save-directions').removeClass('hide');
			}
		});

		$(".route-building").on('click', '.delete-fieldset', function () {
			  $(this).parent().remove();
			  event.preventDefault();
			});
	</script>
</body>
</html>