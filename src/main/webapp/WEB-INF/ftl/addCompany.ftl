<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
<form  name="companyForm" class="companyForm">
	<div>
        <h3>Company Details</h3>
    </div>
    <div class="row-fluid">
		<div class="span6">
			<table class="table">
					
				<tr class="control-group">
					<td class="td-25">Company Name</td>
					<td ><input type="text" class="input-large" name="companyName" id="companyName" value="${company.companyName!''}"/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Trading Name</td>
					<td ><input type="text" class="input-large" name="tradingName" id="tradingName" value="${company.tradingName!''}"/></td>
					
				</tr>
				
				<tr class="control-group">
					<td class="td-25">Regd. Number</td>
					<td><input type="text" class="input-large" name="regdNumber" id="regdNumber" value="${company.regdNumber!''}/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Website</td>
					<td><input type="text" class="input-large" name="website" id="website"  value="${company.website!''}/></td>
				
				</tr>
				
				<tr class="control-group">
					<td class="td-25">Purchase Email</td>
					<td><input type="text" class="input-large" name="purchaseEmail" id="purchaseEmail" value="${company.purchaseEmail!''}/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Sales Email</td>
					<td><input type="text" class="input-large" name="salesEmail" id="salesEmail" value="${company.salesEmail!''}/></td>
				
				</tr>
				<tr class="control-group">
					<td class="td-25">Mobile</td>
					<td><input type="text" class="input-large" name="mobile" id="mobile" value="${company.mobile!''}/></td>
				
				</tr>
			</table>
		</div>
		<div class="span6">
			<table class="table">
				<tr class="control-group">
					<td class="td-25">Address1</td>
					<td><input type="text" class="input-large" name="address1" id="address1" value="${company.address1!''}/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Address2</td>
					<td><input type="text" class="input-large" name="address2" id="address2" value="${company.address2!''}/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">City</td>
					<td><input type="text" class="input-large" name="city" id="city" value="${company.city!''}/></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">State</td>
					<td><select name="state" class="input-medium" id="state" >
								<option value="">Select</option> 
								<#list states as state>
									<option value="${state.id}">${state.description}</option>
								</#list>
								
							</select></td>
				
				</tr>
				<tr class="control-group">
					<td class="td-25">Country</td>
					<td><select name="country" class="input-medium" id="country" >
								<option value="">Select</option> 
								<#list countryList as country>
									<option value="${country.id}">${country.description}</option>
								</#list>
						      </select></td>
					
				</tr>
				<tr class="control-group">
					<td class="td-25">Phone1</td>
					<td><input type="text" class="input-large" name="phone1" id="phone1" value="${company.phone1!''}/></td>
				
				</tr>
				<tr class="control-group">
					<td class="td-25">Phone2</td>
					<td><input type="text" class="input-large" name="phone2" id="phone2" value="${company.phone2!''}/></td>
				</tr>
			</table>
		</div>
		
		
    </div>
    <div class="span12">
		<span class="btn btn-primary addCompanyBtn" style="vertical-align:top;"> Add Company</span>
		</div>
   </form>
    
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addCompany.js"></script>
	<script>
		$(function(){
			new defysope.addcompany.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
