<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Board Rate</h3>
    </div>
    <div class="row-fluid">
		<div class="span12">
			<table class="table">
				<tr>
					<td class="td-10">Category Name</td>
					<td class="td-15"><input type="text" class="input-large" name="categoryName" id="categoryName" data-id="0"/></td>
					
				
					<td class="td-10">Quantity</td>
					<td class="td-15"><input type="text" class="input-large" name="quantity" id="quantity" data-id="0"/></td>
					
				
					<td class="td-10">Rate</td>
					<td class="td-15"><input type="text" class="input-large" name="rate" id="rate" data-id="0"/></td>
					<td><span class="btn btn-primary saveRateBtn" style="vertical-align:top;"> Add Rate</span>
				</tr>
			</table>
		</div>
    </div>
    
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-bordered rateList" name="rateList">
    			<tr>
    				<td class="center">Category Name</td>
    				<td class="center">Quantity</td>
    				<td class="center">Rate</td>
    				<td class="center td-5">Edit</td>
    				<td class="center td-5">Delete</td>
    			</tr>
    			<#if rateList?exists>
    			<#list rateList as rate>
    			<tr class="row_${rate.id}">
    				<td>${rate.description}</td>
    				<td class="center td-5"><span class="btn btn-success editRate" data-id="${rate.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteRate" data-id="${rate.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	
</@macro.showFooter>
