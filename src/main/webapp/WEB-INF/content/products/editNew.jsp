<%@taglib prefix="s" uri="/struts-tags" %>

<div class="page-header">
	<h1><s:text name="new_"><s:param><s:text name="product" /></s:param></s:text></h1>
</div>

<s:form method="post" action="%{#request.contextPath}/products" cssClass="form-horizontal" theme="simple">
    <jsp:include page="form.jsp" />
    <div class="form-actions">
        <s:submit cssClass="btn btn-primary" value="%{getText('create')}"/>
    </div>
</s:form>
   
<a href="${pageContext.request.contextPath}/products" class="btn btn-info">
 	<i class="icon icon-arrow-left"></i> <s:text name="back_"><s:param><s:text name="products" /></s:param></s:text>
</a>