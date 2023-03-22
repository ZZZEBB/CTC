<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title" /></title>
<style>
   @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
</style>
</head>
<body>
	<div id="container">
		<div id = "header">
			<tiles:insertAttribute name="header" />
		</div>
		<div id ="sideCompany">
			<tiles:insertAttribute name="sideCompany" />
		</div>
		<div id="body">
			<tiles:insertAttribute name="body" />
		</div>
	</div>
</body>
</html>