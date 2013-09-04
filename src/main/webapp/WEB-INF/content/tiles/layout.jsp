<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<tiles:importAttribute name="title" scope="request"/>

<!DOCTYPE html>

<html lang="pt-BR">
	<head>
		<title><tiles:getAsString name="title"/></title>
		<tiles:insertAttribute name="header"/>
	</head>
	<body>
	    <tiles:insertAttribute name="navigation"/>
	    <div class="container-fluid">
	    	<div class="row-fluid">
	    		<tiles:insertAttribute name="content"/>
	    	</div>
	    </div>
	    <tiles:insertAttribute name="footer"/>
	</body>
</html>
	
