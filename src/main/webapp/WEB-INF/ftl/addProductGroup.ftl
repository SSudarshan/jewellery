<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Add Product Group</h3>
    </div>
    <div class="row-fluid">
		<div class="span12">
			<table class="table">
				<tr>
					<td class="td-10">Group Name</td>
					<td class="td-15"><input type="text" class="input-large" name="groupName" id="groupName" data-id="0"/></td>
					<td><span class="btn btn-primary savePGBtn" style="vertical-align:top;"> Add Group</span>
				</tr>
			</table>
		</div>
    </div>
    
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-striped table-bordered table-ds groupList" style="width:50%;" name="groupList">
    			<thead>	
    			<tr>
    				<th class="center">Group Name</th>
    				<th class="center td-5">Edit</th>
    				<th class="center td-5">Delete</th>
    			</tr>
    			</thead>	
    			<#if groupList?exists>
    			<#list groupList as group>
    			<tr class="row_${group.id}">
    				<td>${group.description}</td>
    				<td class="center td-5"><span class="btn btn-success editPG" data-id="${group.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deletePG" data-id="${group.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addProductGroup.js"></script>
	<script>
		$(function(){
			new defysope.addProductGroup.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
