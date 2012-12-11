<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Add Payment</h3>
    </div>
	<div class="row-fluid">
		<form class="form-horizontal">
			<div class="span4">
				<table class="table">
				
					<tr>
						<td class="td-33"><label>Order Code</lable></td>
						<td><select name="customerType" class="input-medium" id="customerType" data-id="0">
								<option value="0">Select Code</option> 
						</select></td>
					</tr>
					<tr>
					<td class="td-33">Customer Type</td>
					<td><select name="customerType" class="input-medium" id="customerType" data-id="0">
								<option value="0">Select Type</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-33">Customer</td>
					<td><select name="customerName" class="input-medium" id="customerName" data-id="0">
								<option value="0">Select Customer</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-33">Product Group</td>
					<td><select name="productGroup" class="input-medium" id="productGroup" data-id="0">
								<option value="0">Select Group</option> 
						</select></td>
						</tr>
						<tr>
					<td class="td-33">Product Code</td>
					<td><select name="productCode" class="input-medium" id="productCode" data-id="0">
								<option value="0">Select Code</option> 
						</select></td>
						</tr>
						<tr>
						<td class="td-33"><label>Payment Date</lable></td>
						<td><input type="text" class="input-medium" name="state"></td>
					</tr>
				<tr>
						<td class="td-33"><label>Total Payment</lable></td>
						<td class="td-10"><input type="text" style=" width:80px;" name="total">
						<input type="text" style=" width:40px;left:5px" name="balance">
						</td>
					
						
					</tr>
				</table>
			</div>
			
			<div class="span4">
				<table class="table">
					<tr>
						<td class="td-33"><label>First Name</lable></td>
						<td><input type="text" class="input-medium" name="street" disabled></td>
					</tr>
					<tr>
						<td class="td-33"><label>Last Name</lable></td>
						<td><input type="text" class="input-medium" name="city" disabled></td>
					</tr>
					<tr>
						<td class="td-33"><label>Address</lable></td>
						<td><input type="text" class="input-medium" name="street" disabled></td>
					</tr>
					<tr>
						<td class="td-33"><label>City</lable></td>
						<td><input type="text" class="input-medium" name="city" disabled></td>
					</tr>
					<tr>
						<td class="td-33"><label>State</lable></td>
						<td><input type="text" class="input-medium" name="state" disabled></td>
					</tr>
					
					<tr>
						<td class="td-33"><label>Country</label></td>
						<td><input type="text" class="input-medium" name="country" disabled></td>
					</tr>
					<tr>
						<td class="td-33"><label>Phone</label></td>
						<td><input type="text" class="input-medium" name="pin" disabled></td>
					</tr>
					
				</table>
			</div>
			<div class="span4">
				<table class="table">
					<tr>
					<td class="td-33">Payment Mode</td>
					<td><select name="paymentMode" class="input-medium" id="paymentMode" data-id="0">
								<option value="0">Select Mode</option> 
								<option value="1">Cash</option> 
								<option value="2">Cheque</option> 
								<option value="3">Credit/Debit</option> 
						</select></td>
						</tr>
					<tr>
						<td class="td-33"><label>Amount Paid</lable></td>
						<td><input type="text" class="input-medium" name="city"></td>
					</tr>
					
					<tr>
						<td class="td-33"><label>Cheque Date</label></td>
						<td><input type="text" class="input-medium" name="pin"></td>
					</tr>
					<tr>
						<td class="td-33"><label>Cheque Details</label></td>
						<td><textarea class="input-medium" name="notes" id="textarea" rows="3" ></textarea></td>
					</tr>
					<tr>
						<td class="td-33"><label>Cheque Status</label></td>
						<td><input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> Clear
						<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> Pending</td>
					</tr>
					<tr>
						<td class="td-33"><label>Debit/Credit No</label></td>
						<td><input type="text" class="input-medium" name="country"></td>
					</tr>
				</table>
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