
<fieldset class="add-trike">
	<legend>Tricycle</legend>

	<div class="row">
		<div class="small-12 large-3 columns">
			<label for="trike-to" class="inline">Trycicle to</label>
		</div>
		<div class="small-12 large-9 columns">
<%--			<input type="text" id="trike-to" name="destination:${params.id}" placeholder="your destination">--%>
			<input type='hidden' id='trike-to' name="destination:${params.id}"
				class="select2add" style="width: 260px;" />
		</div>
	</div>

	<input type="hidden" name="bound:${params.id}" value="">
	<input type="hidden" name="mode:${params.id}" value="Tricycle">
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