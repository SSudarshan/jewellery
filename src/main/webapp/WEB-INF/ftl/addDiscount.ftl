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
					<td class="td-33">Discount Scheme</td>
					<td><input type="text" class="input-large" name="roleName" id="roleName" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-33">Product Group</td>
					<td><select name="state" class="input-medium" id="state" >
								<option value="">Select</option></select></td>
				</tr>
				<tr>
					<td class="td-33">Discount (%)</td>
					<td ><input type="text" class="input-large" name="roleName" id="roleName" data-id="0"/></td>
					
				</tr>
				<tr><td><span class="btn btn-primary saveRoleBtn" style="vertical-align:top;"> Add Discount</span></tr>
			</table>
		</div>
    </div>
    
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-striped table-bordered table-ds roleList" name="roleList" style="width:50%;">
    		 <thead>
    			<tr>
    				<th class="center">Scheme</th>
    				<th class="center">Product Group</th>
    				<th class="center">Discount(%)</th>
    				<th class="center td-5">Edit</th>
    				<th class="center td-5">Delete</th>
    			</tr>
    		</thead>	
    			<#if roleList?exists>
    			<#list roleList as role>
    			<tr class="row_${role.id}">
    				<td>${role.description}</td>
    				<td class="center td-5"><span class="btn btn-success editRole" data-id="${role.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteRole" data-id="${role.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addRole.js"></script>
	<script>
		$(function(){
			new defysope.addRole.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
