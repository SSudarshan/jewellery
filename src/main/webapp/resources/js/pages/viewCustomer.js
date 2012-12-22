$(function() {
	$.Class('defysope.viewCustomer.Main', {}, {
		init : function(el, options) {
			this.el = $(el);
			$.extend(this.options, options);
			$('select').select2();
			$('select[name="customerType"]', this.el).on('change', function() {
						$("#list2").trigger("reloadGrid");
					});
			$(this.el)
					.on('click', 'span.editGridData', this.callback('onEdit'));
			$(this.el).on('click', 'span.deleteGridData',
					this.callback('onDelete'));
			$("#list2").jqGrid({
				url : GtsUtils.getContextPath() + '/viewCustomer/list.html',
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
				colNames : ['First Name', 'Last Name', 'Age', 'Customer Type',
						'City', 'Email', 'Mobile', '', ''],
				colModel : [{
							name : 'firstname',
							index : 'firstname',
							width : 55
						}, {
							name : 'lastname',
							index : 'lastname',
							width : 90
						}, {
							name : 'age',
							index : 'age',
							width : 90
						}, {
							name : 'description',
							index : 'description',
							width : 90
						}, {
							name : 'city',
							index : 'city',
							width : 90
						}, {
							name : 'email',
							index : 'email',
							width : 90
						}, {
							name : 'mobile',
							index : 'mobile',
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
				height : 450,
				serializeGridData : this.callback('serializeGridData')

			});
			$("#list2").jqGrid('navGrid', '#pager2', {
						edit : false,
						add : false,
						del : false
					});

		},
		serializeGridData : function(data) {
			data.customerType = $('select[name="customerType"]', this.el).val();
			return data;
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
											+ '/viewCustomer/deleteCustomer.html',
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
		},
		onEdit : function(e) {
			var el = $(e.currentTarget);
			var id = $(el).data('id');
			if (id) {
				window.location = GtsUtils.getContextPath()
						+ '/addCustomer.html?id=' + id
			}
		}

	});
});