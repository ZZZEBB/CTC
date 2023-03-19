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
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>호텔 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/smoothness/jquery-ui.css">
<!-- 반응형 웹 -->
<link rel="stylesheet" type="text/css" media="screen" href="cssscreen.css">
<link rel="stylesheet" type="text/css" media="print" href="cssprint.css">
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
<style type="text/css">
.date{
   padding-left:5px;
   border:none;
   background-color:#E0E0E0;
   text-align: center;
   height:20px;
}


#search {
	margin-bottom: 20px;
	text-align: center;
}

.imagebox {
border: 1px solid #ccc;
width: 1000px;
height: 140px;
margin: 0 auto;
margin-bottom: 10px;
}

}
.hotelText1 {
	font-size:12px;
	line-height: 12px;
	margin-top: 10px;
	margin-left: 20px;
	width: 500px;
	font-style: bold;
}
body hr {
width: 450px;

}
#image {
background: #ccc
}
.mainimage {
margin-left: 20px;
}

.product{
	border:2px solid #ccc;
	height: 170px;
	position: relative;
	box-sizing :border-box;
	float: left;
	margin-left: 450px;
	width: 41%;
	margin-bottom: 20px;
}
.product1{
	clear: both;
	border:2px solid #ccc;
	height: 170px;
	box-sizing :border-box;
	float: left;
	margin-left: 450px;
	width: 41%;
}

.imgBox01 {
	float: left;
	height: 170px;
	padding: 5px;
}
.eventBox {
	width: 11%;
	float:right;
	border: 2px solid #ccc;
	height: 600px;
	margin-right: 455px;
}
.map {
	width: 10%;
	float:left;
	border: 2px solid #ccc;
	height: 140px;
	margin-left: 240px;
	
}
.button {
	margin-left: 300px;
	margin-bottom: 100px;
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

<div class="map">
<!-- 지도를 표시할 div 입니다 -->
      <div id="map" style="width:100%;height:139px;"></div>
      
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

<div class="imagebox" id="image">
	<h6>제주도 인기 여행지 <small>top5</small></h6>
   <a class="click" href="https://www.visitjeju.net/kr/detail/view?contentsid=CONT_000000000500309" target="_blank"><img class="mainimage" src="${contextPath}/resources/image/hotel/jejuNewstar.jpg" width="170px" height="100px"/></a>
   <a href="https://www.visitjeju.net/kr/detail/view?contentsid=CONT_000000000500707" target="_blank"><img class="mainimage" src="${contextPath}/resources/image/hotel/jejuPark.jpg" width="170px" height="100px"/></a>
   <a href="https://www.visitjeju.net/kr/detail/view?contentsid=CONT_000000000500471" target="_blank"><img class="mainimage" src="${contextPath}/resources/image/hotel/jejuDragon.jpg" width="170px" height="100px"/></a>
   <a href="https://www.visitjeju.net/kr/detail/view?contentsid=CONT_000000000500693" target="_blank"><img class="mainimage" src="${contextPath}/resources/image/hotel/jejuBeach.jpg" width="170px" height="100px"/></a>
   <a href="https://www.visitjeju.net/kr/detail/view?contentsid=CONT_000000000500531" target="_blank"><img class="mainimage" src="${contextPath}/resources/image/hotel/jejuWaterfall.jpg" width="170px" height="100px"/></a>
</div>

<div class="container mt-3">
	<div class="row justify-content-center">
		<div class="col-md-7">
			<div class="list-group list-group-flush mb-4" style = "border:1px solid #808080;">
				<a class="list-group-item" href="${contextPath}/goods/goodsHotelDetail.do">
				<div class="d-flex w-70">
					<img src="${contextPath}/resources/image/hotel/jeju_shinhwa.jpg" width="30%" height="170px">
					<h6 class="mb-1 ms-4 p-2" style="height: 15px; line-height: 15px;">
						<span class = "fs-5 fw-bolder">랜딩관 제주신화월드 호텔앤리조트 01</span>
						<small class="smallCaption text-secondary">★★★★</small> <hr><br><br>
						<div class="hotelPrice"><p>회사 이름   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;322,000 원 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="" type="button" value="바로 예약"></p>
						
						</div>
					</h6>
				</div>
				</a>
			</div>
			<div class="list-group list-group-flush mb-4" style = "border:1px solid #808080;">
				<a class="list-group-item">
				<div class="d-flex w-70">
					<img src="${contextPath}/resources/image/hotel/jeju_shinhwa.jpg" width="30%" height="170px">
					<h6 class="mb-1 ms-4 p-2" style="height: 15px; line-height: 15px;">
						<span class = "fs-5 fw-bolder">랜딩관 제주신화월드 호텔앤리조트 02</span>
						<small class="smallCaption text-secondary">★★★★</small><hr><br><br>
						<div class="hotelPrice"><p>회사 이름   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;322,000 원 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="" type="button" value="바로 예약"></p>
						
						</div>
						
						
					</h6>
					
			</div>
			
				</a>
			</div>
			<div class="list-group list-group-flush mb-4" style = "border:1px solid #808080;">
				<a class="list-group-item">
				<div class="d-flex w-70">
					<img src="${contextPath}/resources/image/hotel/jeju_shinhwa.jpg" width="30%" height="170px">
					<h6 class="mb-1 ms-4 p-2" style="height: 15px; line-height: 15px;">
						<span class = "fs-5 fw-bolder">랜딩관 제주신화월드 호텔앤리조트 03</span>
						<small class="smallCaption text-secondary" >★★★★</small><hr><br><br>
						<div class="hotelPrice"><p>회사 이름   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;322,000 원 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="" type="button" value="바로 예약"></p>
						
						</div>
					</h6>
				</div>
				</a>
			</div>
		</div>
		<div class = "col-md-2" style = "border:1px solid #808080; height : auto;">
			<h5>이벤트 이미지</h5>
		</div>
	</div>
</div>


</body>
</html>