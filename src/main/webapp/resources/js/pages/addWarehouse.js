$(function() {
	$
			.Class(
					'defysope.addWarehouse.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('span.saveWareBtn', this.el).live('click',
									this.callback('addWarehouse'));
							$('span.deleteWarehouse', this.el).live('click',
									this.callback('deleteWarehouse'));
							$('span.editWarehouse', this.el).live('click',
									this.callback('editWarehouse'));

						},
						addWarehouse : function() {
							$('.saveWareBtn', this.el).addClass('disabled');
							$
									.ajax(
											{
												url : 'saveWarehouse.html',
												data : {

													description : $(
															':input[name="wareHouseName"]',
															this.el).val(),
													id : $(
															':input[name="wareHouseName"]',
															this.el).data('id')
												},
												type : 'POST',
												error : function() {
													$('.saveWareBtn', this.el)
															.removeClass(
																	'disabled');
												}

											})
									.done(
											function(data) {
												$('.saveWareBtn', this.el)
														.removeClass('disabled');
												$(
														':input[name="wareHouseName"]',
														this.el).data('id', 0);
												var tblCls = $('tr.row_'
														+ data.savedWarehouse.id
														+ ' td:eq(0)');
												if (tblCls.length > 0) {
													$(tblCls)
															.text(
																	data.savedWarehouse.warehouse);

												} else {
													var html = '<tr class="row_'
															+ data.savedWarehouse.id
															+ '"><td>'
															+ data.savedWarehouse.warehouse
															+ '</td><td><span class="btn btn-success editWarehouse" data-id="'
															+ data.savedWarehouse.id
															+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteWarehouse" data-id="'
															+ data.savedWarehouse.id
															+ '"><i class="icon-remove"></i></span></td></tr>';
													jQuery('table.houseList')
															.append(html);
												}
												$('span.saveWareBtn', this.el)
														.text('Add Ware');
												$(
														':input[name="wareHouseName"]')
														.val('');
											});

						},
						deleteWarehouse : function(e) {
							bootbox
									.confirm(
											"Are you sure want to delete the selected ?",
											function(confirmed) {
												if (confirmed) {
													var el = $(e.currentTarget);
													var id = $(el).data('id');
													$
															.ajax(
																	{
																		url : 'deleteWarehouse.html',
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
																			var el = $('table.houseList');
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
						editWarehouse : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$(':input[name="wareHouseName"]').data('id', id);
							var tempEl = $("tr.row_" + id + " td:eq(0)").text();
							$(':input[name="wareHouseName"]').val(tempEl);

							$('span.saveWareBtn', this.el).text('Update');

						}

					});
});