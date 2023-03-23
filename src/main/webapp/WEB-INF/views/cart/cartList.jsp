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
			<span class = "d-flex mt-2 fs-3 fw-bold">장바구니</span>
			<div class = "container d-flex col-md-12 justify-content-end">
				<a href="#" class = "btn btn-outline-dark btn-sm my-2 mx-1">선택삭제</a>
			</div>
			<hr class = "event_hr col-md-12">
			<div class="table-responsive">
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
							<td class = "col-md-3">
								<img src="${contextPath}/resources/image/package/pckItem01.jpg" width="60%">
								<span class="badge badge-light" style = "font-size : 15px; color : black; border : 1px solid grey;" >패키지</span>
							</td>
							<td class = "col-md-5">
								<p class = "fs-5 fw-bolder">[제주에어텔/프리미엄5성급] 항공+그랜드하얏트호텔+조식뷔페 포함 2박3일</p>
								<br>
								<small class="smallCaption text-secondary"><br>출발기간 : 2023.03.22 ~ 2023.03.25</small>
								<small class="smallCaption text-secondary"><br>예약인원 : 2명</small>
							</td>
							<td class = "col-md-2"><p class = "fs-5">529,000<small class="smallCaption text-secondary"> 원</small></p></td>
							<td class = "col"><button class = "btn btn-warning btn-sm" onclick="location.href='${contextPath}/order/order.do'">즉시예약</button></td>
							<td class = "col"><a href="#"><img src = "${contextPath}/resources/image/x.png"></a></td>
						</tr>
						<tr>
							<th scope="row"><input type = "checkbox" /></th>
							<td class = "col-md-3">
								<img src="${contextPath}/resources/image/package/pckItem02.jpg" width="60%">
								<span class="badge badge-light" style = "font-size : 15px; color : black; border : 1px solid grey;" >패키지</span>
							</td>
							<td class = "col-md-5">
								<p class = "fs-5 fw-bolder">[해양리조트/표선위치] 항공+해비치리조트+렌트카3일</p>
								<br>
								<small class="smallCaption text-secondary"><br>출발기간 : 2023.03.22 ~ 2023.03.25</small>
								<small class="smallCaption text-secondary"><br>예약인원 : 2명</small>
							</td>
							<td class = "col-md-2"><p class = "fs-5">399,000<small class="smallCaption text-secondary"> 원</small></p></td>
							<td class = "col"><button class = "btn btn-warning btn-sm" onclick="location.href='${contextPath}/order/order.do'">즉시예약</button></td>
							<td class = "col"><a href="#"><img src = "${contextPath}/resources/image/x.png"></a></td>
						</tr>
					</tbody>
				</table>
				<div class = "container d-flex col-md-12 justify-content-end">
					<button class = "btn btn-warning btn-md" onclick="location.href='${contextPath}/order/order.do'">예약하기</button>
				</div>
			</div>
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