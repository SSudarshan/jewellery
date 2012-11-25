<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader>
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>View Customer</h3>
    </div>
	<div class="row-fluid">
		<form class="form-horizontal">
			<div class="span6">
				<table class="table">
					
					<tr>
						<td class="td-25"><label>Customer Name</lable></td>
						<td><select name="srchCustName" class="input-medium">
								<option value="0">Select Customer</option> 
							</select></td>
						<td> <button class="btn">Search</button></td>
					</tr>
				</table>
			</div>
			<div class="row-fluid">
			    <table class="table">  
                 <thead>  
                 <tr>  
                   <th>Sno</th>  
                   <th>Customer Code</th>
                     <th>Customer Name</th>
                       <th>Currency</th>
                         <th>Website</th> 
                         <th>Phone</th 
                   <th>Action</th>  
                     
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
                
            </tr>  
          <tr>  
               <td>02</td>  
                   <td>CV002</td>  
                   <td>Gurpreet </td> 
                    <td>INR </td> 
                     <td>www.myCustomer.com </td> 
                      <td>9241415856 </td> 
                       <td>Action </td>    
          </tr>  
           
        </tbody>  
      </table>  
			</div>
			
			
		</form>	
	</div>
	
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/customerType.js"></script>
	<script>
		$(function(){
			new defysope.customertype.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>