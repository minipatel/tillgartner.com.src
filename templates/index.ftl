<#include "header.ftl">
	
	<#include "menu.ftl">

    <div style="background-color:white;padding-right:10px;padding-left:10px">

        <#assign i = 0> 
    	<#list posts as post>
      		<#if (post.status == "published" && i < 3)>
                <#assign i = i + 1>
      			<a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
      			<p>${post.date?string("dd MMMM yyyy")}</p>
    			<#if post.category??>
    			Category: <button type="button" class="btn btn-primary">${post.category}</button>
    			</#if>
      			<p>${post.body}</p>
      		</#if>
      	</#list>
	
    	<hr />
	</div>
	
	<p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">