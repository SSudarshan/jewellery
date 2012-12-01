$(function() {
	$
			.Class(
					'defysope.addBoardRate.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('span.saveBRateBtn', this.el).on('click',
									this.callback('addBoardRate'));
							$('span.deleteBRate', this.el).on('click',
									this.callback('deleteBRate'));
							$('span.editBRate', this.el).on('click',
									this.callback('editBRate'));

						},
						addBoardRate : function() {
							$
									.ajax(
											{
												url : 'saveBRate.html',
												data : {

													categoryName : $(
															':input[name="categoryName"]',
															this.el).val(),
															quantity : $(
																	':input[name="quantity"]',
																	this.el).val(),
														boardRate : $(
															':input[name="rate"]',
															this.el).val(),
													id : $(
															':input[name="categoryName"]',
															this.el).data('id')
												},
												type : 'POST',
												msgprocessing : {
													hideMessage : true
												}
											})
									.done(
											function(data) {
												var html = '<tr class="row_'+ data.savedRate.id
												+ '"><td>'+ data.savedRate.categoryName+ '</td><td>'+ data.savedRate.quantity
												+ '</td><td>'+ data.savedRate.boardRate
												+ '</td><td><span class="btn btn-success editBRate" data-id="'
														+ data.savedRate.id
														+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteBRate" data-id="'
														+ data.savedRate.id
														+ '"><i class="icon-remove"></i></span></td><tr>';
												jQuery('table.rateList')
														.append(html);
												$(':input[name="roleName"]')
														.val('');
											});

						},
						deleteBRate : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$.ajax({
								url : 'deleteBRate.html',
								data : {

									id : id
								},
								type : 'POST',
								msgprocessing : {
									hideMessage : true
								}
							}).done(function(data) {
								if (data.success) {
									var el = $('table.rateList');
									$('tr.row_' + id, el).remove();
								} else {
									alert("Error while deleting the Board Rate");
								}

							});

						},
						editBRate : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$(':input[name="categoryName"]').data('id', id);
							var tempEl = $("tr.row_" + id + " td:eq(0)").text();
							$(':input[name="categoryName"]').val(tempEl);
							var tempEl1 = $("tr.row_" + id + " td:eq(1)").text();
							$(':input[name="quantity"]').val(tempEl1);
							var tempEl2 = $("tr.row_" + id + " td:eq(2)").text();
							$(':input[name="rate"]').val(tempEl2);

							$('span.saveBRateBtn', this.el).text('Update Rate');

						}

					});
});