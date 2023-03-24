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
   <title>항공권 예약/결제</title>
   <!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
<div class = "container">	
	<div class = "d-flex col-md-9 justify-content-between align-item-center mt-4">
		<h4>항공권 예약하기</h4>
		<span><span style = "color : #0070c0; font-size : 18px;">예약정보확인</span> - 옵션정보/약관결제 - 결제완료</span>
	</div>
	<hr>
	<div class = "d-flex">
		<div class = "col-md-6">
			<table class ="table caption-top table table-bordered">
				<caption class = "fs-5">세인트존스 호텔</caption>
				<tr>
					<th class="table-active">도시</th>
					<td>강릉시</td>
				</tr>
				<tr>
					<th class="table-active">체크인/체크아웃</th>
					<td>2023.04.11 ~ 2023.04.12 * 1박</td>
				</tr>
				<tr>
					<th class="table-active">객실1 정보</th>
					<td>슈피리어 헐리우드 트윈룸, 노오션뷰 * 성인 2명</td>
				</tr>
			</table>
		</div>
		<div class = "col-md-4">
			<table class ="table table-sm table-secondary caption-top">
				<caption class = "fs-5">결제 정보</caption>
				<tbody>
					<tr>
						<th>최종 결제 금액</th>
						<td>성인 2 / 아동 0</td>
					</tr>
					<tr>
						<th></th>
						<td>108,900 원<span class = "smallCaption text-secondary"><br>마일리지 108 적립</span></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<th>총 상품 금액</th>
						<td>108,900 원</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
	<div class = "row col-md-6">
		<table class ="table caption-top table table-bordered">
			<caption class = "fs-5">투숙자 정보</caption>
			<caption class = "fs-6">객실 1 / 성인 1</caption>
				<tr>
					<th class="table-active">성명(한글)</th>
					<td colspan="4"><input type = "text" value = "장은빈" placeholder="장은빈"></td>
				</tr>
				<tr>
					<th class="table-active">생년월일</th>
					<td><input type = "date" value = "19980901" placeholder="19980901"></td>
					<th class="table-active">성별</th>
					<td><input type = "radio" value = "남성">남성<input type = "radio" value = "여성">여성</td>
				</tr>
				<tr>
					<th class="table-active">연락처</th>
					<td><input type = "tel"></td>
					<th class="table-active">이메일</th>
					<td><input type = "email" value = "dmsqls901@kakao.com" placeholder="dmsqls901@kakao.com"></td>
				</tr>
		</table>
	</div>
	<div class = "container col-md-6 d-flex">
		<a class = "btn btn-primary btn-lg justify-content-center" href = "#">다음단계</a>
	</div>
</div>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>