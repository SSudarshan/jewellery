<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div id="mainDiv" class="inner-col">
	<div>
        <h3>Access Rights</h3>
    </div>
    
    <div class="row-fluid">
    	<div class="span6">
    		<form class="form-horizontal">
    			<div class="control-group">
			    	<label class="control-label" for="inputPassword">Role</label>
			    	<div class="controls">
			    		<select name="role" class="input-xlarge">
			    			<#list roles as role>
			    				<option value="${role.id}">${role.description}</option>
			    			</#list>
			    		</select>
			    	</div>
			    </div>
    		</form>
    	</div>
    	<div class="span6">
    		<span class="btn btn-primary savePermission"> Save </span>
    	</div>
    </div>
    
    <div class="row-fluid">
    	
    	<div class="span6">
    		<table class="table table-bordered table-ds">
    				<tr>
	    				<th colspan="3" class="center">Sales</th>
	    			</tr>
	    	<#list pages as page>
	    		<#if page.module == 2>
	    			<tr>
	    				<td><input type="checkbox" data-id="${page.cid}"></td>		
	    				<td>${page.description}</td>		
	    				<td>${page.helptext!''}</td>		
	    			</tr>
	    		</#if>
	    	</#list>
	    	</table>
    	</div>
    	<div class="span6">
    	
    	</div>
    	<div class="span6">
    	
    	</div>
    	<div class="span6">
    	
    	</div>
    	
    </div>
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/setPermission.js"></script>
	<script>
		$(function(){
			new defysope.setPermission.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>