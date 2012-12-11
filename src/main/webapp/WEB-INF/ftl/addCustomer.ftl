<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<form  name="customerForm" class="customerForm">
	<div class="row-fluid">
	    <div class="span6">
	        <h3>Add Customer</h3>
	    </div>
	    <div class="span6">
	        <span class="btn btn-success pull-right addCustomerBtn">Add Customer</span>
	    </div>
	</div>
    <div class="row-fluid">
		<div class="span6">
			<table class="table">
				<tr class="control-group">
					<input type="hidden" name="customerId" value="0">
					<td class="td-25">Customer Type</td>
					<td><select id="customerType" name="customerType" class="input-large">
								<option value="">Select Type</option>
								<#list customerType as custtype>
									<option value="${custtype.id}">${custtype.description}</option>
								</#list> 
						</select></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">First Name</td>
					<td ><input type="text" class="input-large" name="firstName" id="firstName"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Last Name</td>
					<td ><input type="text" class="input-large" name="lastName" id="lastName" /></td>
					
				</tr>
			</table>
		</div>
		
		<div class="span6">
			<table class="table">
				<tr class="control-group">
					<td class="td-25">Age</td>
					<td ><input type="text" class="input-large" name="age" id="age" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Gender</td>
					<td ><select name="gender" id="gender" class="input-large">
								<option value="">Select Type</option> 
								<option value="1">Male</option> 
								<option value="2">Female</option> 
							</select>
					</td>
				</tr>
				<tr>
					<td class="td-25">Designation</td>
					<td ><input type="text" class="input-large" name="designation" id="designation"/></td>
					
				</tr>
			</table>
		</div>
		
    </div>
    
	<div class="accordion" id="accordion2">
    	<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
					<h5>Contact Address</h5>
				</a>
			</div>
			
			<div id="collapseOne" class="accordion-body collapse in">
				<div class="accordion-inner">
					<div class="row-fluid contactAddDiv">
		<div class="span6">
			<table class="table">
							<tr class="control-group">
					<td class="td-25">Address Name</td>
					<td ><input type="text" class="input-large" name="addressName" id="addressName" data-id="0"/></td>
					
				</tr>
							<tr class="control-group">
					<td class="td-25">Address1</td>
					<td ><input type="text" class="input-large" name="address1" id="address1" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Address2</td>
					<td ><input type="text" class="input-large" name="address2" id="address2" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Address3</td>
					<td ><input type="text" class="input-large" name="address3" id="address3" data-id="0"/></td>
					
				</tr>
			
				<tr class="control-group">
					<td class="td-25">City</td>
					<td ><input type="text" class="input-large" name="city" id="city" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Email</td>
					<td ><input type="text" class="input-large" name="email" id="email" data-id="0"/></td>
					
				</tr>
			</table>
		</div>
		<div class="span6">
			<table class="table">
							<tr class="control-group">
					<td class="td-25">Phone1</td>
					<td ><input type="text" class="input-large" name="phone1" id="phone1" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Phone2</td>
					<td ><input type="text" class="input-large" name="phone2" id="phone2" data-id="0"/></td>
					
				</tr>
				
				<tr>
					<td class="td-25">Fax</td>
					<td ><input type="text" class="input-large" name="fax" id="fax" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Moblie</td>
					<td ><input type="text" class="input-large" name="mobile" id="mobile" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">State</td>
					<td ><select name="state" id="state" class="input-large">
								<option value="">Select State</option> 
								<#list states as state>
									<option value="${state.id}">${state.description}</option>
								</#list>
							</select></td></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Country</td>
					<td ><select name="country" id="country" class="input-large">
								<option value="">Select Country</option> 
								<#list countryList as country>
									<option value="${country.id}">${country.description}</option>
								</#list>
							</select></td></td>
					
				</tr>
			</table>
		</div>
    </div>
				</div>
			</div>
		</div>
		
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
					<h5>Delivery Address</h5>
				</a>	
			</div>
			<div id="collapseTwo" class="accordion-body collapse">
				<div class="accordion-inner">
					<div class="row-fluid deliveryAddDiv">
		<div class="span6">
			<table class="table">
							<tr>
					<td class="td-25">Address Name</td>
					<td ><input type="text" class="input-large" name="deliveryName" id="deliveryName" data-id="0"/></td>
					
				</tr>
							<tr>
					<td class="td-25">Address1</td>
					<td ><input type="text" class="input-large" name="deliveryAddress1" id="deliveryAddress1" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Address2</td>
					<td ><input type="text" class="input-large" name="deliveryAddress2" id="deliveryAddress2" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Address3</td>
					<td ><input type="text" class="input-large" name="deliveryAddress3" id="deliveryAddress3" data-id="0"/></td>
					
				</tr>
			
				<tr>
					<td class="td-25">City</td>
					<td ><input type="text" class="input-large" name="deliveryCity" id="deliveryCity" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Email</td>
					<td ><input type="text" class="input-large" name="deliveryEmail" id="deliveryEmail" data-id="0"/></td>
					
				</tr>
				
				
			</table>
		</div>
		<div class="span6">
			<table class="table">
							<tr>
					<td class="td-25">Phone1</td>
					<td ><input type="text" class="input-large" name="deliveryPhone1" id="deliveryPhone1" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Phone2</td>
					<td ><input type="text" class="input-large" name="deliveryPhone2" id="deliveryPhone2" data-id="0"/></td>
					
				</tr>
				
				<tr>
					<td class="td-25">Fax</td>
					<td ><input type="text" class="input-large" name="deliveryFax" id="deliveryFax" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Moblie</td>
					<td ><input type="text" class="input-large" name="deliveryMobile" id="deliveryMobile" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">State</td>
					<td ><select name="deliveryState" id="deliveryState" class="input-large">
								<option value="0">Select State</option> 
								<#list states as state>
									<option value="${state.id}">${state.description}</option>
								</#list> 
							</select></td></td>
					
				</tr>
				<tr>
					<td class="td-25">Country</td>
					<td ><select name="deliveryCountry" id="deliveryCountry" class="input-large">
								<option value="0">Select Country</option>
								<#list countryList as country>
									<option value="${country.id}">${country.description}</option>
								</#list>  
							</select></td></td>
					
				</tr>
			</table>
		</div>
    </div>
				</div>
			</div>
		</div>
	</div>
    </form>
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
