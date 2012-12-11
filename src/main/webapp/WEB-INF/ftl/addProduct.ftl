<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
<form  name="companyForm" class="companyForm">
	<div>
        <h3>Add Product</h3>
    </div>
    <div class="row-fluid">
		<div class="span4">
			<table class="table">
					
				<tr class="control-group">
					<td class="td-33">Product Group</td>
					<td><select name="state" class="input-medium" id="state" >
								<option value="">Select</option> 
								
								
							</select></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Product Code</td>
					<td ><input type="text" class="input-medium" name="tradingName" id="tradingName" /></td>
					
				</tr>
				
				<tr class="control-group">
					<td class="td-33">Description</td>
					<td><input type="text" class="input-medium" name="regdNumber" id="regdNumber" /></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Model No</td>
					<td><input type="text" class="input-medium" name="website" id="website" /></td>
				
				</tr>
				
				<tr class="control-group">
					<td class="td-33">Bar Code</td>
					<td><input type="text" class="input-medium" name="purchaseEmail" id="purchaseEmail" /></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Brand</td>
					<td><select name="state" class="input-medium" id="state" >
								<option value="">Select</option> 
								
								
							</select></td>
				
				</tr>
				<tr class="control-group">
					<td class="td-33">Supplier</td>
					<td><select name="state" class="input-medium" id="state" >
								<option value="">Select</option> 
								
								
							</select></td>
				
				</tr>
			</table>
		</div>
		<div class="span4">
			<table class="table">
				<tr class="control-group">
					<td class="td-33">UOM</td>
					<td><input type="text" class="input-medium" name="address1" id="address1" /></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Weight</td>
					<td><input type="text" class="input-medium" name="address2" id="address2" /></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Avg Land Cost</td>
					<td><input type="text" class="input-medium" name="address2" id="address2" /></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Last Cost</td>
					<td><input type="text" class="input-medium" name="city" id="city" /></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Purchase Price</td>
					<td><input type="text" class="input-medium" name="regdNumber" id="regdNumber" /></td>
				
				</tr>
				<tr class="control-group">
					<td class="td-33">Sell Price</td>
					<td><input type="text" class="input-medium" name="regdNumber" id="regdNumber" /></td>
				
				</tr>
				<tr class="control-group">
					<td class="td-33">Notes</td>
					<td><input type="text" class="input-medium" name="phone1" id="phone1"/></td>
				
				</tr>
				
				
				
			</table>
		</div>
		
		<div class="span4">
			<table class="table">
				<tr class="control-group">
					
					<td><input type="file" name="image1"></td>
					
				</tr>
				
				
				
			</table>
		</div>
    </div>
    <div class="span12">
		<span class="btn btn-primary addCompanyBtn" style="vertical-align:top;"> Add Company</span>
		</div>
   </form>
    
</div>
<@macro.showFooter>
	
</@macro.showFooter>
