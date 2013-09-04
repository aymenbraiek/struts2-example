<%@taglib prefix="s" uri="/struts-tags" %>

<s:set var="error" value="hasFieldErrors() && fieldErrors.containsKey('name')" />
<div class="control-group<s:if test="#error"> error</s:if>">
    <label class="control-label" for="nome"><s:text name="name" /> *</label>
    <div class="controls">
        <s:textfield id="name" name="name" size="255"/>
        <s:if test="#error">
			<s:iterator value="%{fieldErrors.get('name')}" var="error">
				<span class="help-inline"><s:property value="#error"/></span>
			</s:iterator>
		</s:if>
    </div>
</div>

<s:set var="error" value="hasFieldErrors() && fieldErrors.containsKey('price')" />
<div class="control-group<s:if test="#error"> error</s:if>">
    <label class="control-label" for="price"><s:text name="price" /> *</label>
    <div class="controls">
        <s:textfield id="price" name="price" data-component-type="decimal" />
		<s:if test="#error">
			<s:iterator value="%{fieldErrors.get('price')}" var="error">
				<span class="help-inline"><s:property value="#error"/></span>
			</s:iterator>
		</s:if>
    </div>
</div>

<s:set var="error" value="hasFieldErrors() && fieldErrors.containsKey('provider.id')" />
<div class="control-group<s:if test="#error"> error</s:if>">
    <label class="control-label" for="nome"><s:text name="provider" /> *</label>
    <div class="controls">
        <s:select list="providers" listValue="name" listKey="id" listTitle="name" id="provider.id" name="provider.id" />
        <s:if test="#error">
			<s:iterator value="%{fieldErrors.get('provider.id')}" var="error">
				<span class="help-inline"><s:property value="#error"/></span>
			</s:iterator>
		</s:if>
    </div>
</div>