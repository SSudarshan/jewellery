$(function() {
	$.Class('defysope.addRole.Main', {}, {
		init : function(el, options) {
			this.el = $(el);
			$.extend(this.options, options);
			$('span.saveRoleBtn', this.el)
					.on('click', this.callback('addRole'));
			$(this.el).on('click', 'span.deleteRole',
					this.callback('deleteRole'));
			$(this.el).on('click', 'span.editRole', this.callback('editRole'));

		},
		addRole : function() {
			$.ajax({
						url : 'saveRole.html',
						data : {

							description : $(':input[name="roleName"]', this.el)
									.val(),
							id : $(':input[name="roleName"]', this.el)
									.data('id')
						},
						type : 'POST'

					}).done(function(data) {
				
				$(':input[name="roleName"]', this.el).data('id', 0);
				var tblCls = $('tr.row_' + data.savedRole.id + ' td:eq(0)');
				if (tblCls.length > 0) {
					$(tblCls).text(data.savedRole.description);

				} else {
					var html = '<tr class="row_'
							+ data.savedRole.id
							+ '"><td>'
							+ data.savedRole.description
							+ '</td><td><span class="btn btn-success editRole" data-id="'
							+ data.savedRole.id
							+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteRole" data-id="'
							+ data.savedRole.id
							+ '"><i class="icon-remove"></i></span></td><tr>';
					jQuery('table.roleList').append(html);
				}
				$('span.saveRoleBtn', this.el).text('Add Role');
				$(':input[name="roleName"]').val('');
			});

		},
		deleteRole : function(e) {
			bootbox.confirm("Are you sure want to delete the selected role ?",
					function(confirmed) {
						if (confirmed) {
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