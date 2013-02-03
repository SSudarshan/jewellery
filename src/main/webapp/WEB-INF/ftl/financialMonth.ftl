<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div style="margin-top:10px;" class="row-fluid">
		<div class="span8" id="month">
		</div>
	</div>				
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/financialMonth.js"></script>
	<script>
		$(function(){
			var finMonth = [];
			<#list finMonths as fin>
				var obj = {};
				obj['name'] = '${fin.name}'
				obj['monthId'] = '${fin.id}'
				finMonth.push(obj);
			</#list>
			new defysope.financialMonth.Main("#mainDiv", {'finMonth':finMonth
			});
		});
	</script>
</@macro.showFooter>