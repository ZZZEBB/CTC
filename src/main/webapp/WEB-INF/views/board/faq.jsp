<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<script>
function toggleTagVisibility() {
     var radioValue = document.querySelector('input[name="btnradio"]:checked').value;
     var tagToHide1 = document.getElementById('accordionExample1');
     var tagToHide2 = document.getElementById('accordionExample2');
     var tagToHide3 = document.getElementById('accordionExample3');
     var tagToHide4 = document.getElementById('accordionExample4');
     var tagToHide5 = document.getElementById('accordionExample5');
     
     if (radioValue === 'hotel') {
       tagToHide1.style.display = '';
       tagToHide2.style.display = 'none';
       tagToHide3.style.display = 'none';
       tagToHide4.style.display = 'none';
       tagToHide5.style.display = 'none';
     } 
     if (radioValue === 'flight') {
       tagToHide1.style.display = 'none';
       tagToHide2.style.display = '';
       tagToHide3.style.display = 'none';
       tagToHide4.style.display = 'none';
       tagToHide5.style.display = 'none';
     } 
     if (radioValue === 'rent') {
       tagToHide1.style.display = 'none';
       tagToHide2.style.display = 'none';
       tagToHide3.style.display = '';
       tagToHide4.style.display = 'none';
       tagToHide5.style.display = 'none';
     } 
     if (radioValue === 'packge') {
       tagToHide1.style.display = 'none';
       tagToHide2.style.display = 'none';
       tagToHide3.style.display = 'none';
       tagToHide4.style.display = '';
       tagToHide5.style.display = 'none';
     } 
     if (radioValue === 'info') {
       tagToHide1.style.display = 'none';
       tagToHide2.style.display = 'none';
       tagToHide3.style.display = 'none';
       tagToHide4.style.display = 'none';
       tagToHide5.style.display = '';
     } 
   }
</script>
<head>
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>자주묻는질문 게시판</title>
   <!-- CSS only -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
<nav class="container col-md-7" style="margin-top:0.5%;" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#" style="text-decoration:none; color:black;">고객센터</a></li>
    <li class="breadcrumb-item active" aria-current="page">자주묻는질문 (FAQ)</li>
  </ol>
</nav>
<div class="container col-md-7">
   <div class="btn-group container col-md-7" role="group" aria-label="Basic radio toggle button group" style="margin-left:20%;">
     <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" value="hotel" onclick="toggleTagVisibility()" checked>
     <label class="btn btn-outline-primary" for="btnradio1">호텔관련</label>
   
     <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off" value="flight" onclick="toggleTagVisibility()">
     <label class="btn btn-outline-primary" for="btnradio2">항공관련</label>
   
     <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off" value="rent" onclick="toggleTagVisibility()">
     <label class="btn btn-outline-primary" for="btnradio3">렌트관련</label>
     
     <input type="radio" class="btn-check" name="btnradio" id="btnradio4" autocomplete="off" value="packge" onclick="toggleTagVisibility()">
     <label class="btn btn-outline-primary" for="btnradio4">패키지관련</label>
     
     <input type="radio" class="btn-check" name="btnradio" id="btnradio5" autocomplete="off" value="info" onclick="toggleTagVisibility()">
     <label class="btn btn-outline-primary" for="btnradio5">계정관련</label>
   </div>
</div>

<!-- FAQ 자주묻는질문 항공 목록 -->
<div id="accordionExample1">
<div class="container col-md-5 accordion" id="accordionExample" style="margin:1% auto 1% auto;">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        같은 호텔 같은 룸타입이 2개 이상 검색되는 이유가 궁금합니다.
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      
모두투어는 충분한 객실확보 및 다양한 객실요금 확보를 위해,
여러 현지호텔 공급사와 계약하여 요금을 제공하고 있습니다.

동일한 호텔의 동일한 룸 타입이라도 공급사에 따라 요금이 다를 수 있습니다.
동일한 객실 룸타입이라면 조회되는 항목중에 제일 저렴한 요금으로 이용하시면 됩니다
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
       객실요금은 1인당 가격인가요?
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">
  
저희 웹사이트의 판매 요금은 조회하신 객실의 총요금으로, 세금+봉사료가 기본적으로 포함된 가격입니다.
조식 포함여부는 지역, 호텔등에 따라 달리 표시되어 있습니다.

