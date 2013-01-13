<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
<form  name="companyForm" class="companyForm">
	<div>
        <h3>Add Purchase</h3>
    </div>
    <div class="row-fluid">
		<div class="span6">
			<table class="table">
				<tr class="control-group">
					<td class="td-33">Supplier Code</td>
					<td ><select name="state" class="input-large" id="state" ><option value="">Select</option> </select></td>
				</tr>
				<tr class="control-group">
					<td class="td-33">Supplier Name</td>
					<td><input type="text" class="input-large" name="regdNumber" id="regdNumber" /></td>
				</tr>
			</table>
		</div>
		<div class="span6">
			<table class="table">
				<tr class="control-group">
					<td class="td-33">Warehouse</td>
					<td ><select name="state" class="input-large" id="state" ><option value="">Select</option> </select></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Order Date</td>
					<td><input type="text" class="input-large" name="address2" id="address2" /></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Delivery Date</td>
					<td><input type="text" class="input-large" name="address2" id="address2" /></td>
					
				</tr>
				
				
				
			</table>
		</div>
		
		<div class="span12">
			<table class="table">
				<tr class="control-group">
					<td class="td-15">Product
					<select name="state" class="input-large" id="state" ><option value="">Select</option> </select></td>
					<td class="td-15">Quantity
					<input type="text" class="input-small" name="address2" id="address2" /></td>
					<td class="td-10">Price
					<input type="text" class="input-small" name="address2" id="address2" /></td>
					<td class="td-15">Availability
					<input type="text" class="input-small" name="address2" id="address2" disabled/></td>
					<td class="td-15">Sub Total
					<input type="text" class="input-small" name="address2" id="address2" disabled/></td>
					<td class="td-25">Comments
					<input type="text" class="input-large" name="address2" id="address2" /></td>
				</tr>
				
				
				
			</table>
		</div>
    </div>
    <div class="span11">
		<span class="btn btn-primary pull-right addCompanyBtn"  >Add</span>
		</div>
		<div class="row-fluid">
    	<div class="span12">
    		<table class="table table-striped table-bordered table-ds roleList" name="roleList" style="width:100%;">
    		 <thead>
    			<tr>
    				<th class="center">Line</th>
    				<th class="center">Supplier Code</th>
    				<th class="center">Supplier Name</th>
    				<th class="center">Product</th>
    				<th class="center">Product Description</th>
    				<th class="center">Unit</th>
    				<th class="center">Quantity</th>
    				<th class="center">Price</th>
    				<th class="center">Line Total</th>
    				
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
   </form>
    
</div>
<@macro.showFooter>
	
</@macro.showFooter>
