$(function() {
	$
			.Class(
					'defysope.addProductGroup.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('span.savePGBtn', this.el).on('click',
									this.callback('addProductGroup'));
							$('span.deletePG', this.el).on('click',
									this.callback('deletePG'));
							$('span.editPG', this.el).on('click',
									this.callback('editPG'));

						},
						addProductGroup : function() {
							$
									.ajax(
											{
												url : 'savePG.html',
												data : {

													groupName : $(
															':input[name="groupName"]',
															this.el).val(),
													id : $(
															':input[name="groupName"]',
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
														+ data.savedPG.id
														+ '"><td>'
														+ data.savedPG.groupName
														+ '</td><td><span class="btn btn-success editPG" data-id="'
														+ data.savedPG.id
														+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deletePG" data-id="'
														+ data.savedPG.id
														+ '"><i class="icon-remove"></i></span></td><tr>';
												jQuery('table.groupList')
														.append(html);
												$(':input[name="groupName"]')
														.val('');
											});

						},
						deletePG : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$.ajax({
								url : 'deletePG.html',
								data : {

									id : id
								},
								type : 'POST',
								msgprocessing : {
									hideMessage : true
								}
							}).done(function(data) {
								if (data.success) {
									var el = $('table.groupList');
									$('tr.row_' + id, el).remove();
								} else {
									alert("Error while deleting the PG");
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