<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Add Purchase</h3>
    </div>
	<div class="row-fluid">
		<form class="form-horizontal">
			<div class="span6">
				<table class="table">
					
					<tr>
						<td class="td-25"><label>Customer Name</lable></td>
						<td><input type="text" class="input-medium" name="custType"></td>
						<td> <button class="btn">Add</button></td>
					</tr>
				</table>
			</div>
			<div class="row-fluid">
			    <table class="table">  
                 <thead>  
                 <tr>  
                   <td>002</td>  
            <td>General</td>  
              <td>Action </td> 
                     
                 </tr>  
              </thead>  
             <tbody>  
              <tr>  
                <td>002</td>  
            <td>Regular</td>  
              <td>Action </td> 
                
            </tr>  
          <tr>  
            <td>003</td>  
            <td>Elite</td>  
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