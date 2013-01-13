$(function() {
	$
			.Class(
					'defysope.addProductGroup.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('span.savePGBtn', this.el).live('click',
									this.callback('addProductGroup'));
							$('span.deletePG', this.el).live('click',
									this.callback('deletePG'));
							$('span.editPG', this.el).live('click',
									this.callback('editPG'));

						},
						addProductGroup : function() {
							$('.savePGBtn', this.el).addClass('disabled');
							$
									.ajax(
											{
												url : 'savePG.html',
												data : {

													description : $(
															':input[name="groupName"]',
															this.el).val(),
													id : $(
															':input[name="groupName"]',
															this.el).data('id')
												},
												type : 'POST',
												error : function() {
													$('.savePGBtn', this.el)
															.removeClass(
																	'disabled');
												}

											})
									.done(
											function(data) {

												$('.savePGBtn', this.el)
														.removeClass('disabled');
												$(':input[name="groupName"]',
														this.el).data('id', 0);
												var tblCls = $('tr.row_'
														+ data.savedPG.id
														+ ' td:eq(0)');
												if (tblCls.length > 0) {
													$(tblCls)
															.text(
																	data.savedPG.groupName);
												} else {
													var html = '<tr class="row_'
															+ data.savedPG.id
															+ '"><td>'
															+ data.savedPG.description
															+ '</td><td><span class="btn btn-success editPG" data-id="'
															+ data.savedPG.id
															+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deletePG" data-id="'
															+ data.savedPG.id
															+ '"><i class="icon-remove"></i></span></td></tr>';
													jQuery('table.groupList')
															.append(html);
												}
												$('span.savePGBtn', this.el)
														.text('Add Group');
												$('input[name="groupName"]',
														this.el).val('');
											});

						},

						deletePG : function(e) {
							bootbox
									.confirm(
											"Are you sure want to delete the selected group ?",
											function(confirmed) {
												if (confirmed) {
													var el = $(e.currentTarget);
													var id = $(el).data('id');
													$
															.ajax(
																	{
																		url : 'deletePG.html',
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
																			var el = $('table.groupList');
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
						editPG : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$(':input[name="groupName"]').data('id', id);
							var tempEl = $("tr.row_" + id + " td:eq(0)").text();
							$(':input[name="groupName"]').val(tempEl);

							$('span.savePGBtn', this.el).text('Update Group');

						}

					});
});