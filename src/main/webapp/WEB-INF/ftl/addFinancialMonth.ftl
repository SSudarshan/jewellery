<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="container">  
<ul class="thumbnails">  
        <li class="span2">  
          <div class="thumbnail">  
            <img src="shoes1.jpg" alt="160x120" style="width: 160px; height: 120px;">  
            <label for="name" class="control-label">Name</label>
            <div class="caption">  
              <h5>Product detail</h5>  
               <label for="name" class="control-label">Name</label>
            </div>  
          </div>  
        </li>  
        <li class="span2">  
          <div class="thumbnail">  
            <img src="shoes2.jpg" alt="160x120" style="width: 160px; height: 120px;">  
            <label for="name" class="control-label">Name</label>
            <div class="caption">  
              <h5>Product detail</h5>  
             Here place Jan2012
            </div>  
          </div>  
        </li> 
         
      </ul>  
  
      
  
    </div> <!-- /container -->  
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addRole.js"></script>
	<script>
		$(function(){
			new defysope.addRole.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
