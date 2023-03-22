<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script>
   </script>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>장바구니</title>
   <!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"></script>

</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<p class = "col-md-9 mt-2 fs-3 fw-bold">장바구니</p>
			<div class = "d-flex col-md-9 justify-content-between">
				<a href="#" class = "btn btn-outline-dark btn-sm my-2 mx-1">선택삭제</a>
			</div>
			<hr class = "event_hr col-md-12">
			<table class="table table-hover">
				<thead>
					<tr>
					<th scope="col"><input type = "checkbox"></th>
					<th scope="col">구분</th>
					<th scope="col">상품정보</th>
					<th scope="col">금액</th>
					<th scope="col">예약</th>
					<th scope="col">삭제</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row"><input type = "checkbox" /></th>
						<td>
							<img src="${contextPath}/resources/image/package/pckItem01.jpg" width="50%">
							패키지
						</td>
						<td>
							<span class = "fs-5 fw-bolder">[제주에어텔/프리미엄5성급] 항공+그랜드하얏트호텔+조식뷔페 포함 2박3일</span>
							<br>
							<small class="smallCaption text-secondary"><br>출발기간2023.03 ~ 2023.06</small>
						</td>
						<td>529,000원~</td>
						<td><button class = "btn btn-warning btn-sm">즉시예약</button></td>
						<td><img src = "${contextPath}/resources/image/x.png"></td>
					</tr>
					<tr>
						<th scope="row"><input type = "checkbox" /></th>
						<td>
							<img src="${contextPath}/resources/image/package/pckItem02.jpg" width="50%">
							패키지
						</td>
						<td>
							<span class = "fs-5 fw-bolder">[해양리조트/표선위치] 항공+해비치리조트+렌트카3일</span>
							<br>
							<small class="smallCaption text-secondary"><br>출발기간2023.03 ~ 2023.04</small>
						</td>
						<td>399,000원</td>
						<td><button class = "btn btn-warning btn-sm">즉시예약</button></td>
						<td><img src = "${contextPath}/resources/image/x.png"></td>
					</tr>
					<tr>
						<th scope="row"><input type = "checkbox" /></th>
						<td>
							<img src="${contextPath}/resources/image/package/pckItem03.jpg" width="50%">
							패키지
						</td>
						<td>
							<span class = "fs-5 fw-bolder">[제주에어텔/프리미엄5성급] 항공+그랜드하얏트호텔+조식뷔페 포함 2박3일</span>
							<br>
							<small class="smallCaption text-secondary"><br>출발기간2023.03 ~ 2023.06</small>
						</td>
						<td>529,000원~</td>
						<td><button class = "btn btn-warning btn-sm">즉시예약</button></td>
						<td><img src = "${contextPath}/resources/image/x.png"></td>
					</tr>
				</tbody>
			</table>
		<button class = "btn btn-warning justify-content-end btn-sm">예약하기</button>
		</div>
	</div>
			
			<!-- <c:choose>
				<c:when test="${empty eventLists}">
					<h3>장바구니에 추가된 상품이 없습니다.</h3>
				</c:when>
				<c:otherwise>
					<c:forEach var = "event" items = "${eventLists}">
						
					</c:forEach>
				</c:otherwise>
			</c:choose> -->

<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>