*싱글 (1인실)
*트윈/더블 ( 2인실)
*트리플 ( 3인실) / (3인실을 예약하여도 3인 조식 및 엑스트라 베드가 제공 되지 않을수도 있습니다 )
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        결제한 항공권을 취소할 수 있나요?
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        항공권 결제 요청 후 발권이 되기 전에는 취소가 가능합니다. 단, 항공권이 발권된 이후에 취소하시면 항공권의 요금규정에 따라 취소수수료가 발생합니다.

항공권 조건에 따라 규정 및 수수료는 다르며, 환불이 안되는 항공권도 있으니 반드시 결제전에 요금규정을 정확히 확인하시고 이용해주시기 바랍니다.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingFour">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
     예약을 변경/취소 하고 싶습니다
      </button>
    </h2>
    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
      <div class="accordion-body">
   모든 예약에 대한 변경은 담당자를 통해서 유선으로 확인 하셔야 하며 취소마감일 이내의 예약에 관한 취소는 회원 로그인 후 마이페이지 화면 하단 "취소하기"버튼으로 직접 취소신청을 하실 수 있습니다.
단 취소마감일 이후의 예약은 위약금이 발생하므로 직접 취소가 불가하며 담당자를 통해서 유선으로 확인 하셔야 합니다
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingFive">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
        예약내용 확인은 어떻게 하나요?
      </button>
    </h2>
    <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
      <div class="accordion-body">
예약을 완료하시면 고객의 핸드폰으로 예약번호 및 취소마감일이 전송되며 자세한 예약 내용은 이메일로 발송됩니다.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingSix">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
       트윈룸과 더블룸의 차이가 뭔가요 ?
      </button>
    </h2>
    <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
      <div class="accordion-body">
더블룸이나 트윈룸 모두 2인실이며, 더블룸은 2명이 사용하실수 있는 큰 침대가 1개 있는 객실이고
트윈룸은 싱글침대가 2개 있는 객실입니다. Double(Twin)은 2인용 객실로 호텔 객실 상황에 따라 룸타입이 보장되지 않을 수 있습니다
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingSeven">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
    트윈에는 2인의 조식이 모두 포함인가요?
      </button>
    </h2>
    <div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#accordionExample">
      <div class="accordion-body">
       트윈에 조식포함을 선택하셨다면 조식포함 내용에 Breakfast for 1 이라는 문구가 있는 경우만 제외하고 2명의 조식이 포함되어 있습니다.

그 외 인원의 (추가 동반하는 어린이) 조식추가는 현지에서 별도 비용을 추가로 지불하셔야 합니다
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingAight">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseAight" aria-expanded="false" aria-controls="collapseAight">
      호텔 체크인, 체크아웃 시간은 언제인가요?
      </button>
    </h2>
    <div id="collapseAight" class="accordion-collapse collapse" aria-labelledby="headingAight" data-bs-parent="#accordionExample">
      <div class="accordion-body">
    일반적으로 체크인은 14:00이후, 체크아웃은 11:00 ~12;00 입니다
호텔마다, 지역마다 차이가 있으며 일본지역은 체크아웃 시간이 오전10~11시로 다른지역에 비해서 빠른 편입니다.
늦게 체크인(21:00이후)하는 경우에는 호텔측에 도착예정시간과 LATE CHECK-IN 정보를 통보해주셔야 됩니다.
EARLY CHECK-IN, LATE CHECK-OUT은 호텔객실사정에 따라 배정되는 관계로 현지에서 직접 요청하셔야 됩니다.
      </div>
    </div>
  </div>
</div>
</div>

<div id="accordionExample2" style="display:none;margin:1% auto 1% auto;">
<div class="container col-md-5 accordion" id="new-accordion">
  <div class="accordion-item">
    <h2 class="accordion-header" id="new-headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#new-collapseOne" aria-expanded="true" aria-controls="new-collapseOne">
        첫 번째 아코디언 제목
      </button>
    </h2>
    <div id="new-collapseOne" class="accordion-collapse collapse show" aria-labelledby="new-headingOne" data-bs-parent="#new-accordion">
      <div class="accordion-body">
        첫 번째 아코디언 내용
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="new-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#new-collapseTwo" aria-expanded="false" aria-controls="new-collapseTwo">
        두 번째 아코디언 제목
      </button>
    </h2>
    <div id="new-collapseTwo" class="accordion-collapse collapse" aria-labelledby="new-headingTwo" data-bs-parent="#new-accordion">
      <div class="accordion-body">
        두 번째 아코디언 내용
      </div>
    </div>
  </div>
