$(function() {
	$
			.Class(
					'defysope.unitOfMeasurement.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('.saveUOMBtn', this.el).live('click',
									this.callback('addUOM'));
							$('.deleteUOM', this.el).live('click',
									this.callback('deleteUOM'));
							$('.editUOM', this.el).live('click',
									this.callback('editUOM'));

						},
						addUOM : function() {
							$('.saveUOMBtn', this.el).addClass('disabled');
							$
									.ajax(
											{
												url : 'saveUOM.html',
												data : {

													unitOfMeasure : $(
															':input[name="unitOfMeasurementName"]',
															this.el).val(),
													id : $(
															':input[name="unitOfMeasurementName"]',
															this.el).data('id')
												},
												type : 'POST',
												msgprocessing : {
													hideMessage : true
												},
												error : function() {
													$('.saveUOMBtn', this.el)
															.removeClass(
																	'disabled');
												}
											})
									.done(
											function(data) {
												$(
														':input[name="unitOfMeasurementName"]',
														this.el).data('id', 0);
												var tblCls = $('tr.row_'
														+ data.savedUOMs.id
														+ ' td:eq(0)');
												$('.saveUOMBtn', this.el)
														.removeClass('disabled');
												if (tblCls.length > 0) {
													$(tblCls)
															.text(
																	data.savedUOMs.unitOfMeasure);

												} else {
													var html = '<tr class="row_'
															+ data.savedUOMs.id
															+ '"><td>'
															+ data.savedUOMs.unitOfMeasure
															+ '</td><td><span class="btn btn-success editUOM" data-id="'
															+ data.savedUOMs.id
															+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteUOM" data-id="'
															+ data.savedUOMs.id
															+ '"><i class="icon-remove"></i></span></td></tr>';
													$('table.uomList', this.el)
															.find('tbody')
															.append(html);
												}
												$(
														'input[name="unitOfMeasurementName"]',
														this.el).val('');
												$('span.saveUOMBtn', this.el)
														.text('Add UOM');
											});

						},
						deleteUOM : function(e) {
							bootbox
									.confirm(
											"Are you sure want to delete the selected UOM record?",
											function(confirmed) {
												if (confirmed) {
													var el = $(e.currentTarget);
													var id = $(el).data('id');
													$
															.ajax(
																	{
																		url : 'deleteUOM.html',
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
																			var el = $('table.uomList');
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
						editUOM : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$(':input[name="unitOfMeasurementName"]', this.el)
									.data('id', id);
							var tempEl = $("tr.row_" + id + " td:eq(0)").text();
							$(':input[name="unitOfMeasurementName"]', this.el)
									.val(tempEl);

							$('span.saveUOMBtn', this.el).text('Update UOM');

						}

					});
});