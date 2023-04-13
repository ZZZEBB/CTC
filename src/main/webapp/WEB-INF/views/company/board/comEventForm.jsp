<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>사업체 이벤트 게시물 등록페이지</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
	<div class = "container">
		<nav class="navbar bg-light" style="background-color: #00aff0;">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">
					<img src="${contextPath}/resources/image/booking.png" alt="Logo" width="20%" class="align-text-top">
					예약 관리
				</a>
				<a class="navbar-brand" href="#">
					<img src="${contextPath}/resources/image/goods.png" alt="Logo" width="30%" class="d-inline-block align-text-top">
					상품 관리
				</a>
				<a class="navbar-brand" href="#">
					<img src="${contextPath}/resources/image/event.png" alt="Logo" width="30%" class="d-inline-block align-text-top">
					이벤트 관리
				</a>
				<a class="navbar-brand" href="#">
					<img src="${contextPath}/resources/image/review.png" alt="Logo" width="30%" class="d-inline-block align-text-top">
					후기 관리
				</a>
				<a class="navbar-brand" href="#">
					<img src="${contextPath}/resources/image/qna.png" alt="Logo" width="30%" class="d-inline-block align-text-top">
					문의 관리
				</a>
			</div>
		</nav>
	</div>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>