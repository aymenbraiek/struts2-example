<%@taglib prefix="s" uri="/struts-tags" %>

<div class="page-header">
	<h1><s:text name="providers" /></h1>
</div>

<s:actionmessage  cssClass="alert alert-error"/>

<table class="table table-striped table-bordered">
    <tr>
        <th><s:text name="id" /></th>
        <th><s:text name="name" /></th>
        <th><s:text name="actions" /></th>
    </tr>
    <s:iterator value="model">
    <tr>
        <td>${id}</td>
        <td><s:property value="name"/></td>
        <td>
            <div class="btn-group">
                <s:a href="providers/%{id}" cssClass="btn" title="%{getText('view')}"><i class="icon icon-eye-open"></i></s:a>
                <s:a href="providers/%{id}/edit" cssClass="btn" title="%{getText('edit')}"><i class="icon icon-edit"></i></s:a>
                <s:a href="providers/%{id}/deleteConfirm" cssClass="btn btn-danger" title="%{getText('delete')}"><i class="icon icon-trash"></i></s:a>
            </div>
       </td>
    </tr>
    </s:iterator>
</table>
<a href="providers/new" class="btn btn-primary">
	<i class="icon icon-file"></i> <s:text name="new_"><s:param><s:text name="provider" /></s:param></s:text> 
</a>
	