$(function() {
	$
			.Class(
					'defysope.addDeliveryMethod.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('span.saveDeliveryBtn', this.el).live('click',
									this.callback('addDeliveryMethod'));
							$('span.deleteDMethod', this.el).live('click',
									this.callback('deleteDMethod'));
							$('span.editDMethod', this.el).live('click',
									this.callback('editDMethod'));

						},
						addDeliveryMethod : function() {
							$('.saveDeliveryBtn', this.el).addClass('disabled');
							$
									.ajax(
											{
												url : 'saveDMethod.html',
												data : {

													description : $(
															':input[name="deliveryMethod"]',
															this.el).val(),
													id : $(
															':input[name="deliveryMethod"]',
															this.el).data('id')
												},
												type : 'POST',
												error : function() {
													$('.saveDeliveryBtn',
															this.el)
															.removeClass(
																	'disabled');
												}

											})
									.done(
											function(data) {
												$('.saveDeliveryBtn', this.el)
														.removeClass('disabled');
												$(
														':input[name="deliveryMethod"]',
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
															+ data.savedDelivery.description
															+ '</td><td><span class="btn btn-success editDMethod" data-id="'
															+ data.savedDelivery.id
															+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteDMethod" data-id="'
															+ data.savedDelivery.id
															+ '"><i class="icon-remove"></i></span></td></tr>';
													$('table.deliveryList',
															this.el).append(
															html);
												}
												$('.saveDeliveryBtn', this.el)
														.text('Add Method');
												$(
														':input[name="deliveryMethod"]')
														.val('');
											});

						},
						deleteDMethod : function(e) {
							bootbox
									.confirm(
											"Are you sure want to delete the selected method ?",
											function(confirmed) {
												if (confirmed) {
													var el = $(e.currentTarget);
													var id = $(el).data('id');
													$
															.ajax(
																	{
																		url : 'deleteDMethod.html',
																		data : {

																			id : id
																		},
																		type : 'POST',
																		msgprocessing : {
																			hideMessage : true
																		}
																	})
															.done(
																	function(
																			data) {
																		if (data.success) {
																			var el = $('table.deliveryList');
																			$(
																					'tr.row_'
																							+ id,
																					el)
																					.remove();
																		} else {
																			alert("Error occured while process the request.");
																		}

																	});

												}
											});
						},
						editDMethod : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$(':input[name="deliveryMethod"]').data('id', id);
							var tempEl = $("tr.row_" + id + " td:eq(0)").text();
							$(':input[name="deliveryMethod"]').val(tempEl);

							$('span.saveDeliveryBtn', this.el).text(
									'Update Method');

						}

					});
});