<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Product Enquiry</h3>
    </div>
    <div class="row-fluid">
		<div class="span4">
			<table class="table">
				<tr>
					<td class="td-10">Product Group</td>
					<td class="td-15"><select name="productGroup" class="input-medium" id="productGroup" data-id="0">
								<option value="0">Select Group</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-10">Product Code</td>
					<td class="td-15"><select name="productCode" class="input-medium" id="productCode" data-id="0">
								<option value="0">Select Code</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-10">Enquiry Date</td>
					<td class="td-15"><input type="text" class="input-large" name="tradingName" id="tradingName" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Trading Name</td>
					<td class="td-15"><input type="text" class="input-large" name="tradingName" id="tradingName" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Customer Name</td>
					<td class="td-15"><select name="organizationType" class="input-medium" id="organizationType" data-id="0">
								<option value="0">Select Customer</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-10">Trading Name</td>
					<td class="td-15"><input type="text" class="input-large" name="tradingName" id="tradingName" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Organization Type</td>
					<td class="td-15"><select name="organizationType" class="input-medium" id="organizationType" data-id="0">
								<option value="0">Company</option> 
								<option value="0">Person</option> 
								<option value="0">Partnership</option> 
								<option value="0">Sole Trader</option> 
								
							</select></td>
					
				</tr>
				<tr>
					<td class="td-10">Regd. Number</td>
					<td class="td-15"><input type="text" class="input-large" name="regNumber" id="regNumber" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Website</td>
					<td class="td-15"><input type="text" class="input-large" name="website" id="website" data-id="0"/></td>
				
				</tr>
				<tr>
					<td class="td-10">Fax</td>
					<td class="td-15"><input type="text" class="input-large" name="fax" id="fax" data-id="0"/></td>
				
				</tr>
				
			</table>
		</div>
		<div class="span4">
			<table class="table">
				<tr>
					<td class="td-10">Address</td>
					<td class="td-15"><input type="text" class="input-large" name="address" id="address" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Street Name</td>
					<td class="td-15"><input type="text" class="input-large" name="streetName" id="streetName" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">City</td>
					<td class="td-15"><input type="text" class="input-large" name="city" id="city" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">State</td>
					<td class="td-15"><input type="text" class="input-large" name="state" id="state" data-id="0"/></td>
				
				</tr>
				<tr>
					<td class="td-10">Country</td>
					<td class="td-15"><select name="country" class="input-medium" id="country" data-id="0">
								<option value="0">India</option> 
								<option value="0">America</option> 
								<option value="0">Japan</option> 
								<option value="0">Srilanka</option> 
								
							</select></td>
					
				</tr>
				<tr>
					<td class="td-10">Postal Code</td>
					<td class="td-15"><input type="text" class="input-large" name="postalCode" id="postalCode" data-id="0"/></td>
				
				</tr>
				
				
			</table>
		</div>
		<div class="span4">
			<table class="table">
				<tr>
					<td class="td-10">Contact Person</td>
					<td class="td-15"><input type="text" class="input-large" name="contactPerson" id="contactPerson" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Telephone</td>
					<td class="td-15"><input type="text" class="input-large" name="telephone" id="telephone" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Mobile</td>
					<td class="td-15"><input type="text" class="input-large" name="mobile" id="mobile" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Purchase Email</td>
					<td class="td-15"><input type="text" class="input-large" name="purchaseEmail" id="purchaseEmail" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Sales Email</td>
					<td class="td-15"><input type="text" class="input-large" name="salesEmail" id="salesEmail" data-id="0"/></td>
				
				</tr>
				
			</table>
		</div>
		
    </div>
    <div class="span12">
		<span class="btn btn-primary saveCompanyBtn" style="vertical-align:top;"> Add Company</span>
		</div>
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-bordered compList" name="compList">
    			<tr>
    				<td class="center">Company Name</td>
    				<td class="center">Regd Number</td>
    				<td class="center">WebSite</td>
    				<td class="center">Contact Person</td>
    				<td class="center">Phone</td>
    				<td class="center">Sales Email</td>
    				<td class="center">Purchase Email</td>
    				<td class="center td-5">Edit</td>
    				<td class="center td-5">Delete</td>
    			</tr>
    			<#if compList?exists>
    			<#list compList as comp>
    			<tr class="row_${comp.id}">
    				<td>${comp.companyName}</td>
    				<td>${comp.regNo}</td>
    				<td>${comp.website}</td>
    				<td>${comp.contactPerson}</td>
    				<td>${comp.phone}</td>
    				<td>${comp.salesEmail}</td>
    				<td>${comp.purchaseEmail}</td>
    				<td class="center td-5"><span class="btn btn-success editCompany" data-id="${comp.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteCompany" data-id="${comp.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addCompany.js"></script>
	<script>
		$(function(){
			new defysope.addCompany.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
