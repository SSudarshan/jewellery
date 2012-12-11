<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Cheque Clearance</h3>
    </div>
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-striped table-bordered table-ds roleList" name="roleList" style="width:100%;">
    		 <thead>
    			<tr>
    				<th class="center">Order Code</th>
    				<th class="center">Customer Name</th>
    				<th class="center">Total Amt</th>
    				<th class="center">Amt Paid</th>
    				<th class="center">Payment Date</th>
    				<th class="center">Payment Mode</th>
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
		</form>	
	</div>
	
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addPurchase.js"></script>
	<script>
		$(function(){
			new defysope.addpurchase.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>