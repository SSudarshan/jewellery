$(function() {
	$
			.Class(
					'defysope.addDeliveryMethod.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('span.saveDeliveryBtn', this.el).on('click',
									this.callback('addDeliveryMethod'));
							$('span.deleteDMethod', this.el).on('click',
									this.callback('deleteDMethod'));
							$('span.editDMethod', this.el).on('click',
									this.callback('editDMethod'));

						},
						addDeliveryMethod : function() {
							$
									.ajax(
											{
												url : 'saveDMethod.html',
												data : {

													deliveryMehtod : $(
															':input[name="deliveryMethod"]',
															this.el).val(),
													id : $(
															':input[name="deliveryMethod"]',
															this.el).data('id')
												},
												type : 'POST',
												
											})
									.done(
											function(data) {
												$(':input[name="deliveryMethod"]',
														this.el).data('id', 0);
												var tblCls = $('tr.row_'
														+ data.savedDelivery.id
														+ ' td:eq(0)');
												if (tblCls.length > 0) {
													$(tblCls)
															.text(
																	data.savedDelivery.deliveryMehtod);

												} else {
												var html = '<tr class="row_'
														+ data.savedDelivery.id
														+ '"><td>'
														+ data.savedDelivery.deliveryMehtod
														+ '</td><td><span class="btn btn-success editDMethod" data-id="'
														+ data.savedDelivery.id
														+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteDMethod" data-id="'
														+ data.savedDelivery.id
														+ '"><i class="icon-remove"></i></span></td><tr>';
												jQuery('table.deliveryList')
														.append(html);
												$(':input[name="deliveryMethod"]')
														.val('');
											}
										});

						},
						deleteDMethod : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$.ajax({
								url : 'deleteDMethod.html',
								data : {

									id : id
								},
								type : 'POST',
								msgprocessing : {
									hideMessage : true
								}
							}).done(function(data) {
								if (data.success) {
									var el = $('table.deliveryList');
									$('tr.row_' + id, el).remove();
								} else {
									alert("Error while deleting the Role");
								}

							});

						},
						editDMethod : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$(':input[name="deliveryMethod"]').data('id', id);
							var tempEl = $("tr.row_" + id + " td:eq(0)").text();
							$(':input[name="deliveryMethod"]').val(tempEl);

							$('span.saveDeliveryBtn', this.el).text('Update Method');

						}

					});
});