</div>
</div>

<div id="accordionExample3" style="display:none;margin:1% auto 1% auto;">
<div class="container col-md-5 accordion" id="my-accordion">
  <div class="accordion-item">
    <h2 class="accordion-header" id="heading1">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
        아코디언 메뉴 1
      </button>
    </h2>
    <div id="collapse1" class="accordion-collapse collapse" aria-labelledby="heading1" data-bs-parent="#my-accordion">
      <div class="accordion-body">
        이곳에 메뉴 내용을 입력하세요.
      </div>
    </div>
  </div>
  
  <div class="accordion-item">
    <h2 class="accordion-header" id="heading2">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
        아코디언 메뉴 2
      </button>
    </h2>
    <div id="collapse2" class="accordion-collapse collapse" aria-labelledby="heading2" data-bs-parent="#my-accordion">
      <div class="accordion-body">
        이곳에 메뉴 내용을 입력하세요.
      </div>
    </div>
  </div>
  
  <div class="accordion-item">
    <h2 class="accordion-header" id="heading3">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse3" aria-expanded="false" aria-controls="collapse3">
        아코디언 메뉴 3
      </button>
    </h2>
    <div id="collapse3" class="accordion-collapse collapse" aria-labelledby="heading3" data-bs-parent="#my-accordion">
      <div class="accordion-body">
        이곳에 메뉴 내용을 입력하세요.
      </div>
    </div>
  </div>
</div>


</div>

<div id="accordionExample4" style="display:none;margin:1% auto 1% auto;">
   <div class="container col-md-5 accordion" id="newAccordion">
     <div class="accordion-item">
       <h2 class="accordion-header" id="headingOneNew">
         <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOneNew" aria-expanded="false" aria-controls="collapseOneNew">
           첫 번째 질문
         </button>
       </h2>
       <div id="collapseOneNew" class="accordion-collapse collapse" aria-labelledby="headingOneNew" data-bs-parent="#newAccordion">
         <div class="accordion-body">
           첫 번째 답변 내용이 들어갑니다.
         </div>
       </div>
     </div>
     <div class="accordion-item">
       <h2 class="accordion-header" id="headingTwoNew">
         <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwoNew" aria-expanded="false" aria-controls="collapseTwoNew">
           두 번째 질문
         </button>
       </h2>
       <div id="collapseTwoNew" class="accordion-collapse collapse" aria-labelledby="headingTwoNew" data-bs-parent="#newAccordion">
         <div class="accordion-body">
           두 번째 답변 내용이 들어갑니다.
         </div>
       </div>
     </div>
     <div class="accordion-item">
       <h2 class="accordion-header" id="headingThreeNew">
         <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThreeNew" aria-expanded="false" aria-controls="collapseThreeNew">
           세 번째 질문
         </button>
       </h2>
       <div id="collapseThreeNew" class="accordion-collapse collapse" aria-labelledby="headingThreeNew" data-bs-parent="#newAccordion">
         <div class="accordion-body">
           세 번째 답변 내용이 들어갑니다.
         </div>
       </div>
     </div>
   </div>
</div>

<div id="accordionExample5" style="display:none;margin:1% auto 1% auto;">
   <div class="container col-md-5 accordion" id="customAccordion">
     <div class="accordion-item">
       <h2 class="accordion-header" id="headingOne">
         <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
           첫 번째 질문
         </button>
       </h2>
       <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#customAccordion">
         <div class="accordion-body">
           첫 번째 답변 내용입니다.
         </div>
       </div>
     </div>
     <div class="accordion-item">
       <h2 class="accordion-header" id="headingTwo">
         <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
           두 번째 질문
         </button>
       </h2>
       <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#customAccordion">
         <div class="accordion-body">
           두 번째 답변 내용입니다.
         </div>
       </div>
     </div>
     <div class="accordion-item">
       <h2 class="accordion-header" id="headingThree">
         <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
           세 번째 질문
         </button>
       </h2>
       <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#customAccordion">
         <div class="accordion-body">
           세 번째 답변 내용입니다.
         </div>
       </div>
     </div>
   </div>
</div>

   <!-- JavaScript Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>