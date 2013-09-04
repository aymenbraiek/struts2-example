<%@taglib prefix="s" uri="/struts-tags" %>

<div class="page-header">
	<h1><s:text name="new_"><s:param><s:text name="provider" /></s:param></s:text></h1>
</div>

<s:form method="post" action="%{#request.contextPath}/providers" cssClass="form-horizontal" theme="simple">
    <jsp:include page="form.jsp" />
    <div class="form-actions">
        <s:submit cssClass="btn btn-primary" value="%{getText('create')}"/>
    </div>
</s:form>
   
<a href="<s:url action="/providers" />" class="btn btn-info">
	<i class="icon icon-arrow-left"></i> <s:text name="back_"><s:param><s:text name="providers" /></s:param></s:text>
</a>
	