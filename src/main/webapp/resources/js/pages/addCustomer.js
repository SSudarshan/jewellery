$(function() {
	$.Class('defysope.addcustomer.Main', {}, {
		init : function(el, options) {
			this.el = $(el);
			$.extend(this.options, options);
			$('span.addCustomerBtn').on('click', this.callback('addCustomer'));
			$('select', this.el).select2();
			this.form = $('form.customerForm');
			this.form = $('form.customerForm').validate({
				rules : {
					customerType : {
						required : true
					},
					firstName : {
						required : true
					},
					lastName : {
						required : true
					},
					age : {
						required : true,
						number : true,
						maxlength : 3
					},
					gender : {
						required : true
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
					customerType : {
						required : "Select valid custom"
					},
					firstName : {
						required : "Enter valid first name"
					},
					lastName : {
						required : "Enter valid last name"
					},
					age : {
						required : "Enter valid age",
						number : "Enter numberic value",
						maxlength : "Max 3 digits allowed"
					},
					gender : {
						required : "Select valid gender"
					},
					email : {
						email : "Enter valid email"
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
		addCustomer : function() {

			if ($('form.customerForm').valid()) {
				$('form.customerForm').ajaxSubmit({
					url : GtsUtils.getContextPath() + "/saveCustomer.html",
					dataType : "json",
					beforeSubmit : function(arr, $form, options) {
					},
					success : function(data) {
						if(data.success){
						bootbox.alert("Customer Added Successfully.");
						}else{
							bootbox.alert("Error while saving customer.");
						}
					}
				});
			}

		}

	});
});