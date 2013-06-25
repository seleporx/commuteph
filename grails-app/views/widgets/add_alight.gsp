<fieldset class="add-alight">
	<legend>Alight at...</legend>

	<div class="row">
		<div class="small-12 large-4 columns">
			<label for="alight-loc" class="inline">Alight at</label>
		</div>
		<div class="small-12 large-8 columns">
<%--			<input type="text" id="alight-loc" name="destination:${params.id}"--%>
<%--				placeholder="the place where you go down">--%>
			<input type='hidden' id='alight-loc' name="destination:${params.id}"
				class="select2alight" style="width: 260px;" />
		</div>
	</div>
	<div class="row">
		<div class="small-12 large-4 columns">
			<label for="alight-landmark" class="inline">landmark to find
				*</label>
		</div>
		<div class="small-12 large-8 columns">
<%--			<input type="text" id="alight-landmark" name="bound:${params.id}"--%>
<%--				placeholder="next to, in front of, or across something">--%>
			<input type='hidden' id='alight-landmark' name="bound:${params.id}"
				class="select2alight" style="width: 260px;" />
		</div>
	</div>
	<p>
		* add <strong>a landmark</strong> to indicate any sign, establishment,
		or street that the commuter has to find before alighting.
	</p>
	<p>
		<strong>For example, </strong> beside McDo
	</p>
	<input type="hidden" name="mode:${params.id}" value="Alight"> <a
		href="#" class="delete-fieldset delete button small secondary right">&times;</a>
</fieldset>

<script>
		$(document).ready(function() {
			$(".select2alight").select2({
				createSearchChoice:function(term, data) { if ($(data).filter(function() { return this.text.localeCompare(term)===0; }).length===0) {return {id:term, text:term};} },
				multiple: false,
				data: ${session.places}
				});
			});
	</script>
