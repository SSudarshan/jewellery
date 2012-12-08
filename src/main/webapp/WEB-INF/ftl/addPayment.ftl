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
						<td class="td-25"><label>Financial Month</lable></td>
						<td><input type="text" class="input-medium" name="finMonth" id="finMonth"> </td>
					</tr>
					<tr>
						<td class="td-25"><label>Order Code</lable></td>
						<td><input type="text" class="input-medium" name="city"></td>
					</tr>
					<tr>
					<td class="td-25">Customer Type</td>
					<td><select name="customerType" class="input-medium" id="customerType" data-id="0">
								<option value="0">Select Type</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Customer</td>
					<td><select name="customerName" class="input-medium" id="customerName" data-id="0">
								<option value="0">Select Customer</option> 
						</select></td>
					
				</tr>
				<tr>
					<td class="td-25">Product Group</td>
					<td><select name="productGroup" class="input-medium" id="productGroup" data-id="0">
								<option value="0">Select Group</option> 
						</select></td>
						</tr>
						<tr>
					<td class="td-25">Product Code</td>
					<td><select name="productCode" class="input-medium" id="productCode" data-id="0">
								<option value="0">Select Code</option> 
						</select></td>
						</tr>
				<tr>
						<td class="td-25"><label>Total Payment</lable></td>
						<td><input type="text" class="input-medium" name="street"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Remaining Payment</lable></td>
						<td><input type="text" class="input-medium" name="street"></td>
					</tr>
				</table>
			</div>
			
			<div class="span4">
				<table class="table">
					<tr>
						<td class="td-25"><label>First Name</lable></td>
						<td><input type="text" class="input-medium" name="street"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Last Name</lable></td>
						<td><input type="text" class="input-medium" name="city"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Address</lable></td>
						<td><input type="text" class="input-medium" name="street"></td>
					</tr>
					<tr>
						<td class="td-25"><label>City</lable></td>
						<td><input type="text" class="input-medium" name="city"></td>
					</tr>
					<tr>
						<td class="td-25"><label>State</lable></td>
						<td><input type="text" class="input-medium" name="state"></td>
					</tr>
					
					<tr>
						<td class="td-25"><label>Country</label></td>
						<td><input type="text" class="input-medium" name="country"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Phone</label></td>
						<td><input type="text" class="input-medium" name="pin"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Mobile</label></td>
						<td><input type="text" class="input-medium" name="pin"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Email</label></td>
						<td><input type="text" class="input-medium" name="pin"></td>
					</tr>
				</table>
			</div>
			<div class="span4">
				<table class="table">
					<tr>
					<td class="td-25">Payment Mode</td>
					<td><select name="paymentMode" class="input-medium" id="paymentMode" data-id="0">
								<option value="0">Select Mode</option> 
								<option value="1">Cash</option> 
								<option value="2">Cheque</option> 
								<option value="3">Credit/Debit</option> 
						</select></td>
						</tr>
					<tr>
						<td class="td-25"><label>Amount Paid</lable></td>
						<td><input type="text" class="input-medium" name="city"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Payment Date</lable></td>
						<td><input type="text" class="input-medium" name="state"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Cheque Date</label></td>
						<td><input type="text" class="input-medium" name="pin"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Cheque Details</label></td>
						<td><input type="text" class="input-medium" name="country"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Cheque Status</label></td>
						<td><input type="text" class="input-medium" name="country"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Debit/Credit No</label></td>
						<td><input type="text" class="input-medium" name="country"></td>
					</tr>
				</table>
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