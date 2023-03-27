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
		<div class = "col-md-10">
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
			<ul class="nav nav-tabs">
				<li class="nav-item mt-3">
					<p class="nav-link active fw-bolder">예약자 연락처 및 개인정보</p>
				</li>
			</ul>
			<table class = "table table-center table table-bordered">
				<tr>
					<th>예약자</th>
					<td>장은빈</td>
					<th>이메일</th>
					<td><input class = "col-md-9" type = "text" value = "zzz@zzz.com"></td>
				</tr>
				<tr>
					<th>휴대전화</th>
					<td><input class = "col-md-9" type = "tel" value = "01012345678"></td>
					<th>생년월일</th>
					<td><input class = "col-md-9" type = "text" value = "990909"></td>
				</tr>
				<tr>
					<th>휴대전화확인</th>
					<td colspan="4">
						<input class = "col-md-4" type = "tel" value = "01012345678" placeholder="연락처를 입력해주세요.">
						<label>휴대전화 번호를 오입력 방지를 위해 다시 입력해주세요.</label>
					</td>
				</tr>
			</table>
			<ol>
				<li>예약자 정보는, 결항 또는 긴급상황 발생 시 즉시 연락이 가능해야 하며, 불가능한 경우 발생되는 불이익에 대해 당사는 책임지지 않사오니 유의하시어 정확히 입력바랍니다.</li>
				<li>예약자와 탑승자의 정보가 다를 경우, 탑승자의 연락가능한 전화번호와 이메일을 기입해주십시오.</li>
				<li>항공권 예매완료 후 가입하신 휴대폰번호/이메일로 항공권 예약내역이 발송됩니다.</li>
			</ol>
			<ul class="nav nav-tabs">
				<li class="nav-item mt-3">
					<p class="nav-link active fw-bolder">탑승자 연락처 및 개인정보</p>
				</li>
			</ul>
			<table class = "table table-center">
				<thead>	
					<tr>
						<th class = "col-md-1">여행자인원</th>
						<td colspan="4">
							<label>성인<input class = "col-md-2" type = "text" value = "1">명</label>
							<label>소아<span style = "font-size : 14px; color : #808080;">(만 2세~만13세 미만)</span><input class = "col-md-2" type = "text" value = "0">명</label>
							<label>유아<span style = "font-size : 14px; color : #808080;">(만 2세 미만)</span><input class = "col-md-2" type = "text" value = "0">명</label>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class = "col-md-1">예약 안내</th>
						<td class = "p-3">
							<p class = "fw-bolder" style = "color : #ff0000;">탑승자명 입력 시 유의사항</p>
							<ol>
								<li>탑승자명 기입 시 실제 탑승하는 사람의 신분증상 이름, 국적, 생년월일을 정확하게 기입하셔야 합니다.(시민권자/외국인 : 여권상의 영문성함, 내국인 : 한글성함)</li>
								<li>탑승자 이름과 신분증상의 이름이 다를경우 탑승이 거절될 수 있습니다.</li>
								<li>항공권은 타인에게 양도가 불가하며, 탑승자 이름 오기입시 수정이 불가하오니 작성 후 다시한번 확인하시기 바랍니다.</li>
								<li>모든 항공사는 정상운영을 기준으로 한 할인운임이 일부 제공되며, 신분할인과 이중으로 적용한 중복할인은 불가합니다.</li>
								<li class="text-decoration-underline" style = "color : #ff0000;">제주항공 동반보호자 선택시 국가유공상이자, 독립유공자, 장애인이 같은 예약번호 내에 있을 경우에만 동반자 할인 적용이 가능하오니 대상자 본인이 같은 예약번호 내에 있는지 확인하시어 동반보호자 할인 선택바랍니다.</li>
							</ol>
						</td>
					</tr>
				</tbody>
			</table>
			<table class = "table table-center">
				<thead class = "table-info">
					<tr>
						<th>[성인]성명</th>
						<td><label>성<input class = "col-md-2" type = "text" value = "1">명</label></td>
						<td><label>이름<input class = "col-md-2" type = "text" value = "1"><span> ex) 성:홍 / 이름:길동</span></label></td>
						<th>성별</th>
						<td>
							<select class="form-select form-select-sm" aria-label="sex">
								<option value="m">남자</option>
								<option value="w">여자</option>
							</select>
						</td>
					</tr>
				</thead>
			</table>
		</div>
	</div>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>