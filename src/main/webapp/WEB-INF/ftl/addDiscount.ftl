<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Add Discount</h3>
    </div>
    <div class="row-fluid">
		<div class="span12">
			<table class="table">
				<tr>
					<td class="td-33">Discount Scheme</td>
					<td><input type="text" class="input-large" name="discountScheme" id="discountScheme" data-id="0"/></td>
					
				</tr>
				
				<tr>
					<td class="td-33">Discount (%)</td>
					<td ><input type="text" class="input-large" name="discountRate" id="discountRate" data-id="1"/></td>
					
				</tr>
				<tr><td><span class="btn btn-primary saveDiscBtn" style="vertical-align:top;"> Add Discount</span></tr>
			</table>
		</div>
    </div>
    
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-striped table-bordered table-ds discountList" name="discountList" style="width:50%;">
    		 <thead>
    			<tr>
    				<th class="center">Scheme</th>
    				
    				<th class="center">Discount(%)</th>
    				<th class="center td-5">Edit</th>
    				<th class="center td-5">Delete</th>
    			</tr>
    			
    		</thead>	
    			<#if discountList ? exists>
    			<#list discountList as disc>
    			<tr class="row_${disc.id}">
    				<td>${disc.scheme}</td>
    				<td>${disc.discountpercent}</td>
    				<td class="center td-5"><span class="btn btn-success editDiscount" data-id="${disc.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteDiscount" data-id="${disc.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addDiscount.js"></script>
	<script>
		$(function(){
			new defysope.addDiscount.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
