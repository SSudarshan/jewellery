$(function() {
	$
			.Class(
					'defysope.addCompany.Main',
					{},
					{
						init : function(el, options) {
							this.el = $(el);
							$.extend(this.options, options);
							$('span.saveCompanyBtn', this.el).on('click',
									this.callback('addCompany'));
							$('span.deleteCompany', this.el).on('click',
									this.callback('deleteCompany'));
							$('span.editCompany', this.el).on('click',
									this.callback('editCompany'));

						},
						addRole : function() {
							$
									.ajax(
											{
												url : 'saveCompany.html',
												data : {

													companyName : $(
															':input[name="companyName"]',
															this.el).val(),
													tradingName : $(
															':input[name="tradingName"]',
															this.el).val(),
													organizationType : $(
															':input[name="organizationType"]',
															this.el).val(),
															regNo : $(
															':input[name="regNumber"]',
												 			this.el).val(),
												 			website : $(
															':input[name="website"]',
															this.el).val(),
															fax : $(
															':input[name="fax"]',
															this.el).val(),
															address : $(
															':input[name="address"]',
															this.el).val(),
															street : $(
															':input[name="streetName"]',
															this.el).val(),
															city : $(
															':input[name="city"]',
															this.el).val(),
															state : $(
															':input[name="state"]',
															this.el).val(),
															country : $(
															':input[name="country"]',
															this.el).val(),
															pinCode : $(
															':input[name="postalCode"]',
															this.el).val(),
															contactPerson : $(
															':input[name="contactPerson"]',
															this.el).val(),
															phone : $(
															':input[name="telephone"]',
															this.el).val(),
															mobile : $(
															':input[name="mobile"]',
															this.el).val(),
															mobile : $(
															':input[name="mobile"]',
															this.el).val(),
															purchaseEmail : $(
															':input[name="purchaseEmail"]',
															this.el).val(),
															salesEmail : $(
															':input[name="salesEmail"]',
															this.el).val(),
															id : $(
															':input[name="companyName"]',
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
														+ data.savedCompany.id
														+ '"><td>'
														+ data.savedCompany.companyName
														+ data.savedCompany.regNo
														+ data.savedCompany.website
														+ data.savedCompany.contactPerson
														+ data.savedCompany.phone
														+ data.savedCompany.salesEmail
														+ data.savedCompany.purchaseEmail
														+ '</td><td><span class="btn btn-success editCompany" data-id="'
														+ data.savedCompany.id
														+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteCompany" data-id="'
														+ data.savedCompany.id
														+ '"><i class="icon-remove"></i></span></td><tr>';
												jQuery('table.compList')
														.append(html);
												$(':input[name="companyName"]')
														.val('');
											});

						},
						deleteRole : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$.ajax({
								url : 'deleteCompany.html',
								data : {

									id : id
								},
								type : 'POST',
								msgprocessing : {
									hideMessage : true
								}
							}).done(function(data) {
								if (data.success) {
									var el = $('table.compList');
									$('tr.row_' + id, el).remove();
								} else {
									alert("Error while deleting the Role");
								}

							});

						},
						editCompany : function(e) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$(':input[name="companyName"]').data('id', id);
							var tempEl = $("tr.row_" + id + " td:eq(0)").text();
							$(':input[name="companyName"]').val(tempEl);
							var tempEl1 = $("tr.row_" + id + " td:eq(1)").text();
							$(':input[name="regNumber"]').val(tempEl1);
							var tempEl2 = $("tr.row_" + id + " td:eq(2)").text();
							$(':input[name="website"]').val(tempEl2);
							var tempEl3 = $("tr.row_" + id + " td:eq(3)").text();
							$(':input[name="contactPerson"]').val(tempEl3);
							var tempEl4 = $("tr.row_" + id + " td:eq(4)").text();
							$(':input[name="telephone"]').val(tempEl4);
							var tempEl5 = $("tr.row_" + id + " td:eq(5)").text();
							$(':input[name="salesEmail"]').val(tempEl5);
							var tempEl6 = $("tr.row_" + id + " td:eq(6)").text();
							$(':input[name="purchaseEmail"]').val(tempEl6);
							
							

							$('span.saveCompanyBtn', this.el).text('Update Company');

						}

					});
});