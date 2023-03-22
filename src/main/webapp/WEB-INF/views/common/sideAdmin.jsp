<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title><tiles:insertAttribute name="title" /></title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<style>
   @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
</style>
</head>
<body>
	<h1>hello</h1>
	<!-- 관리자 사이드바 -->
	<c:choose>
			<c:when test="${side_menu =='salesManage_mode' }">
				<a href="${contextPath}/admin/goods/adminGoodsMain.do"><h4>매출 관리</h4></a>
			</c:when>
			<c:when test="${side_menu =='goodsManage_mode' }">
				<ul>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">전체 상품 조회</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">호텔</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">렌트</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">항공</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">패키지</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">상품 승인</a></li>
				</ul>
			</c:when>
			<c:when test="${side_menu =='reservationManage_mode' }">
				<ul>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">전체 주문 조회</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">호텔</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">렌트</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">항공</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">패키지</a></li>
				</ul>
			</c:when>
			<c:when test="${side_menu =='memberManage_mode' }">
				<ul>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">회원 관리</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">사업체 관리</a></li>
				</ul>
			</c:when>
			<c:when test="${side_menu =='reviewManage_mode' }">
				<ul>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">문의 내역 관리</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">공지사항 관리</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">후기 관리</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">이벤트 관리</a></li>
					<li><a href="${contextPath}/mypage/listMyOrderHistory.do">사업체 이벤트 관리</a></li>
				</ul>
			</c:when>
	</c:choose>
</body>
</html>