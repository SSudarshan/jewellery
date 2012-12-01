<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Add Invoice</h3>
    </div>
	<div class="row-fluid">
		<form class="form-horizontal">
			<div class="span4">
				<table class="table">
					<tr>
						<td class="td-25"><span class="btn btn-link">Customer Code</span></td>
						<td>
							<select name="invoiceCustCode" class="input-medium">
								<option value="0">Select Supplier</option> 
							</select>
						</td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Customer Name</span></td>
						<td><input type="text" class="input-medium" name="invoiceCustName"></td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Customer Reference</span></td>
						<td><input type="text" class="input-medium" name="invoiceCustRef"></td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Discount (%)</span></td>
						<td><input type="text" class="input-medium" name="invoiceDiscount"></td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Warehouse</span></td>
						<td>
							<select name="InvoiceWarehouse" class="input-medium">
								<option value="0">Select Warehouse</option> 
							</select>
						</td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Delivery Method</span></td>
						<td>
							<select name="deliveryMethod" class="input-medium">
								<option value="0">Select Method</option> 
							</select>
						</td>
					</tr>
					<tr>
						<td class="td-25"><span class="btn btn-link">Exchange Rate</span></td>
						<td><input type="text" class="input-medium" name="exchangeRate"></td>
					</tr>
					
				</table>
			</div>
			
			<div class="span4">
				<table class="table">
					<tr>
						<td class="td-25"><label>Delivery Name</lable></td>
						<td><input type="text" class="input-medium" name="invoiceDeliveryName"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Street Address</lable></td>
						<td><input type="text" class="input-medium" name="invoiceStreetAdd"></td>
					</tr>
					<tr>
						<td class="td-25"><label>City</lable></td>
						<td><input type="text" class="input-medium" name="invoiceCity"></td>
					</tr>
					<tr>
						<td class="td-25"><label>State/Region</lable></td>
						<td><input type="text" class="input-medium" name="invoiceState"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Post Code</label></td>
						<td><input type="text" class="input-medium" name="invoicePostCode"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Country</label></td>
						<td><input type="text" class="input-medium" name="invoiceCountry"></td>
					</tr>
				</table>
			</div>
			<div class="span3">
				<table class="table">
					<tr>
						<td class="td-25"><label>Sales Person</lable></td>
						<td><select name="invoiceSalesPerson" class="input-medium">
								<option value="0">Select Person</option> 
							</select></td>
					</tr>
					<tr>
						<td class="td-25"><label>Invoice Group</lable></td>
						<td><select name="invoiceGroup" class="input-medium">
								<option value="0">Select Group</option> 
							</select></td>
					</tr>
					<tr>
						<td class="td-25"><label>Order Date</lable></td>
						<td><input type="text" class="input-medium" name="invoiceOrderDate"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Quote Expiry Date</label></td>
						<td><input type="text" class="input-medium" name="invoiceQuoteExpiryDate"></td>
					</tr>
					<tr>
						<td class="td-25"><label>Required Date</label></td>
						<td><input type="text" class="input-medium" name="requiredDate"></td>
					</tr>
				</table>
			</div>
		</form>	
	</div>
	<div class="row-fluid">
		<form class="form-inline">
			<div class="span2">
				<span class="btn btn-link">Product</span>
				<select name="productGrp">
					<option value="0">Select Product</option>
				</select>
			</div>
			<div class="span1">
				<label>Quantity</label>
				<input type="text" class="input-small" name="quantity">
			</div>
			
			<div class="span1">
				<label>Price</label>
				<input type="text" class="input-small" name="price">
			</div>
			<div class="span1">
				<label>Availability</label>
				<input type="text" class="input-small" name="availability">
			</div>
			<div class="span1">
				<label>Sub Total</label>
				<input type="text" class="input-small" name="subTotal">
			</div>
			<div class="span2">
				<label>Comment</label>
				<input type="text" class="input-large" name="comment">
				<button class="btn">Add</button>
			</div>	
			
			
		</form>
	</div>
	<div class="row-fluid">
		<form class="form-horizontal">
			
			<div class="row-fluid">
			    <table class="table">
                 <thead>  
                 <tr>  
                   <th>Line</th>  
                   <th>Product Code</th>
                     <th>Product Description</th>
                       <th>Quantity</th>
                         <th>Unit Price</th> 
                         <th>Disc Unit Price</th >
                          <th>Discount Rate</th >
                           <th>Tax Rate</th >
                            <th>Line Total</th >
                             <th>Margin</th >
                              <th>Comments</th >
                              <th>Delete</th>  
                     
                 </tr>  
              </thead>  
             <tbody>  
              <tr>  
                <td>01</td>  
                   <td>CV001</td>  
                   <td>Deepak </td> 
                    <td>INR </td> 
                     <td>www.myCustomer.com </td> 
                      <td>9241415856 </td> 
                       <td>Action </td> 
                       <td>01</td>  
                   <td>CV001</td>  
                   <td>Deepak </td> 
                    <td>INR </td> 
                     <td>www.myCustomer.com </td> 
                
            </tr>  
          <tr>  
               <td>02</td>  
                   <td>CV002</td>  
                   <td>Gurpreet </td> 
                    <td>INR </td> 
                     <td>www.myCustomer.com </td> 
                      <td>9241415856 </td>
                      <td>01</td>  
                   <td>CV001</td>  
                   <td>Deepak </td> 
                    <td>INR </td> 
                     <td>www.myCustomer.com </td>  
                       <td>Action </td>    
          </tr>  
           
        </tbody>  
      </table>
			</div>
			    <div class="pagination">
    <ul>
    <li><a href="#">Prev</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">Next</a></li>
    </ul>
    </div>
		</form>	
	</div>
	
        
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addInvoice.js"></script>
	<script>
		$(function(){
			new defysope.addinvoice.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>