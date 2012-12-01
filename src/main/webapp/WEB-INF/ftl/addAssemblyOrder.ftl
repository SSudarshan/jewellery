<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Add Order</h3>
    </div>
    
    <ul class="nav nav-tabs">
	    <li><a href="#tab1" data-toggle="tab">General Details</a></li>
	    <li><a href="#tab2" data-toggle="tab">Repair Order</a></li>
	    <li><a href="#tab3" data-toggle="tab">Assembly Order</a></li>
	     <li><a href="#tab4" data-toggle="tab">Exchange Order</a></li>
	    
    </ul>
    
    <div class="tab-content">
		<div class="tab-pane active" id="tab1">
			<div class="row-fluid">
				<div class="span6">
				<table class="table">
					
					<tr>
						<td class="td-25"><span class="btn btn-link">Enquiry Number</span></td>
						<td>
							<td><input type="text" class="input-medium" name="gstVatNumber"></td>
						</td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Customer Type</span></td>
						<td><select name="salesPerson" class="input-medium">
								<option value="0">Select Person</option> 
							</select></td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Customer Name</span></td>
						<td><td>
							<select name="customerType" class="input-medium">
								<option value="0">Select Type</option> 
							</select>
						</td></td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Order Date</span></td>
						<td>
							<td><input type="text" class="input-medium" name="gstVatNumber"></td>
						</td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Delivery Date</span></td>
						<td>
							<td><input type="text" class="input-medium" name="gstVatNumber"></td>
						</td>
					</tr>
					
					<tr>
						<td class="td-25"><label>Order Details</lable></td>
						
						<td><textarea class="input-medium" name="notes" id="textarea" rows="3" ></textarea></td>
					</tr>
					
					
				</table>
			</div>
			
			
			</div>
		</div>
		
		
		<div class="tab-pane" id="tab2">
			<div class="row-fluid">
				<div class="span6">
				<table class="table">
					<tr>
						<td class="td-25"><label>Product Group</lable></td>
						<td><select name="customerType" class="input-medium">
								<option value="0">Select Type</option> 
							</select></td>
					</tr>
					<tr>
						<td class="td-25"><label>Item Description</lable></td>
						<td><select name="customerType" class="input-medium">
								<option value="0">Select Type</option> 
							</select></td>
					</tr>
					<tr>
						<td class="td-25"><label>Item Problem</lable></td>
						<td><input type="text" class="input-medium" name="townCity"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Item Weight</lable></td>
						<td><input type="text" class="input-medium" name="stateRegion"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Comments</lable></td>
						<td><input type="text" class="input-medium" name="stateRegion"></td>
					</tr>
					
					
					
				</table>
			</div>
			<div class="span6">
				<table class="table">
					<tr>
					<td class="td-10">Repair List</td>
					<td class="td-15"><select name="productList" id="productList" size="4" multiple="multiple">
                       <option value="1">item 1</option>
                       <option value="2">item 2</option>
                         <option value="3">item 3</option>
                        <option value="4">item 4</option>
                        <option value="5">item 5</option>
                        <option value="0">All</option>
                        </select>
                        </td>
					</tr>
				
					<tr>
						<td class="td-25"><label>Repair Cost</lable></td>
						<td><input type="text" class="input-medium" name="lastName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Wastage(%)</lable></td>
						<td><input type="text" class="input-medium" name="emailCCAddress"></td>
					</tr>
					
					<tr>
						<td class="td-25"><label>Total Amt</lable></td>
						<td><input type="text" class="input-medium" name="emailCCAddress"></td>
					</tr>
					
					
					
				</table>
			</div>
			
			</div>
		</div>
		
		
		
		<div class="tab-pane" id="tab3">
			<div class="row-fluid">
				<div class="span6">
				<table class="table">
					<tr>
						<td class="td-25"><label>Product Group</lable></td>
						<td><select name="customerType" class="input-medium">
								<option value="0">Select Type</option> 
							</select></td>
					</tr>
					<tr>
						<td class="td-25"><label>Product Code</lable></td>
						<td><select name="customerType" class="input-medium">
								<option value="0">Select Type</option> 
							</select></td>
					</tr>
					<tr>
						<td class="td-25"><label>Product Description</lable></td>
						<td><input type="text" class="input-medium" name="lastName"></td>
					</tr>
					<tr>
					<td class="td-10">Product List</td>
					<td class="td-15"><select name="productList" id="productList" size="4" multiple="multiple">
                       <option value="1">item 1</option>
                       <option value="2">item 2</option>
                         <option value="3">item 3</option>
                        <option value="4">item 4</option>
                        <option value="5">item 5</option>
                        <option value="0">All</option>
                        </select>
                        </td>
					</tr>
					
					
					
				</table>
			</div>
			
			<div class="span6">
				<table class="table">
					<tr>
						<td class="td-25"><label>Design Code</lable></td>
						<td><select name="customerType" class="input-medium">
								<option value="0">Select Type</option> 
							</select></td>
					</tr>
					<tr>
						<td class="td-25"><label>Product Cost</lable></td>
						<td><input type="text" class="input-medium" name="lastName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Making Cost</lable></td>
						<td><input type="text" class="input-medium" name="lastName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Wastage(%)</lable></td>
						<td><input type="text" class="input-medium" name="emailCCAddress"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Discount(%)</lable></td>
						<td><input type="text" class="input-medium" name="emailCCAddress"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Total Amt</lable></td>
						<td><input type="text" class="input-medium" name="emailCCAddress"></td>
					</tr>
					
					
					
				</table>
			</div>
			</div>
		</div>
		<div class="tab-pane" id="tab4">
			<div class="row-fluid">
				<div class="span6">
				<table class="table">
					<tr>
						<td class="td-25"><label>Product Group</lable></td>
						<td><input type="text" class="input-medium" name="firstName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Exchange Product</lable></td>
						<td><input type="text" class="input-medium" name="middleName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Expected Product</lable></td>
						<td><input type="text" class="input-medium" name="lastName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Actual Weight</lable></td>
						<td><input type="text" class="input-medium" name="emailAddress"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Expected Weight</lable></td>
						<td><input type="text" class="input-medium" name="emailCCAddress"></td>
					</tr>
					
			
				</table>
			</div>
			
			<div class="span6">
				<table class="table">
					<tr>
						<td class="td-25"><label>Exchange Rate</lable></td>
						<td><input type="text" class="input-medium" name="emailCCAddress"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Making Charge</lable></td>
						<td><input type="text" class="input-medium" name="contExtNumber"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Tax</lable></td>
						<td><input type="text" class="input-medium" name="contFaxNumber"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Wastage</lable></td>
						<td><input type="text" class="input-medium" name="contMobNumber"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Total Payable</lable></td>
						<td><input type="text" class="input-medium" name="contTollFreeNumber"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Comments</lable></td>
						
						<td><textarea class="xxlarge" name="contactNotes" id="textarea" rows="3" ></textarea></td>
					</tr>
					
				</table>
			</div>
			</div>
		</div>

	</div>
</div>
<@macro.showFooter/>