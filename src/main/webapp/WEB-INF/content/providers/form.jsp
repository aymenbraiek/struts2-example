<%@taglib prefix="s" uri="/struts-tags" %>

<s:set var="error" value="hasFieldErrors() && fieldErrors.containsKey('name')" />
<div class="control-group<s:if test="#error"> error</s:if>">
    <label class="control-label" for="name"><s:text name="name" /> *</label>
    <div class="controls">
        <s:textfield id="name" name="name" size="255"/>
        <s:if test="#error">
			<s:iterator value="%{fieldErrors.get('name')}" var="error">
				<span class="help-inline"><s:property value="#error"/></span>
			</s:iterator>
		</s:if>
    </div>
</div>