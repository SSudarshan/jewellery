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
			$(this.el).on('click', 'span.fileLink',
					this.callback('showAttachment'));
			$("#list2").jqGrid({
				url : GtsUtils.getContextPath() + '/inventory/productList.html',
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
				colNames : ['Product Group', 'Code', 'Description', 'UOM',
						'Sell Price', 'File', 'Brand', '', ''],
				colModel : [{
							name : 'grp',
							index : 'grp',
							width : 55
						}, {
							name : 'code',
							index : 'code',
							width : 90
						}, {
							name : 'description',
							index : 'description',
							width : 90
						}, {
							name : 'uom',
							index : 'uom',
							width : 90
						}, {
							name : 'sellprice',
							index : 'sellprice',
							width : 90,
							formatter : 'number'
						}, {
							name : 'filename',
							index : 'filename',
							width : 90,
							formatter : function(cellvalue, options, rowObject) {
								var value = "";
								if (rowObject.filename != ''
										|| rowObject.filename != null) {
									value = "<span class='fileLink' data-id='"
											+ rowObject.id
											+ "' style='color:blue;cursor:pointer;text-decoration:underline;'>"
											+ rowObject.filename + "</span>";
								}
								return value;
							}
						}, {
							name : 'brand',
							index : 'brand',
							width : 90
						}, {
							name : 'id',
							width : 15,
							formatter : function(cellValue, options, rowObject) {
								return '<span class="editGridData" data-id="'
										+ rowObject.id
										+ '" style=cursor:pointer;><i class="icon-edit"></i></span>';
							}
						}, {
							name : 'id',
							width : 15,
							formatter : function(cellValue, options, rowObject) {
								return '<span class="deleteGridData" data-id="'
										+ rowObject.id
										+ '" style=cursor:pointer;><i class="icon-remove"></i></span>';
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
											+ '/inventory/deleteProduct.html',
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
						+ '/inventory/addProduct.html?id=' + id;
			}
		},
		showAttachment : function(e) {
			var el = $(e.currentTarget);
			var id = $(el).data('id');
			if (id > 0) {
				var url = GtsUtils.getContextPath()
						+ '/inventory/downloadAttachment.html?id=' + id;
				var wind = window.open(url);
				wind.focus();
			}
		}

	});
});