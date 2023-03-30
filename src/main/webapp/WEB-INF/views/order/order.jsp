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
   <title>상품 예약/결제</title>
   <!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
	<div class = "container">	
		<div class = "d-flex col-md-9 justify-content-between align-item-center">
			<h4>예약하기</h4>
		</div>
		<hr>
		<div class="col-md-9">
			<table class="table caption-top table table-bordered">
				<caption class="fs-5">상품 정보</caption>
				<tr>
					<th class="col-md-2">구분</th>
					<th class="col-md-5">상품정보</th>
					<th class="col-md-2">상품금액</th>
					<th class="col-md-3">최종금액</th>
				</tr>
				<tr>
					<td>렌터카</td>
					<td>
						<p>
							<span class = "fw-bolder">[제주공항렌트카] 더 뉴 레이</span>
							휘발유 | 자차포함-고급자차
							2023.03.30 12:00 ~ 2023.03.31 12:00
						</p>
					</td>
					<td>62,000 원</td>
					<td>62,000 원</td>
				</tr>
			</table>
		</div>
		<form class="col-md-9">
			<div class="mt-3">
				<table class="table caption-top table table-bordered">
					<caption class="fs-5">예약자 정보</caption>
					<tr>
						<th class="table-active">이름</th>
						<td colspan="4"><input type="text" placeholder="이영민"></td>
					</tr>
					<tr>
						<th class="table-active">이메일</th>
						<td><input type="text" placeholder="zzz.zzz@com"></td>
					</tr>
					<tr>
						<th class="table-active">휴대폰</th>
						<td><input type="text" placeholder="010-1234-5678"></td>
					</tr>
				</table>
			</div>
			<div class="mt-3">
				<p class="fs-5 border-bottom">마일리지</p>
				<div class = "d-flex mt-1 align-middle p-4" style = "background-color : #f5f5f5;">
					<div class = "col-md-2 col align-self-center">
						<p>사용할 마일리지</p>
					</div>
					<div class = "col">
						<p>장은빈님 사용가능 마일리지 <span>0 원</span></p>
						<input type = "text" placeholder="1,000 이상 보유시 사용가능">
						<button type = "button" class = "btn btn btn-outline-dark btn-sm">모두 사용</button>
						<p style = "font-size : 12px;">
							- 마일리지는 1,000 이상부터 사용 가능하며 항공권은 100 단위로 사용 가능합니다.<br>
							- 마일리지 결제 후 항공권 환불 및 호텔 예약 취소 수수료는 마일리지로 차감이 불가하며 별도 입금 처리 또는 카드 결제가 필요합니다.<br>
							- 마일리지 차감 불가 항목 : ctc 항공 발권대행/환불 대행 수수료, 항공사 환불 수수료, 호텔 취소 수수료 등<br>
						</p>
					</div>
				</div>
			</div>
			<div class="mt-3">
				<p class="fs-5 border-bottom">결제수단</p>
				<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
  <label class="form-check-label" for="inlineRadio1">1</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
  <label class="form-check-label" for="inlineRadio2">2</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" disabled>
  <label class="form-check-label" for="inlineRadio3">3 (disabled)</label>
				</div>
			</div>
		</form>
	</div>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>