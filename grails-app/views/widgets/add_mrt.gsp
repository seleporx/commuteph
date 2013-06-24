
<fieldset class="add-mrt">
	<legend>MRT</legend>

	<div class="row">
		<div class="small-12 large-4 columns">
			<label for="mrt-bound" class="inline">MRT bound to*</label>
		</div>
		<div class="small-12 large-8 columns">
<%--			<input type="text" id="mrt-bound" name="bound:${params.id}" placeholder="last station">--%>
			<input type='hidden' id='mrt-bound' name="bound:${params.id}"
				class="select2add" style="width: 260px;" />
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
			<label for="mrt-alight" class="inline">alight at*</label>
		</div>
		<div class="small-12 large-8 columns">
<%--			<input type="text" id="mrt-alight" name="destination:${params.id}"--%>
<%--				placeholder="which station to alight">--%>
				<input type='hidden' id='mrt-alight' name="destination:${params.id}"
				class="select2add" style="width: 260px;" />
		</div>
		<div class="small-12 columns">
			<p>
				<strong>*alight at</strong> the last station where you have to go
				down
			</p>
		</div>
	</div>

	<input type="hidden" name="mode:${params.id}" value="MRT">
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
