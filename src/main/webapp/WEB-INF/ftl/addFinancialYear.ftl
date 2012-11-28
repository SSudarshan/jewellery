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
					<td class="td-10">Current Fin. Yr</td>
					<td class="td-15">
					<select name="currentFinYr" class="input-medium" id="currentFinYr" data-id="0">
								<option value="0">Select</option> 
								<option value="1">True</option> 
								<option value="2">False</option> 
							</select></td>
					
				</tr>
				
				<tr>
					<td class="td-10">Start Date</td>
					<td class="td-15"><input type="text" class="input-large" name="finStartDate" id="finStartDate" data-id="0"/></td>
					
				</tr>
				<tr>
					<td class="td-10">End Date</td>
					<td class="td-15"><input type="text" class="input-large" name="finEndDate" id="finEndDate" data-id="0"/></td>
					
				</tr>
			</table>
		</div>
		<div>
		  <span class="btn btn-primary saveFinBtn" style="vertical-align:top;">Add</span>
		</div>
    </div>
    
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-bordered finList" name="finList">
    			<tr>
    				<td class="center">Financial Year</td>
    				<td class="center">Start Date</td>
    				<td class="center">End Date</td>
    				<td class="center">Current Fin Yr</td>
    				<td class="center td-5">Edit</td>
    				<td class="center td-5">Delete</td>
    			</tr>
    			<#if finList?exists>
    			<#list finList as fin>
    			<tr class="row_${fin.id}">
    				<td>${fin.financialYear}</td>
    				<td>${fin.currentFinYr}</td>
    				<td>${fin.finStartDate}</td>
    				<td>${fin.finEndDate}</td>
    				<td class="center td-5"><span class="btn btn-success editFin" data-id="${fin.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteFin" data-id="${fin.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	
</@macro.showFooter>
