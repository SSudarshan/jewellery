$(function() {
	$.Class('defysope.financialMonth.Main', {}, {
		init : function(el, options) {
			this.el = $(el);
			$.extend(this.options, options);
			var rowFluid = '<div class="row-fluid" style="margin-bottom:5px;">';
			var index = options.finMonth.length;
			for (var i = 1; i <= 12; i++) {
				var month = '';
				if (i <= index) {
					month = options.finMonth[i - 1].name;
				} else if (i == (index + 1)) {
					month = '<span class="btn btn-primary">Create Month</span>';
				}

				rowFluid += '<div class="span4 financial-month"><div style="height:100px;"><span class="month_name">'
						+ month + '</span></div></div>';
				if ((i > 1) && (i % 3 == 0)) {
					rowFluid += "</div>";
					this.el.find("div#month").append(rowFluid);
					rowFluid = '';
					rowFluid = '<div class="row-fluid" style="margin-bottom:5px;">';
				}
			}

		}

	});
});