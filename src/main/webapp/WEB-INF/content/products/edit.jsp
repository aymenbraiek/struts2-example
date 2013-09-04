<%@taglib prefix="s" uri="/struts-tags" %>

<div class="page-header">
	<h1><s:text name="product" /></h1>
</div>

<s:form method="post" action="%{#request.contextPath}/products/%{id}" cssClass="form-horizontal" theme="simple">
    <s:hidden name="_method" value="put" />

    <jsp:include page="form.jsp"/>

    <div class="form-actions">
        <s:submit cssClass="btn btn-primary" value="%{getText('update')}"/>
    </div>
</s:form>

<a href="<s:url action="/products" />" class="btn btn-info">
 	<i class="icon icon-arrow-left"></i> <s:text name="back_"><s:param><s:text name="products" /></s:param></s:text>
</a>