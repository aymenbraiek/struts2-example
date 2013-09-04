<%@taglib prefix="s" uri="/struts-tags" %>

<div class="page-header">
    <h1>${name}</h1>
    
    <div class="row-fluid">
    	<h3 class="text-info"><s:text name="products" />:</h2>
	    <s:if test="%{products.empty}">
	    	<p><s:text name="no_product_registration" /></p>
	    </s:if>
	    <s:else>
		    <s:iterator value="%{products}">
		    	<div class="span2">
		    		<h4><s:property value="name"/></h3>
		    		<p><s:property value="price"/></p>
		    	</div>
		    </s:iterator>
	    </s:else>
    </div>
    
    <a href="${pageContext.request.contextPath}/providers" class="btn btn-info">
	 	<i class="icon icon-arrow-left"></i> <s:text name="back_"><s:param><s:text name="providers" /></s:param></s:text>
	</a>
</div>
	