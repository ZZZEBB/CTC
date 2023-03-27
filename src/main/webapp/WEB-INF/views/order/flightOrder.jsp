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
   <title>국내항공 예약/결제</title>
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
			<h3>결제하기</h3>
			<span style = "color : #808080;"><span style="color: #0070c0; font-size: 18px;">예약하기</span> > 예약정보입력 > 결제완료</span>
		</div>
		<hr>
		<div class = "d-flex">
			<div class = "col-md-9">
				<h4>가는 항공편<span class = "fs-6 mx-3">서울 -> 제주 </span></h4>
				<div class = "border text-center align-middle">
					<div class = "d-flex">
						<div class = "col-md-1">
							<p>아시아나항공<br><span class = "smallCaption text-secondary">OZ0114</span></p>
						</div>
						<div class = "col-md-4">
							<p>
								<span class = "smallCaption text-secondary">2023.05.21(일)</span>
								14:05
								<span class = "smallCaption text-secondary">인천 국제공항 - 터미널 1</span>
							</p>
						</div>
						<div class = "col-md-2 text-center">
							<img src = "${contextPath}/resources/image/totheright.png" width="50%;">
							<p>1시간 45분</p>
						</div>
						<div class = "col-md-4">
							<p>
								<span class = "smallCaption text-secondary">2023.05.21(일)</span>
								15:50
								<span class = "smallCaption text-secondary">제주 국제공항 - 터미널 1</span>
							</p>
						</div>
						<div class = "col-md-1">
							<p>일반석</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 ms-3 fixed-top">
				<table class="table table-sm table-secondary caption-top">
				<caption class="fs-5">상품 결제 정보</caption>
					<tr>
						<th>결제예정금액</th>
						<td></td>
					</tr>
					<tr>
						<th></th>
						<td class = "text-end align-middle">
							<h3 style = "font-size : 18px; color : #0070c0;">0 원</h3>
							<br>
							<small class="smallCaption text-secondary">유류할증료/제세공과금 포함</small>
						</td>
					</tr>
					<tr>
						<th>총 상품금액</th>
						<td class = "text-end align-middle">
							0 원
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class = "row col-md-9">
			<h4>오는 항공편<span class = "fs-6 mx-3">제주 -> 서울 </span></h4>
			<div class = "border text-center align-middle">
				<div class = "d-flex">
					<div class = "col-md-1">
						<p>아시아나항공<br><span class = "smallCaption text-secondary">OZ1155</span></p>
					</div>
					<div class = "col-md-4">
						<p>
							<span class = "smallCaption text-secondary">2023.05.24(수)</span>
							20:40
							<span class = "smallCaption text-secondary">제주 국제공항 - 터미널 1</span>
						</p>
					</div>
					<div class = "col-md-2 text-center">
						<img src = "${contextPath}/resources/image/totheright.png" width="50%;">
						<p>1시간 45분</p>
					</div>
					<div class = "col-md-4">
						<p>
							<span class = "smallCaption text-secondary">2023.05.24(수)</span>
							22:25
							<span class = "smallCaption text-secondary">김포 국제공항 - 터미널 1</span>
						</p>
					</div>
					<div class = "col-md-1">
						<p>일반석</p>
					</div>
				</div>
			</div>
		</div>
		<div class = "row col-md-9 mt-3 p-2">
			<ol>
				<li>유류할증료/제세공과금은 항곻사 사정 및 환율변동에 의해 매일 변경되어 발권 당일 환율에 따라 적용됩니다.</li>
				<li>여행사 발권대행 수수료는 항공료에 포함되며, 항공권 예약, 상담, 발권 업무의 서비스를 탑승자에게 제공하고 서비스의 대가로 받는 취급수수료입니다.</li>
				<li>신용카드 결제 시 발권대행 수수료 금액은 항공권 결제 후 하나투어로 별도 승인됩니다.</li>
				<li>발권대행 수수료는 1,000원이 적용됩니다.(1인 기준, 성인/소아 적용)</li>
				<li>결제된 발권대행 수수료는 환불 되지 않습니다.</li>
			</ol>
		</div>
		<div class = "col-md-9 border p-3">
			<p class = "fw-bolder" style = "color : #000;">유의사항</p>
			<ol>
				<li>유류할증료/제세공과금은 항공사 사정 및 환율변동에 의해 매일 변경되며 발권 당일 환율에 따라 적용됩니다.</li>
				<li>항공권 취소수수료는 항공사마다 규정이 상이하므로, 해당운임의 요금규정을 반드시 확인하시기 바랍니다.</li>
				<li>환불소요기간은 항공사와의 확인 및 보고 절차 이외에 고객님의 결제방법(현금/카드)으로 인해 접수도니 날짜로부터 3~5일정도 소요됩니다.(항공사, 카드사별로 상이함)</li>
				<li>환불이 가능한 항공권일 경우 요금규정에 기재되어 있는 항공권 취소수수료 외에 항공업무대행수수료는 별도로 부과됩니다.</li>
				<li>천재지변으로 인한 결항으로 탑승을 못 하셨을 경우 환불 절차는 별도 요청하셔야 합니다.</li>
				<li>탑승이 완료된 항공권은 소급환불 및 카드 변경이 불가합니다.</li>
			</ol>
		</div>
		<div class = "col-md-9 text-center">
			<button class = "btn btn-link btn-md" onclick="location.href='#'">다음단계</button>
		</div>
	</div>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>