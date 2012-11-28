$(function() {
	$
			.Class(
					'defysope.unitOfMeasurement.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('span.saveUOMBtn', this.el).on('click',
									this.callback('addUOM'));
							$('span.deleteUOM', this.el).on('click',
									this.callback('deleteUOM'));
							$('span.editUOM', this.el).on('click',
									this.callback('editUOM'));

						},
						addUOM : function() {
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
												}
											})
									.done(
											function(data) {
												var html = '<tr class="row_'
														+ data.savedUOMs.id
														+ '"><td>'
														+ data.savedUOMs.unitOfMeasure
														+ '</td><td><span class="btn btn-success editUOM" data-id="'
														+ data.savedUOMs.id
														+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteUOM" data-id="'
														+ data.savedUOMs.id
														+ '"><i class="icon-remove"></i></span></td><tr>';
												jQuery('table.roleList')
														.append(html);
												$(':input[name="unitOfMeasurementName"]')
														.val('');
											});

						},
						deleteUOM : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$.ajax({
								url : 'deleteUOM.html',
								data : {

									id : id
								},
								type : 'POST',
								msgprocessing : {
									hideMessage : true
								}
								
							}).done(function(data) {
								if (data.success) {
									var el = $('table.uomList');
									$('tr.row_' + id, el).remove();
								} else {
									alert("Error while deleting the Role");
								}

							});

						},
						editUOM : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$(':input[name="unitOfMeasurementName"]').data('id', id);
							var tempEl = $("tr.row_" + id + " td:eq(0)").text();
							$(':input[name="unitOfMeasurementName"]').val(tempEl);

							$('span.saveUOMBtn', this.el).text('Update UOM');

						}

					});
});