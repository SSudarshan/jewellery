$(function() {
	$.Class('defysope.addProduct.Main', {}, {
		init : function(el, options) {
			this.el = $(el);
			$.extend(this.options, options);
			$('select', this.el).select2();
			$('span.saveProduct', this.el).on('click',
					this.callback('saveProduct'));
			$('span.cancel', this.el).on('click', this.callback('clearForm'));
			$('form.productFrm').validate({
						rules : {
							productgroup : {
								required : true
							},
							code : {
								required : true
							},
							description : {
								required : true
							},
							uom : {
								required : true
							},
							sellPrice : {
								required : true,
								number : true
							},
							weight : {
								number : true
							},
							avgLandCost : {
								number : true
							},
							lastCost : {
								number : true
							},
							purchasePrice : {
								number : true
							}
						},

						errorClass : "help-inline",
						errorElement : "span",
						highlight : function(element, errorClass, validClass) {
							$(element).parents('.control-group')
									.addClass('error');
						},
						unhighlight : function(element, errorClass, validClass) {
							$(element).parents('.control-group')
									.removeClass('error');
						}
					});
		},
		saveProduct : function() {
			if ($('form.productFrm').valid()) {
				$('form.productFrm').ajaxSubmit({
					url : GtsUtils.getContextPath()
							+ "/inventory/saveProduct.html",
					dataType : "json",
					beforeSubmit : function(arr, $form, options) {
					},
					success : function(data) {
						if (data.success) {
							$(':input[type="text"]').val('');
							$('select').select2('val', '0');
							$('textarea[name="notes"]').val('');
							bootbox.alert("Product Added Successfully.");
						} else {
							bootbox.alert("Error while saving product.");
						}
					}
				});
			}
		},
		clearForm : function() {
			$('input[name="id"]').val('0');
			$(':input[type="text"]').val('');
			$('select').select2('val', '0');
			$('textarea[name="notes"]').val('');
		}

	});
});