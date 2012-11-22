<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Add Customer</h3>
        <button class="btn">View All Customers</button>
        <button class="btn">Add Invoice</button>
    </div>
   
   <div class="row-fluid">
		<form class="form-horizontal">
    <div class="tabbable">
     <ul class="nav nav-tabs">
      <li ><a href="#pane2" data-toggle="tab">Details</a></li>
       <li><a href="#pane2" data-toggle="tab">Address</a></li>
    <li><a href="#pane3" data-toggle="tab">Contact</a></li>
    <li><a href="#pane4" data-toggle="tab">Invoices</a></li>
     <li><a href="#pane5" data-toggle="tab">Credits</a></li>
  </ul>
   <div id="pane1" class="tab-pane">
	
			<div class="span6">
				<table class="table">
					<tr>
						<td class="td-25"><label>Customer Code</lable></td>
						<td><input type="text" class="input-medium" name="customerCode"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Customer Name</lable></td>
						<td><input type="text" class="input-medium" name="customerName"></td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Customer Type</span></td>
						<td>
							<select name="customerType" class="input-medium">
								<option value="0">Select Type</option> 
							</select>
						</td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Sales Person</span></td>
						<td>
							<select name="salesPerson" class="input-medium">
								<option value="0">Select Person</option> 
							</select>
						</td>
					</tr>
					<tr>
						<td class="td-25"><label>Notes</lable></td>
						
						<td><textarea class="xxlarge" name="notes" id="textarea" rows="3" ></textarea></td>
					</tr>
					<tr>
					<td class="td-25"><label>Obsolete</lable></td>
						<td><input type="checkbox" name="obsolete" value="option1" /></td>
					</tr>
					<tr>
					<td class="td-25"><label>Print Invoice</lable></td>
						<td><input type="checkbox" name="printInvoice" value="option1" /></td>
						<td>
							<select name="invoice" class="input-medium">
								<option value="0">Select Invoice</option> 
							</select>
						</td>
					</tr>
					
				</table>
			</div>
			
			<div class="span6">
				<table class="table">
					<tr>
						<td class="td-25"><label>GST/VAT Number</lable></td>
						<td><input type="text" class="input-medium" name="gstVatNumber"></td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Default Currency</span></td>
						<td>
							<select name="defaultCurrency" class="input-medium">
								<option value="0">INR</option> 
							</select>
						</td>
					</tr>
					<tr>
					<td class="td-25"><label>Taxable</lable></td>
						<td><input type="checkbox" name="taxable" value="option1" /></td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Tax Rate</span></td>
						<td>
							<select name="taxRate" class="input-medium">
								<option value="0">Select Rate</option> 
							</select>
						</td>
					</tr>
					<tr>
						<td class="td-25"><label>Bank Account Name</label></td>
						<td><input type="text" class="input-medium" name="bankAccountName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Bank Account Number</label></td>
						<td><input type="text" class="input-medium" name="bankAccountNumber"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Payment Terms</label></td>
						<td><select name="paymentTerms" class="input-medium">
								<option value="0">Select Terms</option> 
							</select></td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Discount(%)</span></td>
						<td><select name="discountPercent" class="input-medium">
								<option value="0">Select Discount</option> 
							</select></td>
					</tr>
				</table>
			</div>
		
	</div>
	<#-- Second tab started..... -->
	
	<div id="pane2" class="tab-pane">
	<div>
        <h4>Postal Address</h4>
    </div>
			<div class="span6">
				<table class="table">
					<tr>
						<td class="td-25"><label>Address Name</lable></td>
						<td><input type="text" class="input-medium" name="addressName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Street Address/PO Box</lable></td>
						<td><input type="text" class="input-medium" name="streetAddress"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Town / City</lable></td>
						<td><input type="text" class="input-medium" name="townCity"></td>
					</tr>
					<tr>
						<td class="td-25"><label>State / Region</lable></td>
						<td><input type="text" class="input-medium" name="stateRegion"></td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Country</span></td>
						<td>
							<select name="country" class="input-medium">
								<option value="0">Select Country</option> 
							</select>
						</td>
					</tr>
					<tr>
						<td class="td-25"><label>Postal Code</lable></td>
						<td><input type="text" class="input-medium" name="postalCode"></td>
					</tr>
					
					
				</table>
			</div>
			<div>
        <h4>Physical Address</h4>
          </div>
			<div class="span6">
				<table class="table">
					<tr>
						<td class="td-25"><label>Address Name</lable></td>
						<td><input type="text" class="input-medium" name="phyAddressName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Street Address/PO Box</lable></td>
						<td><input type="text" class="input-medium" name="phyStreetAddress"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Town / City</lable></td>
						<td><input type="text" class="input-medium" name="townCity"></td>
					</tr>
					<tr>
						<td class="td-25"><label>State / Region</lable></td>
						<td><input type="text" class="input-medium" name="phyStateRegion"></td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Country</span></td>
						<td>
							<select name="phyCountry" class="input-medium">
								<option value="0">Select Country</option> 
							</select>
						</td>
					</tr>
					<tr>
						<td class="td-25"><label>Postal Code</lable></td>
						<td><input type="text" class="input-medium" name="phyPostalCode"></td>
					</tr>
				</table>
			</div>
		
	</div>
	<#-- third tab started..... -->
	
	<div id="pane3" class="tab-pane">
	
			<div class="span6">
				<table class="table">
					<tr>
						<td class="td-25"><label>First Name</lable></td>
						<td><input type="text" class="input-medium" name="firstName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Middle Name</lable></td>
						<td><input type="text" class="input-medium" name="middleName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Last Name</lable></td>
						<td><input type="text" class="input-medium" name="lastName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Email Address</lable></td>
						<td><input type="text" class="input-medium" name="emailAddress"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Email CC Address</lable></td>
						<td><input type="text" class="input-medium" name="emailCCAddress"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Website</lable></td>
						<td><input type="text" class="input-medium" name="emailCCAddress"></td>
					</tr>
					
					<tr>
						<td class="td-25"><label>Notes</lable></td>
						
						<td><textarea class="xxlarge" name="contactNotes" id="textarea" rows="3" ></textarea></td>
					</tr>
					
					
				</table>
			</div>
			
			<div class="span6">
				<table class="table">
					<tr>
						<td class="td-25"><label>Phone Number</lable></td>
						<td><input type="text" class="input-medium" name="contPhNumber"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Extension Number</lable></td>
						<td><input type="text" class="input-medium" name="contExtNumber"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Fax Number</lable></td>
						<td><input type="text" class="input-medium" name="contFaxNumber"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Moblie Number</lable></td>
						<td><input type="text" class="input-medium" name="contMobNumber"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Toll Free Number</lable></td>
						<td><input type="text" class="input-medium" name="contTollFreeNumber"></td>
					</tr>
					
				</table>
			</div>
		
	</div>
	<#-- fourth Tab Started..... -->
	
	 <div id="pane4" class="tab-pane">
	
			<div class="span6">
				<table class="table">
					
					<tr>
						<td class="td-25"><label>Ware House</lable></td>
						<td>
							<select name="searchWareHouse" class="input-medium">
								<option value="0">Select</option> 
							</select>
						</td>
						<td class="td-25"><label>Order Status</lable></td>
						<td>
							<select name="searchOredrStatus" class="input-medium">
								
								<option value="0">Open</option> 
								<option value="1">Parked</option> 
								<option value="2">Quote</option> 
								<option value="3">Completed</option> 
								<option value="4">All</option> 
							</select>
						</td>
					</tr>
					
					
				</table>
			</div>
			
			
		
	</div>
	<#-- fifth Tab Started..... -->
	 <div id="pane5" class="tab-pane">
	
			<div class="span6">
				<table class="table">
					<tr>
						<td class="td-25"><label>Credit Status</lable></td>
						<td>
							<select name="searchCreditStatus" class="input-medium">
								<option value="0">Parked</option>
								<option value="0">Completed</option>
								<option value="0">All</option> 
							</select>
						</td>
					</tr>
				</table>
			</div>
			
			
		
	</div>
	<#-- Add other tab panes here........ -->
	
	</form>	
	</div>
	</div>
	<div class="row-fluid">
		<form class="form-inline">
			<div class="span3">
				<span class="btn btn-link">Product Group</span>
				<select name="productGrp">
					<option value="0">Select Group</option>
				</select>
			</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addCustomer.js"></script>
	<script>
		$(function(){
			new defysope.addcustomer.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>