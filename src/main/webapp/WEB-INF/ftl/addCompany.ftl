<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Company Details</h3>
    </div>
    <div class="row-fluid">
		<div class="span6">
			<table class="table">
					<tr>
					<td class="td-25">Company ID</td>
					<td ><input type="text" class="input-large" name="compId" id="compId" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Company Name</td>
					<td ><input type="text" class="input-large" name="companyName" id="companyName" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Trading Name</td>
					<td ><input type="text" class="input-large" name="tradingName" id="tradingName" data-id="0"/></td>
					
				</tr>
				
				<tr>
					<td class="td-25">Regd. Number</td>
					<td><input type="text" class="input-large" name="regNumber" id="regNumber" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Website</td>
					<td><input type="text" class="input-large" name="website" id="website" data-id="0"/></td>
				
				</tr>
				
				<tr>
					<td class="td-25">Purchase Email</td>
					<td><input type="text" class="input-large" name="purchaseEmail" id="purchaseEmail" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Sales Email</td>
					<td><input type="text" class="input-large" name="salesEmail" id="salesEmail" data-id="0"/></td>
				
				</tr>
				<tr>
					<td class="td-25">Mobile</td>
					<td><input type="text" class="input-large" name="mobile" id="mobile" data-id="0"/></td>
				
				</tr>
			</table>
		</div>
		<div class="span6">
			<table class="table">
				<tr>
					<td class="td-25">Address1</td>
					<td><input type="text" class="input-large" name="address1" id="address1" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Address2</td>
					<td><input type="text" class="input-large" name="address2" id="address2" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">City</td>
					<td><input type="text" class="input-large" name="city" id="city" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">State</td>
					<td><select name="state" class="input-medium" id="state" data-id="0">
								<option value="0">Select</option> 
								
								
							</select></td>
				
				</tr>
				<tr>
					<td class="td-25">Country</td>
					<td><select name="country" class="input-medium" id="country" data-id="0">
								<option value="0">Select</option> 
						      </select></td>
					
				</tr>
				<tr>
					<td class="td-25">Phone1</td>
					<td><input type="text" class="input-large" name="phone1" id="phone1" data-id="0"/></td>
				
				</tr>
				<tr>
					<td class="td-25">Phone2</td>
					<td><input type="text" class="input-large" name="phone2" id="phone2" data-id="0"/></td>
				
				</tr>
				
				
			</table>
		</div>
		
		
    </div>
    <div class="span12">
		<span class="btn btn-primary saveCompanyBtn" style="vertical-align:top;"> Add Company</span>
		</div>
    
    
</div>
<@macro.showFooter>
	
</@macro.showFooter>
