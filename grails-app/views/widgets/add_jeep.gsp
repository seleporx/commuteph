
<fieldset class="add-jeep">
	<legend>Jeep</legend>

	<div class="row">
		<div class="small-12 large-3 columns">
			<label for="jeep-to" class="inline">Jeep to</label>
		</div>
		<div class="small-12 large-9 columns">
<%--			<input type="text" id="jeep-to" name="destination:${params.id}" placeholder="your destination">--%>
			<input type='hidden' id='jeep-to' name="destination:${params.id}"
				class="select2add" style="width: 260px;" />
		</div>
	</div>
	<div class="row">
		<div class="small-12 large-3 columns">
			<label for="jeep-bound" class="inline">bound to *</label>
		</div>
		<div class="small-12 large-9 columns">
<%--			<input type="text" id="jeep-bound" name="bound:${params.id}"--%>
<%--				placeholder="sign on jeep to where it's going">--%>
				<input type='hidden' id='jeep-bound' name="bound:${params.id}"
				class="select2add" style="width: 260px;" />
		</div>
	</div>
	<p>
		For example, you're taking a jeep to <em>Eastwood</em> but you have to
		ride a jeep <strong>bound to Cubao *</strong> because Eastwood is on
		the way.
	</p>

	<input type="hidden" name="mode:${params.id}" value="Jeep">
	<a href="#" class="delete-fieldset delete button small secondary right">&times;</a>
</fieldset>

<script>
		$(document).ready(function() {
			$(".select2add").select2({
				createSearchChoice:function(term, data) { if ($(data).filter(function() { return this.text.localeCompare(term)===0; }).length===0) {return {id:term, text:term};} },
				multiple: false,
				data: ${session.places}
				});
			});
	</script>