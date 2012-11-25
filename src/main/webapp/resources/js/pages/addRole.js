$(function() {
	$
			.Class(
					'defysope.addRole.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('span.saveRoleBtn', this.el).on('click',
									this.callback('addRole'));
							$('span.deleteRole', this.el).on('click',
									this.callback('deleteRole'));
							$('span.editRole', this.el).on('click',
									this.callback('editRole'));

						},
						addRole : function() {
							$
									.ajax(
											{
												url : 'saveRole.html',
												data : {

													description : $(
															':input[name="roleName"]',
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
														+ data.savedRole.id
														+ '"><td>'
														+ data.savedRole.description
														+ '</td><td><span class="btn btn-success editRole" data-id="'
														+ data.savedRole.id
														+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteRole" data-id="'
														+ data.savedRole.id
														+ '"><i class="icon-remove"></i></span></td><tr>';
												jQuery('table.roleList')
														.append(html);
												$(':input[name="roleName"]')
														.val('');
											});

						},
						deleteRole : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$.ajax({
								url : 'deleteRole.html',
								data : {

									id : id
								},
								type : 'POST',
								msgprocessing : {
									hideMessage : true
								}
							}).done(function(data) {
								if (data.success) {
									var el = $('table.roleList');
									$('tr.row_' + id, el).remove();
								} else {
									alert("Error while deleting the Role");
								}

							});

						},
						editRole : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$(':input[name="roleName"]').data('id', id);
							var tempEl = $("tr.row_" + id + " td:eq(0)").text();
							$(':input[name="roleName"]').val(tempEl);

							$('span.saveRoleBtn', this.el).text('Update Role');

						}

					});
});