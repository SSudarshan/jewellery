$(function() {
	$.Class('defysope.addinvoice.Main', {}, {
		init : function(el, options) {
			this.el = $(el);
			$.extend(this.options, options);
			$('select').select2();

		}

	});
});