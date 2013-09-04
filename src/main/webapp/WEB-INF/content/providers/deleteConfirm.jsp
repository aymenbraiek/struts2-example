<%@taglib prefix="s" uri="/struts-tags" %>


<div class="page-header">
 <h1><s:text name="delete_"><s:param><s:text name="providers" /></s:param></s:text></h1>
</div>

<form action="../${id}?_method=DELETE" method="post">
	<p>
	   	<s:text name="are_you_sure_you_want_delete_" >
    		<s:param><s:text name="provider" /></s:param>
    		<s:param>${name}</s:param>
    	</s:text>
	</p>
	<div class="btn-group">
	    <input type="submit" value="<s:text name="delete" />" class="btn btn-danger" />
	    <input type="button" value="<s:text name="cancel" />" class="btn btn-success" onclick="window.location.href = '../../providers'" />
	</div>
</form>
<br />
<a href="${pageContext.request.contextPath}/providers" class="btn btn-info">
 	<i class="icon icon-arrow-left"></i> <s:text name="back_"><s:param><s:text name="providers" /></s:param></s:text>
</a>