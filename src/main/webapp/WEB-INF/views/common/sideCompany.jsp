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
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<style>
</style>
</head>
<body>
	<h1>hello</h1>
	<!-- 사업체 사이드바 -->
	<c:choose>
			<c:when test="${side_menu =='reservationManage_mode' }">
				<a href="${contextPath}/admin/goods/adminGoodsMain.do"><h4>예약관리</h4></a>
			</c:when>
			<c:when test="${side_menu =='goodsManage_mode' }">
				<a href="${contextPath}/admin/goods/adminGoodsMain.do"><h4>상품 관리</h4></a>
			</c:when>
			<c:when test="${side_menu =='eventManage_mode' }">
				<a href="${contextPath}/admin/goods/adminGoodsMain.do">이벤트 관리<h4></h4></a>
			</c:when>
			<c:when test="${side_menu =='reviewManage_mode' }">
				<a href="${contextPath}/admin/goods/adminGoodsMain.do"><h4>후기 관리</h4></a>
			</c:when>
			<c:when test="${side_menu =='qnaManage_mode' }">
				<ul>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">문의 내역 관리</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">답글 내역 관리</a></li>
				</ul>
			</c:when>
			<c:when test="${side_menu =='salesManage_mode' }">
				<a href="${contextPath}/admin/goods/adminGoodsMain.do"><h4>매출 관리</h4></a>
			</c:when>
	</c:choose>
	
</body>
</html>