<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
   <head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>회사소개</title>
   <!-- CSS only -->
   <link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
   crossorigin="anonymous">
   <style>
   @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
   </style>
</head>
<body>
	<div class = "container">
		<div class="container">
			<h3 id="introicon d-flex align-items-end justify-content-center"><img id="icon" alt="intro_icon" src="${contextPath}/resources/image/company_bag.png" width="25px" height="25px">회사소개<img id="icon" alt="intro_icon" src="${contextPath}/resources/image/company_bag.png" width="25px" height="25px"></h3>
			<p id="introicon d-flex align-items-end justify-content-center">ConerToConer는 국내여행및 제주도여행 렌트 항공 패키지 서비스를 운영하는<br> 국내여행의 모든서비스를 제공하는 전문 업체입니다.</p>
		</div>
		<hr>
		<div class ="container p-3">
			<img id="introicon d-flex align-items-end justify-content-center" alt="회사이미지" src="${contextPath}/resources/image/company_front.jpg" width="70%" height="500px">
			<img id="introicon d-flex align-items-end justify-content-center" alt="회사이미지" src="${contextPath}/resources/image/company_main.jpg" width="70%" height="500px">
		</div>
	</div>
	<!-- 지도를 표시할 div 입니다 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2e253b59d2cc8f52b94e061355413a9e"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
	   center : new kakao.maps.LatLng(36.349242000000, 127.377693500000), // 지도의 중심좌표
	   level : 2
	// 지도의 확대 레벨
	};
	
	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption);
	</script>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>