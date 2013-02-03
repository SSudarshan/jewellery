<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Add Discount</h3>
    </div>
    <div class="row-fluid">
		<div class="span12">
			<table class="table">
				
				<tr>
					<td class="td-33">Product Group</td>
					<td><select name="productgroup"  id="productgroup" class="input-medium" >
							<#list productGroup as pGrp>
								<option value="${pGrp.id}">${pGrp.description}</option>
							</#list>
						</select>
					</td>
								
				</tr>
				<tr>
					<td class="td-33">Product Code</td>
					<td>
						<input name="product" id="product" class="input-medium">
						</select>
					</td>	
								
				</tr>
				<tr>
					<td class="td-33">Discount Scheme</td>
					<td><input type="text" class="input-large" name="scheme" id="scheme" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-33">Discount (%)</td>
					<td ><input type="text" class="input-large" name="discount" id="discount" data-id="0"/></td>
					
				</tr>
				<tr><td><span class="btn btn-primary saveDiscountBtn" style="vertical-align:top;"> Add Discount</span></tr>
			</table>
		</div>
    </div>
    
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-striped table-bordered table-ds discountList" name="discountList" style="width:50%;">
    		 <thead>
    			<tr>
    				
    				<th class="center">Product Group</th>
    				<th class="center">Product</th>
    				<th class="center">Scheme</th>
    				<th class="center">Discount(%)</th>
    				<th class="center td-5">Edit</th>
    				<th class="center td-5">Delete</th>
    			</tr>
    		</thead>	
    			<#if discountList?exists>
    			<#list discountList as discount>
    			<tr class="row_${discount.id}">
    				<td>${discount.productgroup}</td>
    				<td>${discount.product}</td>
    				<td>${discount.scheme}</td>
    				<td>${discount.discountpercent}</td>
    				<td class="center td-5"><span class="btn btn-success editRole" data-id="${discount.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteRole" data-id="${discount.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addDiscount.js"></script>
	<script>
		$(function(){
			var product = [];
			<#if product?exists>
				<#list product as pgroup>
					var obj = {};
					obj['id']="${pgroup.id}";
					obj['text']="${pgroup.description}"
					obj['grp']="${pgroup.productgroup}"
					product.push(obj);
				</#list>
			</#if>
			
			new defysope.addDiscount.Main("#mainDiv", {'product':product
			});
		});
	</script>
</@macro.showFooter>
