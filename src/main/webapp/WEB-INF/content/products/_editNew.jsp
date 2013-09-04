<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags" %>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>New Order</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap-responsive.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">

	        <div class="page-header">
		        <h1>Novo Produto</h1>
	        </div>

	        <s:fielderror  cssClass="alert alert-error"/>

	        <s:form method="post" action="%{#request.contextPath}/products" cssClass="form-horizontal" theme="simple">
                <jsp:include page="form.jsp" />
                <div class="form-actions">
                    <s:submit cssClass="btn btn-primary"/>
                </div>
            </s:form>
	        <a href="${pageContext.request.contextPath}/products" class="btn btn-info">
		        <i class="icon icon-arrow-left"></i> Voltar aos Produtos
	        </a>
        </div><!--/row-->
    </div><!--/span-->
</div><!--/row-->
</body>
</html>
	