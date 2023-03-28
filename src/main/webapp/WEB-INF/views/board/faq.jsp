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
/* 	  if (radioValue === 'info') {
	    tagToHide1.style.display = 'none';
	    tagToHide2.style.display = 'none';
	    tagToHide3.style.display = 'none';
	    tagToHide4.style.display = 'none';
	    tagToHide5.style.display = '';
	  }  */
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
<div class="container">
	<nav class="container col-md-8" style="margin-top:0.5%;text-align:center;" aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="#" style="text-decoration:none; color:black;">고객센터</a></li>
	    <li class="breadcrumb-item active" aria-current="page">자주묻는질문 (FAQ)</li>
	  </ol>
	</nav>
</div>
    <div class="col-md-9">
    	<h3 class = "fs-4 fw-bolder text-end" style = "line-height: 100%;"><span class = "align-items-center mx-6">자주묻는질문</span>
    		<img alt="faq" src="${contextPath}/resources/image/faq/faq.png" width="200px" height="200px">
    	</h3>
	</div>
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
	  
<!-- 	  <input type="radio" class="btn-check" name="btnradio" id="btnradio5" autocomplete="off" value="info" onclick="toggleTagVisibility()">
	  <label class="btn btn-outline-primary" for="btnradio5">계정관련</label> -->
	</div>
</div>

<!-- FAQ 자주묻는질문 항공 목록 -->
<div id="accordionExample1">
<div class="container col-md-5 accordion" id="accordionExample" style="margin:1% auto 1% auto;">
<c:forEach var="hotel" items="${faqhotel}">
  <div class="accordion-item">
    <h2 class="accordion-header" id="heading${hotel.faq_num}">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${hotel.faq_num}" aria-expanded="false" aria-controls="collapse${hotel.faq_num}">
        ${hotel.faq_title}
      </button>
    </h2>
    <div id="collapse${hotel.faq_num}" class="accordion-collapse collapse" aria-labelledby="heading${hotel.faq_num}" data-bs-parent="#accordionExample">
      <div class="accordion-body"> 
		${hotel.faq_content}
      </div>
    </div>
  </div>
  </c:forEach>
 </div>
</div>


<div id="accordionExample2" style="display:none;margin:1% auto 1% auto;">
<div class="container col-md-5 accordion" id="new-accordion">
<c:forEach var="flight" items="${faqflight}">
  <div class="accordion-item">
    <h2 class="accordion-header" id="new-heading${flight.faq_num}">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#new-collapse${flight.faq_num}" aria-expanded="false" aria-controls="new-collapse${flight.faq_num}">
        ${flight.faq_title}
      </button>
    </h2>
    <div id="new-collapse${flight.faq_num}" class="accordion-collapse collapse" aria-labelledby="new-heading${flight.faq_num}" data-bs-parent="#new-accordion">
      <div class="accordion-body">
        ${flight.faq_content}
      </div>
    </div>
  </div>
  </c:forEach>
</div>
</div>

<div id="accordionExample3" style="display:none;margin:1% auto 1% auto;">
<div class="container col-md-5 accordion" id="my-accordion">
<c:forEach var="rent" items="${faqrent}">
  <div class="accordion-item">
    <h2 class="accordion-header" id="heading${rent.faq_num}">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${rent.faq_num}" aria-expanded="false" aria-controls="collapse${rent.faq_num}">
        ${rent.faq_title}
      </button>
    </h2>
    <div id="collapse${rent.faq_num}" class="accordion-collapse collapse" aria-labelledby="heading${rent.faq_num}" data-bs-parent="#my-accordion">
      <div class="accordion-body">
        ${rent.faq_content}
      </div>
    </div>
  </div>
  </c:forEach>
</div>
</div>

<div id="accordionExample4" style="display:none;margin:1% auto 1% auto;">
<div class="container col-md-5 accordion" id="myAccordion">
<c:forEach var="pack" items="${faqpackage}">
  <div class="accordion-item">
    <h2 class="accordion-header" id="heading${pack.faq_num}">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${pack.faq_num}" aria-expanded="false" aria-controls="collapse${pack.faq_num}">
        ${pack.faq_title}
      </button>
    </h2>
    <div id="collapse${pack.faq_num}" class="accordion-collapse collapse" aria-labelledby="heading${pack.faq_num}" data-bs-parent="#myAccordion">
      <div class="accordion-body">
        ${pack.faq_content}
      </div>
    </div>
  </div>
</c:forEach>
</div>
</div>


<!-- 
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
</div> -->

	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>