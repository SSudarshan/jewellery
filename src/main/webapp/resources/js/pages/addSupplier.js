$(function() {
	$.Class('defysope.addSupplier.Main', {}, {
		init : function(el, options) {
			this.el = $(el);
			$.extend(this.options, options);
			$('span.addSupplierBtn').on('click', this.callback('addSupplier'));
			$('select', this.el).select2();
			this.form = $('form.supplierForm');
			this.form = $('form.supplierForm').validate({
				rules : {
					supliername : {
						required : true
					},
					
					supplierCode : {
						required : true
					},
					cstvatnumber : {
						required : true
					},
					suppliertype : {
						required : true
					},
					regno : {
						required : true,
						
					},
					
					addressName : {
						required : true
					},
					address1 : {
						required : true
					},
					address2 : {
						required : true
					},
					city : {
						required : true
					},
					email : {
						email : true
					},
					phone1 : {
						required : true,
						number : true,
					},
					mobile : {
						required : true,
						number : true,
					},
					state : {
						required : true
					},
					country : {
						required : true
					}
				},
				messages : {
					suppliertype : {
						required : "Select valid Type"
					},
					supplierCode : {
						required : "Enter valid Code"
					}
					
				},
				errorClass : "help-inline",
				errorElement : "span",
				highlight : function(element, errorClass, validClass) {
					$(element).parents('.control-group').addClass('error');
				},
				unhighlight : function(element, errorClass, validClass) {
					$(element).parents('.control-group').removeClass('error');
				}
			});

		},
		addSupplier : function() {

			if ($('form.supplierForm').valid()) {
				$('form.supplierForm').ajaxSubmit({
					url : GtsUtils.getContextPath() + "/saveSupplier.html",
					dataType : "json",
					beforeSubmit : function(arr, $form, options) {
					},
					success : function(data) {
						if(data.success){
						bootbox.alert("Supplier Added Successfully.");
						}else{
							bootbox.alert("Error while saving Supplier.");
						}
					}
				});
			}

		}

	});
});