<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>호텔 상세 페이지</title>
<!-- CSS only -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script>
  $(document).ready(function() {
    $("#datepicker").datepicker({
      dateFormat: "yy-mm-dd"
    });
  });
</script>
<script>
  $(document).ready(function() {
    $("#datepicker1").datepicker({
      dateFormat: "yy-mm-dd"
    });
  });
</script>
<script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style type="text/css">

#search {
	margin-bottom: 20px;
	text-align: center;
}
.date{
   padding-left:5px;
   border:none;
   background-color:#E0E0E0;
   text-align: center;
   height:20px;
}
.mainText {
	text-align: center;
    width: 400px;
    display: inline-block; 
    white-space: nowrap;
    margin-left: 300px;
}
.mainPrice {
	text-align: center;
 	width: 800px;
 	display: inline-block; 
 	white-space: nowrap;
 	
}

.select {
    width: 200px;
    text-align: center;
    display: inline-block; 
 	white-space: nowrap;
    }
select option[value=""][disabled] {
	display: none;
}

hr {
	clear: both;
	width: 50%;
}
.explain {
	width: 800px;
	height: 200px;
	float: center;
	text-align: left;
	margin-left: 400px;
}

</style>
</head>
<body>
<form id="search"> 
      
       <span>
      <%--  <img class="icon" alt="car_icon" src="${contextPath}/resources/image/car.png"> --%> <!-- 검색창 왼쪽 자동차아이콘 -->
       
      <input type="text" name="search" id="searchtitle"  placeholder="호텔 검색"/>
      
       체크인 <span id="searchtitle1"> 
       <input class="date" type="date" name="start"/> <!-- 출발달력 -->
        
      </span>
      체크아웃 <input class="date" type="date" name="start"/> <!-- 도착달력 -->
         
       </span>
            <button type="submit" class="btn btn-link">
             <img src="${contextPath}/resources/image/search.png" alt="검색" width="20px" height="25px"> <!-- submit 검색버튼 -->
       </button>
</form>
<div class="mainText">
<h3>그랜드 하얏트 제주</h3>
</div>
<div class="mainPrice">
<p><strong>677,700원</strong>&nbsp;<small>총 금액</small>&nbsp;&nbsp;
<div class="select">

    <select>
    <option value="" disabled selected>룸 타입 선택</option>
      <option value="1">싱글</option>
      <option value="2">더블</option>
      <option value="3">디럭스 싱글</option>
      <option value="4">디럭스 더블</option>
      <option value="5">스위트 싱글</option>
      <option value="6">스위트 더블</option>
    </select>
  </div>
  <input type=button value="지금 예약">&nbsp;&nbsp;
          <input type=button value="장바구니">
        </p>
</div>

<div class="container justify-content-start">
	<div id="carouselExampleIndicators" class="carousel slide col-md-7" style="margin-left: 200px;">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="${contextPath}/resources/image/hotel/hotel1.jpg" class="d-block w-100" alt="..." height="300px">
	    </div>
	    <div class="carousel-item">
	      <img src="${contextPath}/resources/image/hotel/hotel2.jpg" class="d-block w-100" alt="..." height="300px">
	    </div>
	    <div class="carousel-item">
	      <img src="${contextPath}/resources/image/hotel/hotel3.jpg" class="d-block w-100" alt="..." height="300px">
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<hr>
<div class="explain">
<p>그랜드 하얏트 제주는 제주국제공항에서 차로 약 10분가량 떨어져 있습니다. 주변 관광지로는 산책하기 좋은 한라 수목원이 차로 약 7분, 
멋진 경관의 이호테우 해수욕장이 차로 약 12분, 구경거리가 가득한 동문수산시장이 차로 약 20분가량 소요됩니다. 호텔에는 아름다운 뷰를 감상하며 수영을 
즐길 수 있는 인피니티 풀과 프리미엄 스파 뿐만 아니라, 키즈 아케이드, 피트니스 센터 등이 마련되어 있습니다. 또한, 컨시어지 서비스와 룸서비스, 와이파이 등 
여러 서비스도 이용하실 수 있습니다. 지하 5층부터 지상 38층으로 이루어진 호텔은 오션뷰와 마우틴뷰, 시티뷰를 즐길 수 있는 객실 총 1,600개를 보유하고 있습니다. 아늑하고 세련된 
인테리어의 각 객실에는 스마트 TV, 개별 냉난방 시스템, 네스프레소 커피 머신 등이 준비되어 있으며, 욕실에는 고급 욕실용품과 헤어드라이어 등 편안한 투숙을 위한 시설이 완비되어 있습니다.
 호텔 내 14곳의 레스토랑과 바에서는 한식, 중식, 일식 등 다채로운 요리를 맛보실 수 있습니다.

</p>
</div>
<!-- JavaScript Bundle with Popper -->
   
</body>
</html>