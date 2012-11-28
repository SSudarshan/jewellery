<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Add Roles</h3>
    </div>
    <div class="row-fluid">
		<div class="span12">
			<table class="table">
				
				<tr>
					<td class="td-10">Financial Year</td>
					<td class="td-15"><input type="text" class="input-large" name="financialYear" id="financialYear" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Tax Name</td>
					<td class="td-15"><input type="text" class="input-large" name="taxName" id="taxName" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">Tax Rate(%)</td>
					<td class="td-15"><input type="text" class="input-large" name="taxRate" id="taxRate" data-id="0"/></td>
					
				</tr>
			</table>
		</div>
		<div>
		  <span class="btn btn-primary saveTaxesBtn" style="vertical-align:top;">Add</span>
		</div>
    </div>
    
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-bordered taxList" name="taxList">
    			<tr>
    				<td class="center">Financial Year</td>
    				<td class="center">Tax Name</td>
    				<td class="center">Tax Rate(%)</td>
    				<td class="center td-5">Edit</td>
    				<td class="center td-5">Delete</td>
    			</tr>
    			<#if taxList?exists>
    			<#list taxList as tax>
    			<tr class="row_${tax.id}">
    				<td>${tax.financialYear}</td>
    				<td>${tax.taxName}</td>
    				<td>${tax.taxrate}</td>
    				<td class="center td-5"><span class="btn btn-success editTax" data-id="${tax.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteTax" data-id="${tax.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	
</@macro.showFooter>
