<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Sales Order</h3>
    </div>
    <div class="row-fluid">
		<div class="span4">
			<table class="table">
				
				
				<tr>
					<td class="td-25">Enquiry Code</td>
					<td><select name="enqCode" class="input-medium" id="enqCode" data-id="0">
								<option value="0">Select Code</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Customer Type</td>
					<td><select name="customerType" class="input-medium" id="customerType" data-id="0">
								<option value="0">Select Type</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Customer</td>
					<td><select name="customerName" class="input-medium" id="customerName" data-id="0">
								<option value="0">Select Customer</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Order Type</td>
					<td><select name="orderType" class="input-medium" id="orderType" data-id="0">
								<option value="0">Select Type</option> 
								<option value="1">Ready Made</option> 
								<option value="2">Assemble Product</option> 
								<option value="3">Repair Product</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Order Details</td>
					<td><textarea class="input-medium" name="orderDetails" id="orderDetails" rows="3" ></textarea></td>
					
				</tr>
				<tr>
					<td class="td-25">Order Date</td>
					<td><input type="text" class="input-medium" name="orderDate" id="orderDate" data-id="0"/></td>
					
				</tr>
				
				<tr>
					<td class="td-33">Furnish Date</td>
					<td ><input type="text" class="input-medium" name="furnishDate" id="furnishDate" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-33">Delivery Date</td>
					<td><input type="text" class="input-medium" name="deliveryDate" id="deliveryDate" data-id="0"/></td>
				
				</tr>
				
				
			</table>
		</div>
		<div class="span4">
			<table class="table">
				
				<tr>
					<td class="td-25">First Name</td>
					<td><input type="text" class="input-medium" name="firstName" id="firstName" data-id="0"/></td>
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Last Name</td>
					<td><input type="text" class="input-medium" name="lastName" id="lastName" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Address</td>
					<td><input type="text" class="input-medium" name="address" id="address" data-id="0"/></td>
					
				</tr>
				
				<tr>
					<td class="td-25">City</td>
					<td><input type="text" class="input-medium" name="enquiryDate" id="enquiryDate" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">State</td>
					<td><select name="state" class="input-medium" id="state" data-id="0">
								<option value="0">Select State</option> 
								
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Country</td>
					<td><select name="country" class="input-medium" id="country" data-id="0">
								<option value="0">Select Country</option> 
								
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Phone</td>
					<td><input type="text" class="input-medium" name="phone" id="phone" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-25">Mobile</td>
					<td><input type="text" class="input-medium" name="mobile" id="mobile" data-id="0"/></td>
					
				</tr>
				
				<tr>
					<td class="td-25">Email</td>
					<td><input type="text" class="input-medium" name="email" id="email" data-id="0"/></td>
					
				</tr>
				
				
				
			</table>
		</div>
		<div class="span4">
			<table class="table">
				<tr>
					<td class="td-25">Sales Person</td>
					<td><input type="text" class="input-medium" name="salesPerson" id="salesPerson" data-id="0"/></td>
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Vendor</td>
					<td><select name="vendor" class="input-medium" id="vendor" data-id="0">
								<option value="0">Select Vendor</option> 
								
						</select></td>
					
				</tr>
				
				
				
				
				<tr>
					<td class="td-33">Delivery Method</td>
					<td><select name="deliveryMethod" class="input-medium" id="deliveryMethod" data-id="0">
								<option value="0">Select Method</option> 
								
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Discount (%)</td>
					<td><select name="discount" class="input-medium" id="discount" data-id="0">
								<option value="0">Select Discount</option> 
								
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Tax</td>
					<td><select name="tax" class="input-medium" id="tax" data-id="0">
								<option value="0">Select tax</option> 
								
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Product Group</td>
					<td><select name="productGroup" class="input-medium" id="productGroup" data-id="0">
								<option value="0">Select Group</option> 
						</select></td>
						</tr>
						<tr>
					<td class="td-25">Comments</td>
					<td><textarea class="input-medium" name="comments" id="comments" rows="3" ></textarea></td>
					
				</tr>
				<tr>
					<td class="td-25">Order Code</td>
					<td><select name="orderCode" class="input-medium" id="orderCode" data-id="0">
								<option value="0">Select Code</option> 
						</select></td>
					
				</tr>
			</table>
		</div>
		<div class="span12">
			<table class="table">
				<tr>
					
				
					<td>Product Code</td>
					<td><select name="productCode" class="input-medium" id="productCode" data-id="0">
								<option value="0">Select Product</option> 
								
						</select></td>
					
				
					<td >Description </td>
					<td><input type="text" class="input-medium" name="productDesc" id="productDesc" data-id="0"/></td>
					<td >Weight </td>
					<td><input type="text" class="input-small" name="weight" id="weight" data-id="0"/></td>
					<td >Quantity </td>
					<td><input type="text" class="input-small" name="quantity" id="quantity" data-id="0"/></td>
				
					
				
				
			</table>
		</div>
		<div class="span12">
			<table class="table">
				<tr>
					
					
				
					<td>Price</td>
					<td><input type="text" class="input-medium" name="price" id="price" data-id="0"/></td>
								
					<td>Availability </td>
					<td><input type="text" class="input-medium" name="availability" id="availability" data-id="0"/></td>
					
					<td>Sub Total</td>
					<td><input type="text" class="input-small" name="subTotal" id="subTotal" data-id="0"/></td>
					<td></td>
					<td><span class="btn btn-primary saveCompanyBtn" style="vertical-align:top;">Add</span></td>
				</tr>
				
				
			</table>
		</div>
		
    </div>
   
   <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-striped table-bordered table-ds roleList" name="roleList" style="width:100%;">
    		 <thead>
    			<tr>
    				<th class="center">Product Code</th>
    				<th class="center">Unit Price</th>
    				<th class="center">Quantity</th>
    				<th class="center">Sub Total</th>
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
    	<div class="span12">
		<table class="table">
				<tr>
		<td><span class="btn btn-primary saveCompanyBtn" style="vertical-align:top;">Add</span></td>
		<td><input type="text" class="input-medium" name="total" id="total" data-id="0"/></td>
		</tr>
		</table>
		</div>
    </div>
     
    
</div>
<@macro.showFooter>
	
</@macro.showFooter>
