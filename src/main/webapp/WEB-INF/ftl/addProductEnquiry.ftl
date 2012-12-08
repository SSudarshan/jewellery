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
					<td class="td-25">Attender</td>
					<td class="td-15"><input type="text" class="input-medium" name="attender" id="attender" data-id="0"/></td>
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Customer Type</td>
					<td class="td-15"><select name="customerType" class="input-medium" id="customerType" data-id="0">
								<option value="0">Select Group</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Customer</td>
					<td class="td-15"><select name="customerName" class="input-medium" id="customerName" data-id="0">
								<option value="0">Select Group</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Referal</td>
					<td class="td-15"><input type="text" class="input-medium" name="address" id="address" data-id="0"/></td>
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Phone</td>
					<td class="td-15"><input type="text" class="input-medium" name="street" id="street" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Email</td>
					<td class="td-15"><input type="text" class="input-medium" name="state" id="state" data-id="0"/></td>
					
				</tr>
				
				<tr>
					<td class="td-25">Moblie</td>
					<td class="td-15"><input type="text" class="input-medium" name="pinCode" id="pinCode" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Enquiry Code</td>
					<td class="td-15"><input type="text" class="input-medium" name="enqCode" id="enqCode" data-id="0"/></td>
						</select></td>
					
				</tr>
				
			</table>
		</div>
		<div class="span4">
			<table class="table">
				<tr>
					<td class="td-25">Enq Date</td>
					<td class="td-15"><input type="text" class="input-medium" name="enquiryDate" id="enquiryDate" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Enq Type</td>
					<td class="td-15"><select name="enquiryType" class="input-medium" id="enquiryType" data-id="0">
								<option value="0">Select Type</option> 
								<option value="1">Ready Made</option> 
								<option value="2">Assemble Product</option> 
								<option value="3">Repair Product</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Appt. Date</td>
					<td class="td-15"><input type="text" class="input-medium" name="apptDate" id="apptDate" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Appt. Time</td>
					<td class="td-15"><input type="text" class="input-medium" name="apptTime" id="apptTime" data-id="0"/></td>
					
				</tr>
				
				<tr>
					<td class="td-25">Status</td>
					<td class="td-15"><select name="enqStatus" class="input-medium" id="enqStatus" data-id="0">
								<option value="0">Open</option> 
								<option value="1">Close</option> 
								 
								
							</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Enq Details</td>
					<td class="td-15"><textarea class="input-medium" name="enqDetails" id="enqDetails" rows="3" ></textarea></td>
				
				</tr>
				
				
			</table>
		</div>
		<div class="span4">
			<table class="table">
				<tr>
					<td class="td-25">Product Group</td>
					<td class="td-15"><select name="productGroup" class="input-medium" id="productGroup" data-id="0">
								<option value="0">Select Group</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Product Code</td>
					<td class="td-15"><input type="text" class="input-medium" name="productCode" id="productCode" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Product Description </td>
					<td class="td-15"><input type="text" class="input-medium" name="productDesc" id="productDesc" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Product Cost </td>
					<td class="td-15"><input type="text" class="input-medium" name="productCost" id="productCost" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25"><span class="btn btn-primary saveCompanyBtn" style="vertical-align:top;">Add</span></td>
					<td class="td-15"><span class="btn btn-primary saveCompanyBtn" style="vertical-align:top;">Del</span></td>
				
				</tr>
				<tr>
					<td class="td-25">Product List</td>
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
					<td class="td-25">Product Total </td>
					<td class="td-15"><input type="text" class="input-medium" name="productTotal" id="productTotal" data-id="0"/></td>
					
				</tr>
				
				
			</table>
		</div>
		
    </div>
    <div class="span12">
		<span class="btn btn-primary saveCompanyBtn" style="vertical-align:top;">Save Enquiry</span>
		</div>
   <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-striped table-bordered table-ds roleList" name="roleList" style="width:100%;">
    		 <thead>
    			<tr>
    				<th class="center">Enq Code</th>
    				<th class="center">Customer</th>
    				<th class="center">Product</th>
    				<th class="center">Price</th>
    				<th class="center">Enq Date</th>
    				<th class="center">Appt Date</th>
    				<th class="center">Appt Time</th>
    				<th class="center td-5">Edit</th>
    				<th class="center td-5">Delete</th>
    			</tr>
    		</thead>	
    			<#if roleList?exists>
    			<#list roleList as role>
    			<tr class="row_${role.id}">
    				<td>${role.description}</td>
    				<td class="center td-5"><span class="btn btn-success editRole" data-id="${role.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteRole" data-id="${role.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	
</@macro.showFooter>
