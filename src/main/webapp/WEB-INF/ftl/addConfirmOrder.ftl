<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Confirm Order</h3>
    </div>
    <div class="row-fluid">
		<div class="span4">
			<table class="table">
				
				<tr>
					<td class="td-10">Attender</td>
					<td class="td-15"><input type="text" class="input-large" name="attender" id="attender" data-id="0"/></td>
						</select></td>
					
				</tr>
				<tr>
					<td class="td-10">Enquiry</td>
					<td class="td-15"><select name="customerType" class="input-medium" id="customerType" data-id="0">
								<option value="0">Select</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-10">Customer</td>
					<td class="td-15"><select name="customerName" class="input-medium" id="customerName" data-id="0">
								<option value="0">Select Group</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-10">Order Date</td>
					<td class="td-15"><input type="text" class="input-large" name="address" id="address" data-id="0"/></td>
						</select></td>
					
				</tr>
				
				<tr>
					<td class="td-10">Delivery Date</td>
					<td class="td-15"><input type="text" class="input-large" name="street" id="street" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Email</td>
					<td class="td-15"><input type="text" class="input-large" name="state" id="state" data-id="0"/></td>
					
				</tr>
				
				<tr>
					<td class="td-10">Moblie</td>
					<td class="td-15"><input type="text" class="input-large" name="pinCode" id="pinCode" data-id="0"/></td>
					
				</tr>
				
				
			</table>
		</div>
		<div class="span4">
			<table class="table">
				<tr>
					<td class="td-10">Enq Date</td>
					<td class="td-15"><input type="text" class="input-large" name="enquiryDate" id="enquiryDate" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Enq Type</td>
					<td class="td-15"><select name="enquiryType" class="input-medium" id="enquiryType" data-id="0">
								<option value="0">Select Type</option> 
								<option value="1">Ready Made</option> 
								<option value="2">Assemble Product</option> 
								<option value="3">Repair Product</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-10">Appt. Date</td>
					<td class="td-15"><input type="text" class="input-large" name="apptDate" id="apptDate" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Appt. Time</td>
					<td class="td-15"><input type="text" class="input-large" name="apptTime" id="apptTime" data-id="0"/></td>
					
				</tr>
				
				<tr>
					<td class="td-10">Status</td>
					<td class="td-15"><select name="enqStatus" class="input-medium" id="enqStatus" data-id="0">
								<option value="0">Open</option> 
								<option value="1">Close</option> 
								 
								
							</select></td>
					
				</tr>
				<tr>
					<td class="td-10">Enq Details</td>
					<td class="td-15"><input type="text" class="input-large" name="enqDetails" id="enqDetails" data-id="0"/></td>
				
				</tr>
				
				
			</table>
		</div>
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
					<td class="td-15"><input type="text" class="input-large" name="productCode" id="productCode" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Product Description </td>
					<td class="td-15"><input type="text" class="input-large" name="productDesc" id="productDesc" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Product Cost </td>
					<td class="td-15"><input type="text" class="input-large" name="productCost" id="productCost" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10"><span class="btn btn-primary saveCompanyBtn" style="vertical-align:top;">Add</span></td>
					<td class="td-15"><span class="btn btn-primary saveCompanyBtn" style="vertical-align:top;">Del</span></td>
				
				</tr>
				<tr>
					<td class="td-10">Product List</td>
					<td class="td-15"><select name="productList" id="productList" size="4" multiple="multiple">
                       <option value="1">item 1</option>

                        <option value="2">item 2</option>

                          <option value="3">item 3</option>

                         <option value="4">item 4</option>
                         <option value="5">item 5</option>

                         

                         <option value="0">All</option>

</select></td>
					
				</tr>
				<tr>
					<td class="td-10">Product Total </td>
					<td class="td-15"><input type="text" class="input-large" name="productTotal" id="productTotal" data-id="0"/></td>
					
				</tr>
				
				
			</table>
		</div>
		
    </div>
    <div class="span12">
		<span class="btn btn-primary saveCompanyBtn" style="vertical-align:top;">Save Enquiry</span>
		</div>
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-bordered compList" name="compList">
    			<tr>
    				<td class="center">Customer Name</td>
    				<td class="center">Enquiry Date</td>
    				<td class="center">Appt Date</td>
    				<td class="center">Appt time</td>
    				<td class="center">Phone</td>
    				<td class="center">Email</td>
    				<td class="center">Enquiry Type</td>
    				<td class="center">Enquiry Status</td>
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
	
</@macro.showFooter>
