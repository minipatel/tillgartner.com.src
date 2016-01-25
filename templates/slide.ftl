<#include "header_slide.ftl">

	<#include "menu_slide.ftl">
	
    <div style="background-color:white;padding-right:10px;padding-left:10px">
    
        <#if content.title??>
    	<div class="page-header">
    		<h1><#escape x as x?xml>${content.title}</#escape></h1>
    	</div>
        </#if>
        
    	<p>${content.body}</p>

	</div>

<#include "footer_slide.ftl">