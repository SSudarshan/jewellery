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
					<td><span class="btn btn-primary saveBRateBtn" style="vertical-align:top;"> Add Rate</span>
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
    				<td>${rate.categoryName}</td>
    				<td>${rate.quantity}</td>
    				<td>${rate.boardRate}</td>
    				<td class="center td-5"><span class="btn btn-success editBRate" data-id="${rate.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteBRate" data-id="${rate.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addBoardRate.js"></script>
	<script>
		$(function(){
			new defysope.addBoardRate.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
