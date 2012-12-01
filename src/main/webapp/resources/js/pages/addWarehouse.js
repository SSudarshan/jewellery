$(function() {
	$
			.Class(
					'defysope.addWarehouse.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('span.saveWareBtn', this.el).on('click',
									this.callback('addWarehouse'));
							$('span.deleteWarehouse', this.el).on('click',
									this.callback('deleteWarehouse'));
							$('span.editWarehouse', this.el).on('click',
									this.callback('editWarehouse'));

						},
						addWarehouse : function() {
							$
									.ajax(
											{
												url : 'saveWarehouse.html',
												data : {

													warehouse : $(
															':input[name="wareHouseName"]',
															this.el).val(),
													id : $(
															':input[name="roleName"]',
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
														+ data.savedWarehouse.id
														+ '"><td>'
														+ data.savedWarehouse.warehouse
														+ '</td><td><span class="btn btn-success editWarehouse" data-id="'
														+ data.savedWarehouse.id
														+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteWarehouse" data-id="'
														+ data.savedWarehouse.id
														+ '"><i class="icon-remove"></i></span></td><tr>';
												jQuery('table.houseList')
														.append(html);
												$(':input[name="wareHouseName"]')
														.val('');
											});

						},
						deleteWarehouse : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$.ajax({
								url : 'deleteWarehouse.html',
								data : {

									id : id
								},
								type : 'POST',
								msgprocessing : {
									hideMessage : true
								}
							}).done(function(data) {
								if (data.success) {
									var el = $('table.houseList');
									$('tr.row_' + id, el).remove();
								} else {
									alert("Error while deleting the Role");
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