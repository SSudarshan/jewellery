$(function() {
	var productOptions;
	$
			.Class(
					'defysope.addpurchase.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							productOptions = [];
							$.extend(this.options, options);
							$('select').select2();
							$('.product').select2({
								data : productOptions
							});
							this.el.on('change', '.productGroup', this
									.callback('onChangeProductGroupHandler'));
							$('.orderDate').datepicker();
							$('.deliveryDate').datepicker();
							this.el.on('blur', '.price', this
									.callback('onCalculateTotalHandler'));
							this.el.on('click', '.addProductItem', this
									.callback('onAddHandler'));
							this.el.on('click', '.dltProductItem', this
									.callback('onDeleteProductItemHandler'));
							this.el.on('click', '.addPurchase', this
									.callback('onAddPurchaseHandler'));
							this.form = $('form.purchaseForm');
							this.form = $('form.purchaseForm').validate(
									{
										rules : {
											supplier : {
												required : true
											},
											warehouse : {
												required : true
											},
											orderDate : {
												required : true
											},
											deliveryDate : {
												required : true
											}
										},
										errorClass : "help-inline",
										errorElement : "span",
										highlight : function(element,
												errorClass, validClass) {
											$(element)
													.parents('.control-group')
													.addClass('error');
										},
										unhighlight : function(element,
												errorClass, validClass) {
											$(element)
													.parents('.control-group')
													.removeClass('error');
										}
									});

						},
						onChangeProductGroupHandler : function() {
							$.ajax({
								url : GtsUtils.getContextPath()
										+ '/inventory/getProducts.html',
								method : 'GET',
								data : {
									productGroup : $('.productGroup', this.el)
											.select2('data').id
								},
								success : function(response) {
									if (response
											&& response.products.length > 0) {
										productOptions = [];
										$.each(response.products, function(
												index, value) {
											var obj = {
												id : value.id,
												text : value.description

											};
											productOptions.push(obj);

										});
										$('.product').select2({
											data : productOptions
										});
									}
								}
							});
						},
						onCalculateTotalHandler : function() {
							var price = $('.price', this.el).val();
							var quantity = $('.quantity', this.el).val();
							$('.subTotal', this.el).val(price * quantity);
						},
						onAddHandler : function() {
							var content = $('.templates').find('table').find(
									'tr').clone();
							$(content).find('.productGroupValue')
									.text(
											$('.productGroup', this.el)
													.select2('data').text);
							$(content).find('.productValue')
									.text(
											$('.product', this.el).select2(
													'data').text);
							$(content).find('.productGroupId')
									.text(
											$('.productGroup', this.el)
													.select2('data').id);
							$(content).find('.productId').text(
									$('.product', this.el).select2('data').id);
							$(content).find('.quantityValue').text(
									$('.quantity', this.el).val());
							$(content).find('.priceValue').text(
									$('.price', this.el).val());
							$(content).find('.subTotalValue').text(
									$('.subTotal', this.el).val());

							$(content).find('.commentValue').text(
									$('.comments', this.el).val());
							$('.productItems', this.el).find('tbody').append(
									content);
						},
						onDeleteProductItemHandler : function(e) {
							var el = $(e.currentTarget);
							$(el).closest('tr').remove();
						},
						onAddPurchaseHandler : function(e) {
							var el = $(e.currentTarget);
							if ($('form.purchaseForm').valid()) {
								var totalItems = jQuery('.productItems').find(
										'tr').length;
								var totalAddedItems = [];

								if (totalItems > 1) {
									for ( var i = 1; i < totalItems; i++) {
										var obj = {
											productGroupId : $(
													'table.productItems',
													this.el).find('tr').eq(i)
													.find('.productGroupId')
													.text(),
											productId : $('table.productItems',
													this.el).find('tr').eq(i)
													.find('.productId').text(),
											quantityValue : $(
													'table.productItems',
													this.el).find('tr').eq(i)
													.find('.quantityValue')
													.text(),
											priceValue : $(
													'table.productItems',
													this.el).find('tr').eq(i)
													.find('.priceValue').text(),
											commentValue : $(
													'table.productItems',
													this.el).find('tr').eq(i)
													.find('.commentValue')
													.text()
										};
										totalAddedItems.push(obj);
									}
									$
											.ajax({
												url : GtsUtils.getContextPath()
														+ '/inventory/savePurchaseOrder.html',
												type : 'POST',
												data : {
													supplier : $('.supplier',
															this.el).select2(
															'data').id,
													warehouse : $('.warehouse',
															this.el).select2(
															'data').id,
													orderDate : $('.orderDate',
															this.el).val(),
													deliveryDate : $(
															'.deliveryDate',
															this.el).val(),
													status : $(el).attr(
															'status'),
													productItems : JSON
															.stringify(totalAddedItems)
												},
												success : function(response) {
													if (response.success) {
														bootbox
																.alert('Record(s) update successfully!!!!.');
													} else {
														bootbox
																.alert('Sorry! Error occured while process the request.!!!!.');
													}
												}
											});
								} else {
									bootbox
											.alert('Unable to find product(s) to save!!!!.');
								}

							}
						}

					});
});