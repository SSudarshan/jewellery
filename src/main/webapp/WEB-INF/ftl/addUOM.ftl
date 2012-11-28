<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
  <div class="inner-col" id ="mainDiv">
     <div>
        <h3>Add UOM</h3>
    </div>
    <div class="row-fluid">
		<div class="span12">
			<table class="table">
				<tr>
					<td class="td-10">UOM</td>
					<td class="td-15"><input type="text" class="input-large" name="unitOfMeasurementName" id="unitOfMeasurementName" data-id="0"/></td>
					<td><span class="btn btn-primary saveUOMBtn" style="vertical-align:top;"> Add UOM</span>
				</tr>
			</table>
		</div>
    </div>
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-bordered uomList" name="uomList">
    			<tr>
    				<td class="center">UOM</td>
    				<td class="center td-5">Edit</td>
    				<td class="center td-5">Delete</td>
    			</tr>
    			<#if uomList?exists>
    			<#list uomList as uom>
    			<tr class="row_${uom.id}">
    				<td>${uom.unitOfMeasure}</td>
    				
    				<td class="center td-5"><span class="btn btn-success editUOM" data-id="${uom.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteUOM" data-id="${uom.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
</div>
<@macro.showFooter>
<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/unitOfMeasurement.js"></script>
	<script>
		$(function(){
			new defysope.unitOfMeasurement.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>