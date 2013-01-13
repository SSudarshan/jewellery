$(function() {
	$.Class('defysope.setPermission.Main', {}, {
		init : function(el, options) {
			this.el = $(el);
			$.extend(this.options, options);
			$('select').select2();
			$('span.savePermission')
					.on('click', this.callback('savePermision'));
		},
		savePermision : function() {
			var arr = [];
			$('input[type=checkbox]').each(function() {
						if (this.checked) {
							arr.push($(this).data('id'));
						}
					});
			if (arr.length == 0) {
				bootbox.alert('None of the pages assign to selected role.');
			} else {
				$.ajax({
					url : GtsUtils.getContextPath()
							+ '/inventory/setpermission.html',
					data : {
						roleId : $('select[name="role"]').val(),
						pages : arr.toString()
					},
					type : 'POST'
				}).done(function(data) {
					if (data.success) {
						bootbox
								.alert('Permission saved successfully. New permission will apply from next login');
					} else {
						bootbox.alert('Error while setting permission.');
					}

				});
			}

		}

	});
});