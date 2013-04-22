<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
<form  name="productFrm" class="productFrm">
	<div>
        <h3>Add Product</h3>
    </div>
    <div class="row-fluid">
		<div class="span6">
			<table class="table">
				<input name="id" type="hidden" value=<#if product?exists>"${product.id}"<#else>"0"</#if>
				<tr class="control-group">
					<td class="td-33">Product Group</td>
					<td><select name="productgroup" class="input-medium" id="productgroup" >
								<option value=" ">------Select-------</option>
								<#list productGrpList as  productGrp>
									<option value="${productGrp.id} ">${productGrp.description}</option>
								</#list>
								
								
							</select></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Product Code</td>
					<td ><input type="text" class="input-medium" name="code" id="code" value=<#if product?exists && product.code?has_content>"${product.code}"</#if>></td>
					
				</tr>
				
				<tr class="control-group">
					<td class="td-33">Description</td>
					<td><input type="text" class="input-medium" name="description" id="description" value=<#if product?exists && product.description?has_content>"${product.description}"</#if>></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Model No</td>
					<td><input type="text" class="input-medium" name="modelNo" id="modelNo" value=<#if product?exists && product.modelNo?has_content>"${product.modelNo}"</#if>></td>
				
				</tr>
				
				<tr class="control-group">
					<td class="td-33">Bar Code</td>
					<td><input type="text" class="input-medium" name="barCode" id="barCode" value=<#if product?exists && product.barCode?has_content>"${product.barCode}"</#if>></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Brand</td>
					<td><select name="brand" class="input-medium" id="brand" >
								<option value="0">------Select-------</option> 
								<#list brandList as  brand>
									<option value="${brand.id}">${brand.description}</option>
								</#list>
								
							</select></td>
				
				</tr>
			</table>
		</div>
		<div class="span6">
			<table class="table">
				<tr class="control-group">
					<td class="td-33">UOM</td>
					<td><select name="uom" class="input-medium" id="uom" >
								<option value="0">------Select-------</option> 
								<#list uomList as  uom>
									<option value="${uom.id}">${uom.description!''}</option>
								</#list>
								
							</select></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Weight</td>
					<td><input type="text" class="input-medium" name="weight" id="weight" value=<#if product?exists && product.weight?has_content>"${product.weight}"</#if>></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Avg Land Cost</td>
					<td><input type="text" class="input-medium" name="avgLandCost" id="avgLandCost" value=<#if product?exists && product.avgLandCost?has_content>"${product.avgLandCost}"</#if>></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Last Cost</td>
					<td><input type="text" class="input-medium" name="lastCost" id="lastCost" value=<#if product?exists && product.lastCost?has_content>"${product.lastCost}"</#if>></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-33">Purchase Price</td>
					<td><input type="text" class="input-medium" name="purchasePrice" id="purchasePrice" value=<#if product?exists && product.purchasePrice?has_content>"${product.purchasePrice}"</#if>></td>
				
				</tr>
				<tr class="control-group">
					<td class="td-33">Sell Price</td>
					<td><input type="text" class="input-medium" name="sellPrice" id="sellPrice" value=<#if product?exists && product.sellPrice?has_content>"${product.sellPrice?string.computer}"</#if>></td>
				
				</tr>
			</table>
		</div>
	</div>
    <div class="row-fluid">
    	<div class="span12 offset2">
			Notes :<textarea cols="180" rows="3" id="textarea" class="input-xxlarge" name="notes"></textarea>
		</div>
		<div class="span12 offset3">
			Attachment: <input type="file" name="file">
		</div>
		<div class="span12 offset4">
			<span class="btn btn-primary saveProduct">Save Product</span>
			<span class="btn cancel">Cancel</span>
		</div>
    </div>
   </form>
    
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addProduct.js"></script>
	<script>
		$(function(){
		new defysope.addProduct.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
