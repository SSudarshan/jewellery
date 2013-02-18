<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
<div class="row-fluid">
	<span class="span12">
		<span class="btn btn-primary pull-right addPurchase" status='HOLD'>Hold</span>
		<span class="btn btn-primary pull-right addPurchase" status='PENDING' style="margin:0px 5px 0px 5px;">Purchase</span>
	</span>
</div>
<form  name="purchaseForm" class="purchaseForm">
	<div>
        <h3>Add Purchase</h3>
    </div>
    <div class="row-fluid">
		<div class="span6">
			<table class="table">
				<tr class="control-group">
					<td class="td-33">Supplier Code</td>
					<td >
						<select name="supplier" class="input-large supplier" id="supplier">
							<option value="">Select</option>
							<#if suppliers?exists>
								<#list suppliers as supplier>
									<option value="${supplier.id}">${supplier.supplierCode}</option>		
								</#list>
							</#if> 
						</select>
						</td>
				</tr>
				<tr class="control-group">
					<td class="td-33">Supplier Name</td>
					<td><input type="text" class="input-large supliername" name="supliername" id="supliername" /></td>
				</tr>
			</table>
		</div>
		<div class="span6">
			<table class="table">
				<tr class="control-group">
					<td class="td-33">Warehouse</td>
					<td >
						<select name="warehouse" class="input-large warehouse" id="warehouse">
							<option value="">Select</option>
							<#if warehouses?exists>
								<#list warehouses as warehouse>
									<option value="${warehouse.id}">${warehouse.description}</option>		
								</#list>
							</#if> 
							</select>
					</td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Order Date</td>
					<td><input type="text" class="input-large orderDate" name="orderDate" id="orderDate" /></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Delivery Date</td>
					<td><input type="text" class="input-large deliveryDate" name="deliveryDate" id="deliveryDate" /></td>
				</tr>
			</table>
		</div>
		
		<div class="span12">
			<table class="table">
				<tr class="control-group">
				<td class="td-15">Product Groups
					<select name="productGroup" class="input-medium productGroup" id="productGroup" >
						<option value="">Select</option>
						<#if productGroups?exists>
						<#list productGroups as productGroup>
							<option value="${productGroup.id}">${productGroup.description}</option>	
						</#list>
						</#if> 
					</select>
				</td>
					<td class="td-15">Product
						<input type="hidden" name="product" id="product" class="product input-medium" />
					</td>
					<td class="td-10">Quantity
					<input type="text" class="input-mini quantity" name="quantity" id="quantity" /></td>
					<td class="td-10">Price
					<input type="text" class="input-mini price" name="price" id="price" /></td>
					<td class="td-10">Availability
					<input type="text" class="input-mini avilable" name="avilable" id="avilable" disabled/></td>
					<td class="td-10">Sub Total
					<input type="text" class="input-mini subTotal" name="subTotal" id="subTotal" disabled/></td>
					<td class="td-25">Comments
					<input type="text" class="input-large comments" name="comments" id="comments" /></td>
				</tr>
				
				
				
			</table>
		</div>
    </div>
    <div class="span11">
		<span class="btn btn-primary pull-right addProductItem"  >Add</span>
		</div>
		<div class="row-fluid">
    	<div class="span12">
    		<table class="table table-striped table-bordered table-ds productItems" name="productItems" style="width:100%;">
    		 <thead>
    			<tr>
    				<th class="center">Product Group</th>
    				<th class="center">Product</th>
    				<th class="center">Quantity</th>
    				<th class="center">Price</th>
    				<th class="center">Comment</th>
    				<th class="center">SubTotal</th>
    				<th class="center td-5">Delete</th>
    			</tr>
    		</thead>	
    		<tbody>
    		</tbody>
    		</table>
    	</div>
    </div>
   </form>
    
</div>
<div class="templates hide">
<table>
<tr class="items">
		<td class="center productGroupValue"></td>
		<td class="center productValue"></td>
		<td class="center quantityValue"</td>
		<td class="center priceValue"></td>
		<td class="center subTotalValue"></td>
		<td class="center commentValue"></td>
		<td class="center"><span style="cursor:pointer;" class="dltProductItem">Delete</span>
		<td class="hide productGroupId"></td>
		<td class="hide productId"></td>
		</td>
	</tr>
	</table>
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addPurchase.js?v=3"></script>
	<script>
		$(function(){
			new defysope.addpurchase.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
