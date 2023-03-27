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
   <title>호텔 예약/결제</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<style>
	.nav-tabs > .nav-item > .nav-link {
		color : #fff !important;
		background-color : #00aff0 !important;
	}
	ol > li {
		list-style : inside;
	}
	ol {
		font-size : 14px;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="d-flex col-md-9 justify-content-between align-item-center mt-4">
			<h6>국내항공 <span style="color: #ff0000;" class = "fs-5 fw-bolder">실시간 예약</span></h6>
			<span style = "color : #808080;"><span style="color: #0070c0; font-size: 18px;">예약하기</span> > 결제하기 > 결제완료</span>
		</div>
		<div class = "row col-md-10">
			<ul class="nav nav-tabs">
				<li class="nav-item mt-3">
					<p class="nav-link active fw-bolder">내가 선택한 여정</p>
				</li>
			</ul>
			<table class = "table table-center text-center">
				<thead>	
					<tr>
						<th class = "col">구분</th>
						<th class = "col">항공권</th>
						<th class = "col">출발일</th>
						<th class = "col">도착일</th>
						<th class = "col">좌석등급</th>
						<th class = "col">요청좌석</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>가는항공</td>
						<td>제주항공 7C853편</td>
						<td>청주 03월 25일 (토) 18시 40분</td>
						<td>제주 03월 25일 (토) 19시 50분</td>
						<td>일반석</td>
						<td>1석</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td>오는항공</td>
						<td>제주항공 7C802편</td>
						<td>제주 03월 29일 (수) 09시 30분</td>
						<td>제주 03월 29일 (토) 10시 40분</td>
						<td>특가석</td>
						<td>1석</td>
					</tr>
				</tfoot>
			</table>
			<div class = "text-end">
				<h5>총 결제요금 <span class = "fs-4 fw-bold" style = "color : #ff0000;">140,100 원</span></h5>
			</div>
			<div class = "container border p-3">
				<p class = "fw-bolder" style = "color : #ff0000;">! 유의사항</p>
				<ol>
					<li>항공권 예약완료 후 즉시결제하지 않으시면 예약은 자동취소됩니다.</li>
					<li>상단의 선택하신 항공 여정을 다시 한번 확인해주시기 바랍니다.</li>
					<li>예약 후 이름/스케줄/항공사/인원 변경은 불가하며 취소 후 재예약하셔야 합니다.</li>
					<li>취소 후 재예약 시 좌석이 없을 수도 있으니, 가는편과 오는편의 시간을 정확히 확인해주시기 바랍니다.</li>
					<li>왕복 예약시 카드정보를 한번만 입력하셔도 됩니다. (승인은 가는편/오는편 각각 진행이 되므로 결제 후 정상승인여부를 꼭 확인해주시기 바랍니다.)</li>
					<li>결제 시 여행사 발권업무 대행수수료 1인당 편도 1,000원이 항공권 금액과 별도로 추가 승인됩니다.</li>
					<li>하단의 항공사 주의사항을 꼭 확인해주시기 바랍니다.</li>
					<li>항공권 결제는 신용/체크카드로만 결제가 가능합니다.(현금결제 불가)</li>
					<li>여행사 법인카드, 여행사 임직원카드는 사용불가하며, 문제발생 시 법적인 책임소지가 따릅니다.</li>
					<li>항공권은 항공사 사정 및 천재지변으로 인하여 시간변경 또는 결항될 수 있습니다.</li>
					<li>취소 시 여행사취소수수료 1인당 편도 1,000원이 부과될 수 있으며 취소수수료 추가결제 후 항공권 취소가 완료됩니다. (당일 취소시 취소수수료 면제)</li>
					<li>가는편 수하물 정보 : 무료위탁수하물 : 15KG, 기내수하물 : 10KG / 오는편 수하물 정보 : 무료위탁수하물 : 15KG, 기내수하물 : 10KG</li>
				</ol>
			</div>
		</div>
	</div>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>