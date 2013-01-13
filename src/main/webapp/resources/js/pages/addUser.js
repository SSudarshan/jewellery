$(function() {
	$.Class('defysope.addUser.Main', {}, {
		init : function(el, options) {
			this.el = $(el);
			$.extend(this.options, options);
			$('select').select2();
			$('button.saveUser').on('click', this.callback('saveUser'));
			$(this.el).on('click', 'span.deleteGridData',
					this.callback('onDelete'));
			$("#list2").jqGrid({
				url : GtsUtils.getContextPath() + '/inventory/getUserList.html',
				gridview : true,
				datatype : "json",
				jsonReader : {
					root : "data",
					page : "currpage",
					total : "totalpages",
					records : "totalrecords",
					repeatitems : false,
					id : "id"

				},
				colNames : ['Name', 'User Name', 'Role', '', ''],
				colModel : [{
							name : 'name',
							index : 'name',
							width : 55
						}, {
							name : 'username',
							index : 'username',
							width : 90
						}, {
							name : 'role',
							index : 'role',
							width : 90
						}, {
							name : 'id',
							width : 15,
							formatter : function(cellValue, options, rowObject) {
								return '<span class="editGridData" data-id="'
										+ rowObject.id
										+ '"><i class="icon-edit"></i></span>';
							}
						}, {
							name : 'id',
							width : 15,
							formatter : function(cellValue, options, rowObject) {
								return '<span class="deleteGridData" data-id="'
										+ rowObject.id
										+ '"><i class="icon-remove"></i></span>';
							}
						}],
				rowNum : 6,
				pager : '#pager2',
				sortname : 'id',
				viewrecords : true,
				sortorder : "desc",
				autowidth : true,
				height : 450

			});
			$("#list2").jqGrid('navGrid', '#pager2', {
						edit : false,
						add : false,
						del : false
					});

			$('form.userFrm').validate({
						rules : {
							uerName : {
								required : true,
								minlength : 5,
								maxlength : 15
							},
							password : {
								required : true,
								minlength : 5,
								maxlength : 15
							}

						},
						errorClass : "help-inline",
						errorElement : "span",
						highlight : function(element, errorClass, validClass) {
							$(element).parents('.control-group')
									.addClass('error');
						},
						unhighlight : function(element, errorClass, validClass) {
							$(element).parents('.control-group')
									.removeClass('error');
						}

					});

		},
		saveUser : function(e) {
			if ($('form.userFrm').valid()) {
				$.ajax({
					url : GtsUtils.getContextPath()
							+ '/inventory/saveUser.html',
					data : {

						firstname : $(':input[name="firstname"]', this.el)
								.val(),
						uerName : $(':input[name="uerName"]', this.el).val(),
						password : $(':input[name="password"]', this.el).val(),
						role : $('select[name="role"]', this.el).val()

					},
					type : 'POST'

				}).done(function(data) {
							if (data.success) {
								$("#list2").trigger("reloadGrid");
								bootbox.alert('User added successfully.');
							} else {
								bootbox.alert('Error while adding user.');
							}
						});

			}
		},
		onDelete : function(e) {
			var el = $(e.currentTarget);
			var id = $(el).data('id');
			if (id) {
				bootbox.confirm(
						"Are you sure want to delete the selected record ?",
						function(confirmed) {
							if (confirmed) {
								$.ajax({
									url : GtsUtils.getContextPath()
											+ '/inventory/deleteUser.html',
									data : {

										id : id
									},
									type : 'POST'
								}).done(function(data) {
									if (data.success) {
										bootbox
												.alert('Record deleted Successfully.');
										$("#list2").trigger("reloadGrid");
									} else {
										bootbox
												.alert('Error while deleting customer.');
									}

								});
							}
						});
			}
		}

	});
});