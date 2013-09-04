<%@taglib prefix="s" uri="/struts-tags" %>

<div class="page-header">
	<h1><s:text name="provider" /></h1>
</div>

<s:form method="post" action="%{#request.contextPath}/providers/%{id}" cssClass="form-horizontal" theme="simple">
    <s:hidden name="_method" value="put" />

    <jsp:include page="form.jsp"/>

    <div class="form-actions">
        <s:submit cssClass="btn btn-primary" value="%{getText('update')}"/>
    </div>
</s:form>
  
<a href="${pageContext.request.contextPath}/providers" class="btn btn-info">
	<i class="icon icon-arrow-left"></i> <s:text name="back_"><s:param><s:text name="providers" /></s:param></s:text>
</a>
	