<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Add Customer Type</h3>
    </div>
    <div class="row-fluid">
		<div class="span12">
			<table class="table">
				<tr>
					<td class="td-10">Customer Type</td>
					<td class="td-15"><input type="text" class="input-large" name="customerType" id="customerType" data-id="0"/></td>
					<td><span class="btn btn-primary saveTypeBtn" style="vertical-align:top;">Add Type</span>
				</tr>
			</table>
		</div>
    </div>
    
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-bordered typeList" name="typeList">
    			<tr>
    				<td class="center">Customer Type</td>
    				<td class="center td-5">Edit</td>
    				<td class="center td-5">Delete</td>
    			</tr>
    			<#if typeList?exists>
    			<#list typeList as type>
    			<tr class="row_${type.id}">
    				<td>${type.customerType}</td>
    				<td class="center td-5"><span class="btn btn-success editCType" data-id="${type.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteCType" data-id="${type.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addCustomerType.js"></script>
	<script>
		$(function(){
			new defysope.addCustomerType.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
