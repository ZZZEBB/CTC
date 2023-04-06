<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>호텔 목록 페이지</title>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
   <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/smoothness/jquery-ui.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
   <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
   <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/0.7.0/tailwind.min.css'>
   <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>

   <script type="text/javascript">
      $('.dropdown').on('hide.bs.dropdown', function (evt) {
           if (!evt.clickEvent) { return }
           let clickTarget = evt.clickEvent.target
           if (clickTarget.getAttribute('data-dismiss') == 'dropdown') { return }
           let dropdownMenu = this.querySelector('.dropdown-menu')
   
           if (dropdownMenu.contains(clickTarget)) {
             evt.preventDefault();
           }
      })
   </script>
   <style type="text/css">
   </style>
</head>
<body>
   <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
   <form class = "container">
      <ul class="nav nav-pills" id="myTab" role="tablist">
         <li class="nav-item" role="presentation">
            <button class="nav-link active" id="round-tab" data-bs-toggle="tab" data-bs-target="#round" type="button" role="tab" aria-controls="round" aria-selected="true">왕복</button>
         </li>
         <li class="nav-item" role="presentation">
            <button class="nav-link" id="oneway-tab" data-bs-toggle="tab" data-bs-target="#oneway" type="button" role="tab" aria-controls="oneway" aria-selected="false">편도</button>
         </li>
      </ul>
      <div class="tab-content" id="myTabContent">
         <div class="tab-pane fade show active" id="round" role="tabpanel" aria-labelledby="round-tab">
              <div class="dropdown text-left">
               <button class="btn btn-secondary dropdown-togglex" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 출발지 선택
               </button>
               <div class="dropdown-menu py-0">
                  <div class="modal-header">
                     <h5 class="modal-title">출발지 선택</h5>
                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                     <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                        <input type="radio" class="btn-check" name="btnradio" id="SEL" autocomplete="off" checked>
                        <label class="btn btn-outline-primary" for="SEL">서울</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="CJU" autocomplete="off">
                        <label class="btn btn-outline-primary" for="CJU">제주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="PUS" autocomplete="off">
                        <label class="btn btn-outline-primary" for="PUS">김해</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="GMP" autocomplete="off">
                        <label class="btn btn-outline-primary" for="GMP">김포</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="ICN" autocomplete="off">
                        <label class="btn btn-outline-primary" for="ICN">인천</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="KWJ" autocomplete="off">
                        <label class="btn btn-outline-primary" for="KWJ">광주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="MWX" autocomplete="off">
                        <label class="btn btn-outline-primary" for="MWX">무안</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="KUV" autocomplete="off">
                        <label class="btn btn-outline-primary" for="KUV">군산</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="TAE" autocomplete="off">
                        <label class="btn btn-outline-primary" for="TAE">대구</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="HIN" autocomplete="off">
                        <label class="btn btn-outline-primary" for="HIN">사천</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="RSU" autocomplete="off">
                        <label class="btn btn-outline-primary" for="RSU">여수</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="USN" autocomplete="off">
                        <label class="btn btn-outline-primary" for="USN">울산</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="WJU" autocomplete="off">
                        <label class="btn btn-outline-primary" for="WJU">원주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="CJJ" autocomplete="off">
                        <label class="btn btn-outline-primary" for="CJJ">청주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="KPO" autocomplete="off">
                        <label class="btn btn-outline-primary" for="KPO">포항</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="YNY" autocomplete="off">
                        <label class="btn btn-outline-primary" for="YNY">양양</label>
                     </div>
                  </div>
                  <div class="modal-footer">
                     <input type="submit" name="commit" value="Save" class="btn btn-primary" data-disable-with="Save">
                  </div>
               </div>
            </div>
            <div class="dropdown text-left">
               <button class="btn btn-secondary dropdown-togglex" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 도착지 선택
               </button>
               <div class="dropdown-menu py-0">
                  <div class="modal-header">
                     <h5 class="modal-title">도착지 선택</h5>
                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                     <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                        <input type="radio" class="btn-check" name="btnradio" id="SEL" autocomplete="off" checked>
                        <label class="btn btn-outline-primary" for="SEL">서울</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="CJU" autocomplete="off">
                        <label class="btn btn-outline-primary" for="CJU">제주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="PUS" autocomplete="off">
                        <label class="btn btn-outline-primary" for="PUS">김해</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="GMP" autocomplete="off">
                        <label class="btn btn-outline-primary" for="GMP">김포</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="ICN" autocomplete="off">
                        <label class="btn btn-outline-primary" for="ICN">인천</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="KWJ" autocomplete="off">
                        <label class="btn btn-outline-primary" for="KWJ">광주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="MWX" autocomplete="off">
                        <label class="btn btn-outline-primary" for="MWX">무안</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="KUV" autocomplete="off">
                        <label class="btn btn-outline-primary" for="KUV">군산</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="TAE" autocomplete="off">
                        <label class="btn btn-outline-primary" for="TAE">대구</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="HIN" autocomplete="off">
                        <label class="btn btn-outline-primary" for="HIN">사천</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="RSU" autocomplete="off">
                        <label class="btn btn-outline-primary" for="RSU">여수</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="USN" autocomplete="off">
                        <label class="btn btn-outline-primary" for="USN">울산</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="WJU" autocomplete="off">
                        <label class="btn btn-outline-primary" for="WJU">원주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="CJJ" autocomplete="off">
                        <label class="btn btn-outline-primary" for="CJJ">청주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="KPO" autocomplete="off">
                        <label class="btn btn-outline-primary" for="KPO">포항</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="YNY" autocomplete="off">
                        <label class="btn btn-outline-primary" for="YNY">양양</label>
                     </div>
                  </div>
                  <div class="modal-footer">
                     <input type="submit" name="commit" value="Save" class="btn btn-primary" data-disable-with="Save">
                  </div>
               </div>
            </div>
         </div>
      </div>
       <div class="tab-pane fade" id="oneway" role="tabpanel" aria-labelledby="oneway-tab">
          <div class="dropdown text-left">
               <button class="btn btn-secondary dropdown-togglex" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 출발지 선택
               </button>
               <div class="dropdown-menu py-0">
                  <div class="modal-header">
                     <h5 class="modal-title">출발지 선택</h5>
                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                     <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                        <input type="radio" class="btn-check" name="btnradio" id="SEL" autocomplete="off" checked>
                        <label class="btn btn-outline-primary" for="SEL">서울</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="CJU" autocomplete="off">
                        <label class="btn btn-outline-primary" for="CJU">제주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="PUS" autocomplete="off">
                        <label class="btn btn-outline-primary" for="PUS">김해</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="GMP" autocomplete="off">
                        <label class="btn btn-outline-primary" for="GMP">김포</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="ICN" autocomplete="off">
                        <label class="btn btn-outline-primary" for="ICN">인천</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="KWJ" autocomplete="off">
                        <label class="btn btn-outline-primary" for="KWJ">광주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="MWX" autocomplete="off">
                        <label class="btn btn-outline-primary" for="MWX">무안</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="KUV" autocomplete="off">
                        <label class="btn btn-outline-primary" for="KUV">군산</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="TAE" autocomplete="off">
                        <label class="btn btn-outline-primary" for="TAE">대구</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="HIN" autocomplete="off">
                        <label class="btn btn-outline-primary" for="HIN">사천</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="RSU" autocomplete="off">
                        <label class="btn btn-outline-primary" for="RSU">여수</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="USN" autocomplete="off">
                        <label class="btn btn-outline-primary" for="USN">울산</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="WJU" autocomplete="off">
                        <label class="btn btn-outline-primary" for="WJU">원주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="CJJ" autocomplete="off">
                        <label class="btn btn-outline-primary" for="CJJ">청주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="KPO" autocomplete="off">
                        <label class="btn btn-outline-primary" for="KPO">포항</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="YNY" autocomplete="off">
                        <label class="btn btn-outline-primary" for="YNY">양양</label>
                     </div>
                  </div>
                  <div class="modal-footer">
                     <input type="submit" name="commit" value="Save" class="btn btn-primary" data-disable-with="Save">
                  </div>
               </div>
            </div>
            <div class="dropdown text-left">
               <button class="btn btn-secondary dropdown-togglex" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 도착지 선택
               </button>
               <div class="dropdown-menu py-0">
                  <div class="modal-header">
                     <h5 class="modal-title">도착지 선택</h5>
                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                     <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                        <input type="radio" class="btn-check" name="btnradio" id="SEL" autocomplete="off" checked>
                        <label class="btn btn-outline-primary" for="SEL">서울</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="CJU" autocomplete="off">
                        <label class="btn btn-outline-primary" for="CJU">제주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="PUS" autocomplete="off">
                        <label class="btn btn-outline-primary" for="PUS">김해</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="GMP" autocomplete="off">
                        <label class="btn btn-outline-primary" for="GMP">김포</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="ICN" autocomplete="off">
                        <label class="btn btn-outline-primary" for="ICN">인천</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="KWJ" autocomplete="off">
                        <label class="btn btn-outline-primary" for="KWJ">광주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="MWX" autocomplete="off">
                        <label class="btn btn-outline-primary" for="MWX">무안</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="KUV" autocomplete="off">
                        <label class="btn btn-outline-primary" for="KUV">군산</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="TAE" autocomplete="off">
                        <label class="btn btn-outline-primary" for="TAE">대구</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="HIN" autocomplete="off">
                        <label class="btn btn-outline-primary" for="HIN">사천</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="RSU" autocomplete="off">
                        <label class="btn btn-outline-primary" for="RSU">여수</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="USN" autocomplete="off">
                        <label class="btn btn-outline-primary" for="USN">울산</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="WJU" autocomplete="off">
                        <label class="btn btn-outline-primary" for="WJU">원주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="CJJ" autocomplete="off">
                        <label class="btn btn-outline-primary" for="CJJ">청주</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="KPO" autocomplete="off">
                        <label class="btn btn-outline-primary" for="KPO">포항</label>
                        
                        <input type="radio" class="btn-check" name="btnradio" id="YNY" autocomplete="off">
                        <label class="btn btn-outline-primary" for="YNY">양양</label>
                     </div>
                  </div>
                  <div class="modal-footer">
                     <input type="submit" name="commit" value="Save" class="btn btn-primary" data-disable-with="Save">
                  </div>
               </div>
            </div>
       </div>
       <form id="search" class = "d-flex align-middle justify-content-between">
         <div class = "col-md-5 ms-3 p-1">
            <div class="input-daterange input-group" id="datepicker">
               <input type="text" id="date-picker1" class="form-control bg-white border-1 small" aria-label="Search" aria-describedby="basic-addon2" th:value="|${year}-${month}|" name = "start">
               <span class="input-group-addon">&nbsp;~&nbsp;</span>
               <input type="text" id="date-picker2" class="form-control bg-white border-1 small" aria-label="Search" aria-describedby="basic-addon2" th:value="|${year}-${month}|" name = "end">
            </div>
            <script type = "text/javascript">
               $(document).ready(function() {
                   $('#date-picker1').datepicker({
                       format: "yyyy-m",
                       minViewMode: 1,
                       language: "ko",
                       autoclose: true
                   })
                   
                   $('#date-picker2').datepicker({
                       format: "yyyy-m",
                       minViewMode: 1,
                       language: "ko",
                       autoclose: true
                   })
               
                   $('#get-history').on('click', function() {
                       const dateArr = $('#date-picker').val().split('-')
                       location.href = '/history?year=' + dateArr[0] + '&month=' + dateArr[1]
                   })
               })
            </script>
         </div>
         <div class = "col-md-2 ms-3 p-1">
            <button type="submit" class="btn btn-primary">검색</button>
         </div>
   </form>
   <div class="map">
      <!-- 지도를 표시할 div 입니다 -->
   <!-- <div id = "map" style = "width:100%; height:139px;">
   </div> -->
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2e253b59d2cc8f52b94e061355413a9e"></script>
   <script>
   var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
       mapOption = { 
           center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
           level: 3 // 지도의 확대 레벨
       };
   
   // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
   var map = new kakao.maps.Map(mapContainer, mapOption); 
   </script>
        </div>
   </form>
   
   <!-- 본문 상품 -->
   <form class="container row col" style="text-align:center; margin-left:11%;">
   <div id="product_center" class="container d-flex align-items-end justify-content-center" style="margin:10px auto;">
   <p style="margin:0px;">${product.goods_name}</p> <!-- 항공사이름 -->
   <img alt="가격할인배너이미지" src="${contextPath}/resources/image/flight/sale.png" width="30px" height="25px"> <!-- 가격 할인 이미지 -->
   <img alt="가격할인배너이미지" src="${contextPath}/resources/image/flight/Mileagelogo.jpg" width="100px" height="25px"> <!-- 가격 할인 이미지 -->
   <img alt="가격할인배너이미지" src="${contextPath}/resources/image/flight/sale2.png" width="25px;" height="25px"> <!-- 가격 할인 이미지 -->
   <span class="product_time"><span class="productTag"><fmt:formatDate value="${product.goods_departure_date}" pattern="yyyy-MM-dd"/></span><span class="productTag"><fmt:formatDate value="${product.goods_departure_time}" pattern="HH-SS"/></span><span class="productTag">${product.goods_departures}공항</span>
   <img alt="air_mini" src="${contextPath}/resources/image/flight/air.png" width="15px" height="15px">
   <span class="productTag"><fmt:formatDate value="${product.goods_arrival_date}" pattern="yyyy-MM-dd"/></span><span class="productTag"><fmt:formatDate value="${product.goods_arrival_time}" pattern="HH-SS"/></span><span class="productTag">${product.goods_arrivals}공항</span>
   <span class="product_price">가격 : ${product.goods_saleprice}원</span>
                <span class="button_css">
                  <button type="submit">지금예약</button>
                  <button type="submit">장바구니</button>
               </span>
         </span>
      </div>
      <hr id="product_hr">
   </form>   
    
   <!-- partial -->
   <script src='https://code.jquery.com/jquery-3.3.1.slim.min.js'></script>
   <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js'></script>
   <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js'></script>
   <script src='https://unpkg.com/stimulus/dist/stimulus.umd.js'></script><script  src="./script.js"></script>
   <!-- JavaScript Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>