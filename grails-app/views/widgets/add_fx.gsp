
<fieldset class="add-fx">
	<legend>FX</legend>

	<div class="row">
		<div class="small-12 large-3 columns">
			<label for="fx-to" class="inline">FX to</label>
		</div>
		<div class="small-12 large-9 columns">
<%--			<input type="text" id="fx-to" name="destination:${params.id}" placeholder="your destination">--%>
			<input type='hidden' id='fx-to' name="destination:${params.id}"
				class="select2add" style="width: 260px;" />
		</div>
	</div>
	<div class="row">
		<div class="small-12 large-3 columns">
			<label for="fx-bound" class="inline">bound to *</label>
		</div>
		<div class="small-12 large-9 columns">
<%--			<input type="text" id="fx-bound" name="bound:${params.id}"--%>
<%--				placeholder="sign on FX to where it's going">--%>
				<input type='hidden' id='fx-bound' name="bound:${params.id}"
				class="select2add" style="width: 260px;" />
		</div>
	</div>
	<p>
		For example, you're taking an FX to <em>Eastwood</em> but you have to
		ride an FX <strong>bound to Cubao *</strong> because Eastwood is on
		the way.
	</p>

	<input type="hidden" name="mode:${params.id}" value="Fx">
	<a href="#" class="delete-fieldset delete button small secondary right">&times;</a>
</fieldset>
