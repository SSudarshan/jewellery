<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>
<@macro.showHeader />
<div id = "mainDiv" class="inner-col">
	<div>
        <h3>User</h3>
    </div>
	<div class="row-fluid">
		<div class="span6">
			<table id="list2"></table> 
			<div id="pager2"></div>	
		</div>
		
		<div class="span6">
			<form class="form-horizontal userFrm">
			    <div class="control-group">
			   		 <label class="control-label" for="inputName">Name</label>
			    	<div class="controls">
			    		<input type="text" id="inputName" placeholder="Name" name="firstname">
			    	</div>
			    </div>
			    
			    <div class="control-group">
			    	<label class="control-label" for="inputPassword">Password</label>
			    	<div class="controls">
			    		<input type="text" id="uerName" placeholder="User Name" name="uerName">
			    	</div>
			    </div>
			    
			     <div class="control-group">
			    	<label class="control-label" for="inputPassword">Password</label>
			    	<div class="controls">
			    		<input type="password" id="inputPassword" placeholder="Password" name="password">
			    	</div>
			    </div>
			    
			     <div class="control-group">
			    	<label class="control-label" for="inputPassword">Role</label>
			    	<div class="controls">
			    		<select name="role" class="input-large">
			    			<#list role as role>
			    				<option value="${role.id}">${role.description}</option>
			    			</#list>
			    		</select>
			    	</div>
			    </div>
			    
			    <div class="form-actions">
    				<button type="button" class="btn btn-primary saveUser">Save User</button>
    				<button type="button" class="btn">Cancel</button>
    			</div>
			    
		    </form>
		</div>
	</div>
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addUser.js"></script>
	<script>
		$(function(){
			new defysope.addUser.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>