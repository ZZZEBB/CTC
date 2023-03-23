<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 사이드 레이아웃</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<style>
</style>
</head>
<body>
	<h1>hello</h1>
<!-- 고객센터 사이드바 -->
	<!-- <c:choose>
		<c:when test="${side_menu=='customercenter_mode' }">
		   <li>
				<H3>고객센터</H3>
				<ul>
					<li><a href="${contextPath}/#">1:1 문의</a></li>
					<li><a href="${contextPath}/#">FAQ</a></li>
					<li><a href="${contextPath}/#">공지사항</a></li>
				</ul>
			</li>
		</c:when> -->
	<!-- 마이페이지 사이드바 -->
		<!-- <c:when test="${side_menu=='my_page' }">
			<li>
				<h3>마이페이지</h3>
				<ul>
					<li><a href="${contextPath}/mypage/myInfo.do">나의 회원정보</a></li>
					<li><a href="#">마일리지 확인</a></li>
					<li><a href="#">나의 여행 후기</a></li>
					<li><a href="#">나의 문의 내역</a></li>
					<li><a href="#">예약 조회</a></li>
				</ul>
			</li>
		</c:when>
	</c:choose>	-->
</body>
</html>