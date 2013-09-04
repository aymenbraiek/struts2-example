<%@taglib prefix="s" uri="/struts-tags" %>

<div class="page-header">
 	<h1><s:text name="delete_"><s:param><s:text name="product" /></s:param></s:text></h1>
</div>

<form action="../${id}?_method=DELETE" method="post">
    <p>
    	<s:text name="are_you_sure_you_want_delete_" >
    		<s:param><s:text name="product" /></s:param>
    		<s:param>${name}</s:param>
    	</s:text>
    </p>
    <div class="btn-group">
        <input type="submit" value="<s:text name="delete" />" class="btn btn-danger" />
	    <input type="button" value="<s:text name="cancel" />" class="btn btn-success" onclick="window.location.href = '../../products'" />
    </div>
   </form>
<br />
<a href="${pageContext.request.contextPath}/products" class="btn btn-info">
 	<i class="icon icon-arrow-left"></i> <s:text name="back_"><s:param><s:text name="products" /></s:param></s:text>
</a>
	