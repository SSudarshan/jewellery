$(function() {
	$
			.Class(
					'defysope.addBrand.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('span.saveBrandBtn', this.el).on('click',
									this.callback('addBrand'));
							$('span.deleteBrand', this.el).on('click',
									this.callback('deleteBrand'));
							$('span.editBrand', this.el).on('click',
									this.callback('editBrand'));

						},
						addBrand : function() {
							$
									.ajax(
											{
												url : 'saveBrand.html',
												data : {

													brandname : $(
															':input[name="brandName"]',
															this.el).val(),
													id : $(
															':input[name="brandName"]',
															this.el).data('id')
												},
												type : 'POST',

											})
									.done(
											function(data) {
												console.log(data);
												$(':input[name="brandName"]',
														this.el).data('id', 0);
												var tblCls = $('tr.row_'
														+ data.savedBrand.id
														+ ' td:eq(0)');
												if (tblCls.length > 0) {
													$(tblCls)
															.text(
																	data.savedBrand.brandname);

												} else {
													var html = '<tr class="row_'
															+ data.savedBrand.id
															+ '"><td>'
															+ data.savedBrand.brandname
															+ '</td><td><span class="btn btn-success editBrand" data-id="'
															+ data.savedBrand.id
															+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteBrand" data-id="'
															+ data.savedBrand.id
															+ '"><i class="icon-remove"></i></span></td><tr>';
													jQuery('table.brandList')
															.append(html);
												}
												$('span.saveRoleBtn', this.el).text('Add Role');
												$(':input[name="brandName"]')
														.val('');
											});

						},
						deleteBrand : function(e) {
							bootbox
									.confirm(
											"Are you sure want to delete the selected brand ?",
											function(confirmed) {
												if (confirmed) {
													var el = $(e.currentTarget);
													var id = $(el).data('id');
													$
															.ajax(
																	{
																		url : 'deleteBrand.html',
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
																			var el = $('table.brandList');
																			$(
																					'tr.row_'
																							+ id,
																					el)
																					.remove();
																		} else {
																			alert("Error while deleting the Brand");
																		}

																	});
												}
											});

						},
						editBrand : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$(':input[name="brandName"]').data('id', id);
							var tempEl = $("tr.row_" + id + " td:eq(0)").text();
							$(':input[name="brandName"]').val(tempEl);
							$('span.saveBrandBtn', this.el).text('Update Brand');

						}

					});
});