$(function() {
	$.Class('defysope.addcompany.Main', {}, {
		init : function(el, options) {
			this.el = $(el);
			$.extend(this.options, options);
			$('span.addCompanyBtn').on('click', this.callback('addCompany'));
			$('select', this.el).select2();
			this.form = $('form.companyForm');
			this.form = $('form.companyForm').validate({
				rules : {
					companyName : {
						required : true
					},
					tradingName : {
						required : true
					},
					regdNumber : {
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
					state : {
						required : true
					},
					country : {
						required : true
					},
					phone1 : {
						required : true,
						number : true,
					
					}
				},
				messages : {
					
					
					phone1 : {
						required : "Enter valid Number",
						number : "Enter numberic value",
						
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
		addCompany : function() {

			if ($('form.companyForm').valid()) {
				$('form.companyForm').ajaxSubmit({
					url : GtsUtils.getContextPath() + "/saveCompany.html",
					dataType : "json",
					beforeSubmit : function(arr, $form, options) {
					},
					success : function(data) {
						if(data.success){
							bootbox.alert("Customer Added Successfully.");
							}
						else{
								bootbox.alert("You can save Record only once");
							}
					}
				});
			}

		}

	});
});