<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Add Supplier</h3>
    </div>
    <div class="row-fluid">
		<div class="span6">
			<table class="table">
							<tr>
					<td class="td-25">Supplier Code</td>
					<td ><input type="text" class="input-large" name="supplierCode" id="compId" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Supplier Name</td>
					<td ><input type="text" class="input-large" name="supplierName" id="supplierName" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">CST/VAT Number</td>
					<td ><input type="text" class="input-large" name="cstVatNumber" id="supplierName" data-id="0"/></td>
					
				</tr>
			
				<tr>
					<td class="td-25">Notes</td>
					<td ><textarea class="input-large" name="notes" id="notes" rows="3" ></textarea></td>
					
				</tr>
				
				
			</table>
		</div>
		<div class="span6">
			<table class="table">
						
						<tr>
					<td class="td-25">Type</td>
					<td ><select name="supplierVendorType" id="supplierVendorType" class="input-medium">
								<option value="0">Select Type</option> 
								<option value="1">Product Supplier</option> 
								<option value="2">Smith Vendor</option> 
							</select></td></td>
					
				</tr>
							<tr>
					<td class="td-25">Registration No</td>
					<td ><input type="text" class="input-large" name="regNo" id="regNo" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Specialization</td>
					<td ><input type="text" class="input-large" name="specialization" id="specialization" data-id="0"/></td>
					
				</tr>
				
				
			</table>
		</div>
    </div>
 
    <div>
        <h5>Contact Address</h5>
    </div>
    <div class="row-fluid">
		<div class="span6">
			<table class="table">
							<tr>
					<td class="td-25">Address Name</td>
					<td ><input type="text" class="input-large" name="contactAddName" id="contactAddName" data-id="0"/></td>
					
				</tr>
							<tr>
					<td class="td-25">Address1</td>
					<td ><input type="text" class="input-large" name="contactAdd1" id="contactAdd1" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Address2</td>
					<td ><input type="text" class="input-large" name="contactAdd2" id="contactAdd2" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Address3</td>
					<td ><input type="text" class="input-large" name="contactAdd3" id="contactAdd3" data-id="0"/></td>
					
				</tr>
			
				<tr>
					<td class="td-25">City</td>
					<td ><input type="text" class="input-large" name="contactCity" id="contactCity" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">State</td>
					<td ><select name="contactState" id="contactState" class="input-medium">
								<option value="0">Select State</option> 
							</select></td></td>
					
				</tr>
				<tr>
					<td class="td-25">Country</td>
					<td ><select name="contactCountry" id="contactCountry" class="input-medium">
								<option value="0">Select Country</option> 
							</select></td></td>
					
				</tr>
			</table>
		</div>
		<div class="span6">
			<table class="table">
							<tr>
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
				<tr>
					<td class="td-25">Moblie</td>
					<td ><input type="text" class="input-large" name="mobile" id="mobile" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Email</td>
					<td ><input type="text" class="input-large" name="email" id="email" data-id="0"/></td>
					
				</tr>
			</table>
		</div>
    </div>
    
    
    
     <div>
        <h5>Present Address</h5>
    </div>
    <div class="row-fluid">
		<div class="span6">
			<table class="table">
							<tr>
					<td class="td-25">Address Name</td>
					<td ><input type="text" class="input-large" name="presentAddName" id="presentAddName" data-id="0"/></td>
					
				</tr>
							<tr>
					<td class="td-25">Address1</td>
					<td ><input type="text" class="input-large" name="presentAdd1" id="presentAdd1" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Address2</td>
					<td ><input type="text" class="input-large" name="presentAdd2" id="presentAdd2" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Address3</td>
					<td ><input type="text" class="input-large" name="presentAdd3" id="presentAdd3" data-id="0"/></td>
					
				</tr>
			
				<tr>
					<td class="td-25">City</td>
					<td ><input type="text" class="input-large" name="presentCity" id="presentCity" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">State</td>
					<td ><select name="presentState" id="presentState" class="input-medium">
								<option value="0">Select State</option> 
							</select></td></td>
					
				</tr>
				<tr>
					<td class="td-25">Country</td>
					<td ><select name="presentCountry" id="presentCountry" class="input-medium">
								<option value="0">Select Country</option> 
							</select></td></td>
					
				</tr>
			</table>
		</div>
		<div class="span6">
			<table class="table">
							<tr>
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
				<tr>
					<td class="td-25">Moblie</td>
					<td ><input type="text" class="input-large" name="mobile" id="mobile" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Email</td>
					<td ><input type="text" class="input-large" name="email" id="email" data-id="0"/></td>
					
				</tr>
			</table>
		</div>
    </div>
    
     
    
</div>
<@macro.showFooter>
	
</@macro.showFooter>
