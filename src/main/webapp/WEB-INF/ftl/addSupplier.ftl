<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<form  name="supplierForm" class="supplierForm">
	<div>
        <h3>Add Supplier</h3>
    </div>
     <div class="span11">
	        <span class="btn btn-success pull-right addSupplierBtn">Add Supplier</span>
	    </div>
    <div class="row-fluid">
		<div class="span6">
			<table class="table">
							<tr class="control-group">
					<td class="td-25">Supplier Code</td>
					<td ><input type="text" class="input-large" name="supplierCode" id="supplierCode" /></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Supplier Name</td>
					<td ><input type="text" class="input-large" name="supliername" id="supliername" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">CST/VAT Number</td>
					<td ><input type="text" class="input-large" name="cstvatnumber" id="cstvatnumber" data-id="0"/></td>
					
				</tr>
			
				<tr class="control-group">
					<td class="td-25">Notes</td>
					<td ><textarea class="input-large" name="notes" id="notes" rows="3" ></textarea></td>
					
				</tr>
				
				
			</table>
		</div>
		<div class="span6">
			<table class="table">
						
						<tr class="control-group">
					<td class="td-25">Type</td>
					<td ><select name="suppliertype" id="suppliertype" class="input-medium">
								<option value="0">Select Type</option> 
								<option value="1">Product Supplier</option> 
								<option value="2">Smith Vendor</option> 
							</select></td></td>
					
				</tr>
							<tr class="control-group">
					<td class="td-25">Registration No</td>
					<td ><input type="text" class="input-large" name="regno" id="regno" data-id="0"/></td>
					
				</tr class="control-group">
				<tr class="control-group">
					<td class="td-25">Specialization</td>
					<td ><input type="text" class="input-large" name="specialization" id="specialization" data-id="0"/></td>
					
				</tr>
				
				
			</table>
		</div>
    </div>
 
   
    
    
    
     
    <div class="accordion" id="accordion2">
    <div class="accordion-group">
<div class="accordion-heading">
<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
 <h5>Contact Address</h5>
</a>
</div>
<div id="collapseTwo" class="accordion-body collapse">
<div class="accordion-inner">
 
    <div class="row-fluid">
		<div class="span6">
			<table class="table">
							<tr class="control-group">
					<td class="td-25">Address Name</td>
					<td ><input type="text" class="input-large" name="name" id="name" data-id="0"/></td>
					
				</tr>
							<tr class="control-group">
					<td class="td-25">Address1</td>
					<td ><input type="text" class="input-large" name="address1" id="address1" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Address2</td>
					<td ><input type="text" class="input-large" name="address2" id="address2" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Address3</td>
					<td ><input type="text" class="input-large" name="address3" id="address3" data-id="0"/></td>
					
				</tr>
			
				<tr class="control-group">
					<td class="td-25">City</td>
					<td ><input type="text" class="input-large" name="city" id="city" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">State</td>
					<td ><select name="contactState" id="contactState" class="input-medium">
								<option value="0">Select State</option> 
								<#list states as state>
									<option value="${state.id}">${state.description}</option>
								</#list>
							</select></td></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Country</td>
					<td ><select name="contactCountry" id="contactCountry" class="input-medium">
								<option value="0">Select Country</option> 
								<#list countryList as country>
									<option value="${country.id}">${country.description}</option>
								</#list>
							</select></td></td>
					
				</tr>
			</table>
		</div>
		<div class="span6">
			<table class="table">
							<tr class="control-group">
					<td class="td-25">Phone1</td>
					<td ><input type="text" class="input-large" name="phone1" id="phone1" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Phone2</td>
					<td ><input type="text" class="input-large" name="phone2" id="phone2" data-id="0"/></td>
					
				</tr>
				
				<tr class="control-group">
					<td class="td-25">Fax</td>
					<td ><input type="text" class="input-large" name="fax" id="fax" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Moblie</td>
					<td ><input type="text" class="input-large" name="mobile" id="mobile" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Email</td>
					<td ><input type="text" class="input-large" name="email" id="email" data-id="0"/></td>
					
				</tr>
			</table>
		</div>
    </div>
</div>
</div>
</div>
    <div class="accordion-group">
         <div class="accordion-heading">
         <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
         <h5>Present Address</h5>
            </a>
         </div>
     <div id="collapseOne" class="accordion-body collapse in">
           <div class="accordion-inner">
          
    <div class="row-fluid">
		<div class="span6">
			<table class="table">
							<tr class="control-group">
					<td class="td-25">Address Name</td>
					<td ><input type="text" class="input-large" name="deliveryName" id="deliveryName" data-id="0"/></td>
					
				</tr>
							<tr>
					<td class="td-25">Address1</td>
					<td ><input type="text" class="input-large" name="deliveryAddress1" id="deliveryAddress1" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Address2</td>
					<td ><input type="text" class="input-large" name="deliveryAddress2" id="deliveryAddress2" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Address3</td>
					<td ><input type="text" class="input-large" name="deliveryAddress3" id="deliveryAddress3" data-id="0"/></td>
					
				</tr>
			
				<tr class="control-group">
					<td class="td-25">City</td>
					<td ><input type="text" class="input-large" name="deliveryCity" id="deliveryCity" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Email</td>
					<td ><input type="text" class="input-large" name="deliveryEmail" id="deliveryEmail" data-id="0"/></td>
					
				</tr>
				
				
			</table>
		</div>
		<div class="span6">
			<table class="table">
							<tr class="control-group">
					<td class="td-25">Phone1</td>
					<td ><input type="text" class="input-large" name="deliveryPhone1" id="deliveryPhone1" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Phone2</td>
					<td ><input type="text" class="input-large" name="deliveryPhone2" id="deliveryPhone2" data-id="0"/></td>
					
				</tr>
				
				<tr class="control-group">
					<td class="td-25">Fax</td>
					<td ><input type="text" class="input-large" name="deliveryFax" id="deliveryFax" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Moblie</td>
					<td ><input type="text" class="input-large" name="deliveryMobile" id="deliveryMobile" data-id="0"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">State</td>
					<td ><select name="deliveryState" id="deliveryState" class="input-large">
								<option value="0">Select State</option> 
								<#list states as state>
									<option value="${state.id}">${state.description}</option>
								</#list> 
							</select></td></td>
					
				</tr>
				<tr class="control-group">
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
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addSupplier.js"></script>
	<script>
		$(function(){
			new defysope.addSupplier.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
