
<fieldset class="add-trike">
	<legend>Tricycle</legend>

	<div class="row">
		<div class="small-12 large-3 columns">
			<label for="trike-to" class="inline">Trycicle to</label>
		</div>
		<div class="small-12 large-9 columns">
			<input type="text" id="trike-to" name="destination:${params.id}" placeholder="your destination">
		</div>
	</div>

	<input type="hidden" name="bound:${params.id}" value="">
	<input type="hidden" name="mode:${params.id}" value="Tricycle">
	<a href="#" class="delete-fieldset delete button small secondary right">&times;</a>
</fieldset>
