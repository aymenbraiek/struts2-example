<%@taglib prefix="s" uri="/struts-tags" %>

<div class="page-header">
    <h1>${name}</h1>
    <table class="table table-striped">
        <tr>
            <td class="span3"><s:text name="price" /></td>
            <td class="span9"><s:text name="format.numberCurrency"><s:param><s:property value="price"/></s:param></s:text></td>
        </tr>
        <tr>
            <td class="span3"><s:text name="provider" /></td>
            <td class="span9"><s:property value="provider.name"/></td>
        </tr>
    </table>
    <a href="${pageContext.request.contextPath}/products" class="btn btn-info">
	 	<i class="icon icon-arrow-left"></i> <s:text name="back_"><s:param><s:text name="products" /></s:param></s:text>
	</a>
</div>	