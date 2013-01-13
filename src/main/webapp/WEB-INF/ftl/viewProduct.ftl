<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div id = "mainDiv" class="inner-col">
	<div class="row-fluid">
	    <div class="span12">
	        <h3>Product Customer</h3>
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
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/viewProduct.js"></script>
	<script>
		$(function(){
			new defysope.viewCustomer.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>