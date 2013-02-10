<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div id = "mainDiv" class="inner-col">
	<div class="row-fluid">
	    <div class="span12">
	        <h3>View Supplier</h3>
	    </div>
	</div>
	<div class="row-fluid">
		<div class="span12">
			
			<select name="Type" class="span2">
				<option value="0">Select Type</option>
				<option value="1">Product Supplier</option> 
				<option value="2">Smith Vendor</option> 
			</select>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span12">
			<table id="list2"></table> 
			<div id="pager2"></div>	
		</div>
	</div>
	
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/viewCustomer.js"></script>
	<script>
		$(function(){
			new defysope.viewCustomer.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>