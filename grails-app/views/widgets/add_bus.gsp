
<fieldset class="add-bus">
	<legend>Bus</legend>

	<div class="row">
		<div class="small-12 large-3 columns">
			<label for="bus-to" class="inline">Bus to</label>
		</div>
		<div class="small-12 large-9 columns">
<%--			<input type="text" id="bus-to" name="destination:${params.id}" placeholder="your destination">--%>
			<input type='hidden' id='bus-to' name="destination:${params.id}"
				class="select2add" style="width: 260px;" />
		</div>
	</div>
	<div class="row">
		<div class="small-12 large-3 columns">
			<label for="bus-bound" class="inline">bound to</label>
		</div>
		<div class="small-12 large-9 columns">
<%--			<input type="text" id="bus-bound" name="bound:${params.id}"--%>
<%--				placeholder="sign on bus to where it's going">--%>
				<input type='hidden' id='bus-bound' name="bound:${params.id}"
				class="select2add" style="width: 260px;" />
		</div>
	</div>
	<p>
		For example, you're taking a bus to <em>Shaw</em> but you have to ride
		a bus <strong>bound to Cubao *</strong> because Shaw is on the way.
	</p>

	<input type="hidden" name="mode:${params.id}" value="Bus">
	<a href="#" class="delete-fieldset delete button small secondary right">&times;</a>
</fieldset>

<%--<script>--%>
<%--		$(document).ready(function() {--%>
<%--			$(".select2add").select2({--%>
<%--				createSearchChoice:function(term, data) { if ($(data).filter(function() { return this.text.localeCompare(term)===0; }).length===0) {return {id:term, text:term};} },--%>
<%--				multiple: false,--%>
<%--				data: ${session.places}--%>
<%--				});--%>
<%--			});--%>
<%--	</script>--%>