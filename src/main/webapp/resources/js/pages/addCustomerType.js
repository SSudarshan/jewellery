$(function() {
	$
			.Class(
					'defysope.addCustomerType.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('span.saveTypeBtn', this.el).on('click',
									this.callback('addCustomerType'));
							$('span.deleteCType', this.el).on('click',
									this.callback('deleteCType'));
							$('span.editCType', this.el).on('click',
									this.callback('editCType'));

						},
						addCustomerType : function() {
							$
									.ajax(
											{
												url : 'saveCType.html',
												data : {

													customerType : $(
															':input[name="customerType"]',
															this.el).val(),
													id : $(
															':input[name="customerType"]',
															this.el).data('id')
												},
												type : 'POST',
												msgprocessing : {
													hideMessage : true
												}
											})
									.done(
											function(data) {
												var html = '<tr class="row_'
														+ data.savedType.id
														+ '"><td>'
														+ data.savedType.customerType
														+ '</td><td><span class="btn btn-success editCType" data-id="'
														+ data.savedType.id
														+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteCType" data-id="'
														+ data.savedType.id
														+ '"><i class="icon-remove"></i></span></td><tr>';
												jQuery('table.typeList')
														.append(html);
												$(':input[name="customerType"]')
														.val('');
											});

						},
						deleteCType : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$.ajax({
								url : 'deleteCType.html',
								data : {

									id : id
								},
								type : 'POST',
								msgprocessing : {
									hideMessage : true
								}
							}).done(function(data) {
								if (data.success) {
									var el = $('table.typeList');
									$('tr.row_' + id, el).remove();
								} else {
									alert("Error while deleting the Customer Type");
								}

							});

						},
						editCType : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$(':input[name="customerType"]').data('id', id);
							var tempEl = $("tr.row_" + id + " td:eq(0)").text();
							$(':input[name="customerType"]').val(tempEl);

							$('span.saveTypeBtn', this.el).text('Update Type');

						}

					});
});