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
   <title>국내항공 예약</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<style>
	body {
		padding : 0;
		margin : 0;
	}
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
	#payPrice {
	    transform: translate(-90%,-70%)!important;
	}
</style>
<script>
	var myModal = document.getElementById('myModal')
	var myInput = document.getElementById('myInput')
	
	myModal.addEventListener('shown.bs.modal', function () {
	  myInput.focus()
	})
</script>
</head>
<body>
	<div class="container">
		<div class="d-flex col-md-9 justify-content-between align-item-center mt-4">
			<h3>결제하기</h3>
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
			<div class="col-md-3 ms-3">
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
		<div class = "d-flex">
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
			<div class="col-md-3 ms-3">
				<table class="table table-sm table-secondary caption-top">
				<caption class="fs-5">인원 별 운임 정보</caption>
					<tr>
							<th>성인 1명</th>
							<td>0 원</td>
						</tr>
						<tr>
							<th>소아 1명</th>
							<td>0 원</td>
						</tr>
						<tr>
							<th>유아 1명</th>
							<td>0 원</td>
						</tr>
				</table>
				<!-- 모달창 버튼 -->
				<button type="button" class="btn btn-primary btn-lg" data-bs-toggle="modal" data-bs-target="#exampleModal">
					  0원 결제하기
				</button>
			</div>
			<!-- 모달 -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered modal-lg">
					<div class="modal-content p-3">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">결제정보 최종 확인</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<p>
								결제요청 이후에는 패널티가 발생 될 수 있으니 반드시 영문명과 일정을 확인하시기 바랍니다.<br>
								결제를 진행하시겠습니까?
							</p>
							<ul  style = "color : #808080; font-size : 0.8em;">
								<li>평일 업무시간 (09:00~17:00) 이외에는 취소, 변경, 환불, 상담 등의 업무처리가 불가합니다.</li>
								<li>결제 후 변경 및 취소 시 항공사의 규정에 따라 취소/변경 수수료가 부과되기에 구매하시는 항공권의 항공사 요금 규정 및 이용약관을 반드시 숙지하셔야 합니다.</li>
								<li>평일 업무시간 (09:00~17:00) 이후 결제 요청 시 확인이 필요한 일부 운임의 경우 영업일 내 처리되며 항공사 사정에 따라 기존 예약하신 요금이 인상되거나 항공권 발행이 불가할 수 있습니다.</li>
								<li>일부 항공권의 경우 당일취소가 불가능하고 정상업무시간에 환불로 접수되므로 결제 진행 시 신중하게 결제 부탁드립니다.</li>
							</ul>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">다시 확인하기</button>
							<button type="button" class="btn btn-primary">결제하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class = "row col-md-9 mt-3 p-2">
			<ol>
				<li>유류할증료/제세공과금은 항공사 사정 및 환율 변동에 의해 매일 변경되어 발권 당일 환율에 따라 적용됩니다.</li>
				<li>여행사 발권대행 수수료는 항공료에 포함되며, 항공권 예약, 상담, 발권 업무의 서비스를 탑승자에게 제공하고 서비스의 대가로 받는 취급 수수료입니다.</li>
				<li>신용카드 결제 시 발권대행 수수료 금액은 항공권 결제 후 하나투어로 별도 승인됩니다.</li>
				<li>발권대행 수수료는 1,000원이 적용됩니다.(1인 기준, 성인/소아 적용)</li>
				<li>결제된 발권대행 수수료는 환불 되지 않습니다.</li>
			</ol>
		</div>
		<form class="row">
			<div class="col-md-9">
				<table class="table caption-top table table-bordered">
					<caption class="fs-5">탑승자 정보</caption>
					<caption class="fs-6">탑승자 정보 1 (성인)</caption>
					<tr>
						<th class="table-active">성명(한글)</th>
						<td colspan="4"><input type="text" placeholder="성함을 입력해주세요."
							required></td>
					</tr>
					<tr>
						<th class="table-active">생년월일</th>
						<td><input type="text" placeholder="생년월일 8자리를 입력해주세요."
							required></td>
						<th class="table-active">성별</th>
						<td><input type="radio" id="man" name="gender" value="man"
							required /> <label for="man">남성</label> <input type="radio"
							id="woman" name="gender" value="woman" /> <label for="woman">여성</label>
						</td>
					</tr>
					<tr>
						<th class="table-active">연락처</th>
						<td><input type="tel"></td>
						<th class="table-active">이메일</th>
						<td><input type="email" placeholder="dmsqls901@kakao.com"
							required oninvalid="this.setCustomValidity('이메일을 입럭해주세요')"
							oninput="this.setCustomValidity('')"></td>
					</tr>
				</table>
			</div>
			<div class = "col-md-9 border p-3 mt-2">
				<p class = "fw-bolder" style = "color : #000;">유의사항</p>
				<ol>
					<li>유류할증료/제세공과금은 항공사 사정 및 환율 변동에 의해 매일 변경되며 발권 당일 환율에 따라 적용됩니다.</li>
					<li>항공권 취소수수료는 항공사마다 규정이 상이하므로, 해당 운임의 요금 규정을 반드시 확인하시기 바랍니다.</li>
					<li>환불 소요 기간은 항공사와의 확인 및 보고 절차 이외에 고객님의 결제방법(현금/카드)으로 인해 접수된 날짜로부터 3~5일 정도 소요됩니다.(항공사, 카드사별로 상이함)</li>
					<li>환불이 가능한 항공권일 경우 요금 규정에 기재되어 있는 항공권 취소수수료 외에 항공업무대행 수수료는 별도로 부과됩니다.</li>
					<li>천재지변으로 인한 결항으로 탑승을 못 하셨을 경우 환불 절차는 별도 요청하셔야 합니다.</li>
					<li>탑승이 완료된 항공권은 소급 환불 및 카드 변경이 불가합니다.</li>
				</ol>
			</div>
			<div class = "col-md-9 border p-3 mt-2">
				<p class = "fw-bolder" style = "color : #000;">이용안내</p>
				<ol>
					<li>연락처 오기재 시 불이익이 발생하지 않도록 즉시 연락 가능한 연락처 기재 부탁드립니다. 항공사 스케줄 변동 등의 사유로 불이익이 발생될 수 있으므로 이점 유의하시기 바랍니다.</li>
					<li>동일한 승객의 이중 예약, 가짜 성명 예약 시 항공권 구매 여부와 관계없이 모든 예약이 취소될 수 있으며, 항공사로부터 수수료가 부과될 수 있으니 주의 바랍니다.</li>
					<li>예약 후 성명 변경은 불가하오니 실제 탑승하실 분의 성함을 입력하여 주십시오.</li>
					<li>영문 성/영문 이름은 영문 스펠링만 입력해 주십시오.</li>
					<li>승객 구분은 탑승일의 나이 기준으로 적용되며, 소아는 도착일 기준 만 2세~12세 미만, 유아는 만 2세 미만의 경우에만 적용이 가능한 항공사도 있어 요금이 변경될 수 있습니다</li>
					<li>유아 요금은 좌석이 제공되지 않습니다. 좌석이 필요한 경우 소아 요금으로 예약하시기 바랍니다.</li>
					<li>보호자 없이 혼자 여행하는 만 12세~17세 미만 청소년의 경우 운송 항공사에 따라 탑승이 제한될 수 있습니다.(항공권 구매 전 확인 필수)</li>
					<li>
						업무 시간(상담/변경/취소/환불 및 항공 온라인 문의 처리 가능 시간)
						<br>- 평일 09:00 ~ 17:00
						<br>- 평일 업무시간 외 주말 및 공휴일은 상담, 변경, 취소, 환불, 1:1 문의 등 업무처리 불가
						<br>※ 결제 및 발권 시간은 항공권에 따라 상이하며 결제 마감 시한 내 결제하기를 통해 확인하시기 바랍니다.
					</li>
					<li>일부 항공권의 경우 당일 예약취소가 불가능하고 평일 업무시간에 환불로 접수되므로 결제 진행시 신중하게 결제 부탁드립니다.</li>
				</ol>
			</div>
			<div class="col-md-9 mt-3">
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
		</form>
	</div>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>