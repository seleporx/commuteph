
<fieldset class="add-lrt">
	<legend>LRT</legend>

	<div class="row">
		<div class="small-12 large-4 columns">
			<label for="lrt-bound" class="inline">LRT bound to*</label>
		</div>
		<div class="small-12 large-8 columns">
			<input type="text" id="lrt-bound" name="bound:${params.id}" placeholder="last station">
		</div>
		<div class="small-12 columns">
			<p>
				<strong>*bound to</strong> is the last station of the train (where
				the train is going)
			</p>
		</div>
	</div>
	<div class="row">
		<div class="small-12 large-4 columns">
			<label for="lrt-alight" class="inline">alight at*</label>
		</div>
		<div class="small-12 large-8 columns">
			<input type="text" id="lrt-alight" name="destination:${params.id}"
				placeholder="which station to alight">
		</div>
		<div class="small-12 columns">
			<p>
				<strong>*alight at</strong> the last station where you have to go
				down
			</p>
		</div>
	</div>

	<input type="hidden" name="mode:${params.id}" value="LRT">
	<a href="#" class="delete-fieldset delete button small secondary right">&times;</a>
</fieldset>
