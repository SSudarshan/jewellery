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
					<td class="td-10">Warehouse Name</td>
					<td class="td-15"><input type="text" class="input-large" name="wareHouseName" id="wareHouseName" data-id="0"/></td>
					<td><span class="btn btn-primary saveWareBtn" style="vertical-align:top;">Add</span></td>
				</tr>
			</table>
		</div>
    </div>
    
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-bordered wareList" name="wareList">
    			<tr>
    				<td class="center">Ware House</td>
    				<td class="center td-5">Edit</td>
    				<td class="center td-5">Delete</td>
    			</tr>
    			<#if wareList?exists>
    			<#list wareList as ware>
    			<tr class="row_${ware.id}">
    				<td>${ware.warehouse}</td>
    				<td class="center td-5"><span class="btn btn-success editWare" data-id="${ware.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteWare" data-id="${ware.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	
</@macro.showFooter>
