<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="carsize" value="${carsize}"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 상품 조회</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
    //뭐지
	console.log('http://www.abdullahkahriman.com');
	
	//시간스크립트
	document.querySelector("#time").addEventListener("input", function(e) {
		  const reTime = /^([0-1][0-9]|2[0-3]):[0-5][0-9]$/;
		  const time = this.value;
		  if (reTime.exec(time)) {
		    const minute = Number(time.substring(3,5));
		    const hour = Number(time.substring(0,2)) % 12 + (minute / 60);
		    this.style.backgroundImage = `url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><circle cx='20' cy='20' r='18.5' fill='none' stroke='%23222' stroke-width='3' /><path d='M20,4 20,8 M4,20 8,20 M36,20 32,20 M20,36 20,32' stroke='%23bbb' stroke-width='1' /><circle cx='20' cy='20' r='2' fill='%23222' stroke='%23222' stroke-width='2' /></svg>"), url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><path d='M18.5,24.5 19.5,4 20.5,4 21.5,24.5 Z' fill='%23222' style='transform:rotate(${360 * minute / 60}deg); transform-origin: 50% 50%;' /></svg>"), url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='40' height='40'><path d='M18.5,24.5 19.5,8.5 20.5,8.5 21.5,24.5 Z' style='transform:rotate(${360 * hour / 12}deg); transform-origin: 50% 50%;' /></svg>")`;
		  }
		});
	
	function cartype(){
		var selectList = document.getElementById("carResult")
		
		if(selectList.options[selectList.selectedIndex].value == "all"){
			 document.getElementById('carname').style.display="";
			 document.getElementById('carname1').style.display="none";
			 document.getElementById('carname2').style.display="none";
			 document.getElementById('carname3').style.display="none";
			 document.getElementById('carname4').style.display="none";
		}
		if(selectList.options[selectList.selectedIndex].value == "mini"){
			 document.getElementById('carname').style.display="none";
			 document.getElementById('carname1').style.display="";
			 document.getElementById('carname2').style.display="none";
			 document.getElementById('carname3').style.display="none";
			 document.getElementById('carname4').style.display="none";
		}
		if(selectList.options[selectList.selectedIndex].value == "medium"){
			document.getElementById('carname').style.display="none";
			 document.getElementById('carname1').style.display="none";
			 document.getElementById('carname2').style.display="";
			 document.getElementById('carname3').style.display="none";
			 document.getElementById('carname4').style.display="none";
		}
		if(selectList.options[selectList.selectedIndex].value == "big"){
			document.getElementById('carname').style.display="none";
			 document.getElementById('carname1').style.display="none";
			 document.getElementById('carname2').style.display="none";
			 document.getElementById('carname3').style.display="";
			 document.getElementById('carname4').style.display="none";
		}
		if(selectList.options[selectList.selectedIndex].value == "suv"){
			document.getElementById('carname').style.display="none";
			 document.getElementById('carname1').style.display="none";
			 document.getElementById('carname2').style.display="none";
			 document.getElementById('carname3').style.display="none";
			 document.getElementById('carname4').style.display="";
		}

	}
</script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
*{
	font-family: 'OTWelcomeRA';
}
/* 차종류 크기및 조정 */
#carname,#carname1,#carname2,#carname3,#carname4{
	background-color:#E0E0E0;
	height:38px;
	width:250px;
	margin-right:25px;
	border:2px solid black;
	border-radius:5px;
	text-align: center;
}
/* 사이즈조절 */
.carsize{
	width:250px;
	height:38px;
}
/* 글씨체 조정 */
.reform{
	font-weight:bold;	
}
/* 검색폼태그 이미지 */
#search span{
	width:900px;
	text-align: right;	
	margin-top:7px;
	padding-bottom:9px;
}
/* 검색폼태그 input */
.inputsize{
	border-radius:5px;
	margin-top:7px;
	height:30px;
}
/* 검색 버튼 사이즈 조정 */
.icon{
	width:20px;
	height:20px;
}
/* 검색폼 위치조정 */
#findSearch{
	margin-top:5px;
}
/* 검색폼태그 사이즈조정 */
#searchtitle{
	background-color:#E0E0E0;
	height:38px;
	width:250px;
	margin-right:25px;
	border:2px solid black;
	border-radius:5px;
	text-align: center;
}
/* 검색 폼 태그 */
#search{
	margin:auto auto auto 300px;;
	
}
/* 상품 이미지 */
#productimg{
	margin-left:25px;
	width:250px;
	height:250px;
}
/* 상품 가격 리스트 로고 이미지 조정 */
#productlogoimg{
	margin-left:15px;
	width:120px;
	height:30px;
}
/* 캘린더 사이즈조정 */
.date{
	font-weight:bold;
	padding-left:5px;
	border:none;
	background-color:#E0E0E0;
	text-align: center;
	height:20px;
}
/* 시간 */
#time{
	font-weight:bold;
	border:none;
	background-color:#E0E0E0;
	margin-left:-6px;
	text-align: center;
	height:20px;
}
/* 자동차 타입 위치조정 */
#carResult{
	background-color:#E0E0E0;
	height:38px;
	width:100px;
	margin:auto 10px auto 20px;
	border:2px solid black;
	border-radius:5px;
	text-align: center;
}
/* 캘린더 시간 검색 */
#calendertime1{
	background-color:#E0E0E0;
	border:2px solid black;
	border-radius:5px;
	text-align: center;
	padding-top:5px;
	height:15px;
	margin:-10px 10px auto auto; 
}
#calendertime2{
	background-color:#E0E0E0;
	border:2px solid black;
	border-radius:5px;
	text-align: center;
	padding-top:5px;
	height:15px;
}
.productmap{
	border:2px solid black;
	float:left;
	width:330px;
	height:400px;
	margin:15px auto 15px 130px;
	border-radius:5px;
}
/* 상품자동차 큰틀조정 */
.productcar{
	text-align:center;
	margin:15px auto 15px auto;
	width:750px;
	height:260px;
	border:2px solid black;
	border-radius:5px;
	
}
/* 상품 자동차 이미지 왼쪽 조정 */
.productcar img{
	margin:20px 20px auto 20px;
	float:left;
}
/* 상품 설명 텍스트 조정 */
.producttext{
	margin-top:10px;
	font-weight:bold;
}
/* 상품 설명 텍스트 조정 */
.producttext p{
	margin:0px 0px 0px 0px;
}
/* 상품확인 버튼 */
#buttonstyle{
	border-radius:5px;
	margin:auto 20px 20px auto;
}
/* 이벤트칸 조정 */
#event{
	border:2px solid black;
	width:350px;
	height:400px;
	float:right;
	margin:15px 110px 15px 30px;
	border-radius:5px;
}
</style>
</head>
<body>
<form id="search" action="${contextPath}/goods/rentsearchWord.do" method="get"> 
		<hr id="product_hr">
 		<span id="findSearch">
 		<img class="icon" alt="car_icon" src="${contextPath}/resources/image/car.png"> <!-- 검색창 왼쪽 자동차아이콘 -->
		<select id="carResult" name="carResult" onchange="cartype()">
			  <option value="all">차종</option>
			  <option value="mini">소형</option>
			  <option value="medium">중형</option>
			  <option value="big">대형</option>
			  <option value="suv">SUV</option>
		</select>
			<select id="carname" name="carname">
				  <option selected>차종류를 정해주세요.</option>
			</select>
			<select id="carname1" name="carname1" style="display:none;">
				  <option selected>소형</option>
				  <option value="cona">코나</option>
				  <option value="avante">아반데</option>
				  <option value="k3">k3</option>
				  <option value="cona">코나</option>
				  <option value="seltos">셀토스</option>
				  <option value="xm3">xm3</option>
				  <option value="niro">니로</option>
				  <option value="ioniq">아이오닉</option>
			</select>
			<select id="carname2" name="carname2" style="display:none;">
			  <option selected>중형</option>
			  <option value="sonata">쏘나타</option>
			  <option value="k5">K5</option>	
			  <option value="xm6">xm6</option>			   
			  <option value="gv80">gv80</option>
			</select>
			<select id="carname3" name="carname3" style="display:none;">
				  <option selected>대형</option>
				  <option value="grenger">그렌져</option>
				  <option value="g80">g80</option>
			</select>
			<select id="carname4" name="carname4" style="display:none;">
				  <option selected>SUV</option>
				  <option value="seltos">셀토스</option>
				  <option value="santafe">산타페</option>
				  <option value="tosan">투싼</option>
				  <option value="gv80">gv80</option>
				  <c:forEach items=""></c:forEach>
			</select>
		</span>
 		<span class="reform">출발일 </span><span id="calendertime1"> 
 		<input class="date" type="date" name="start"/> <!-- 출발달력 -->
			<input id="time" type="time" name="time"/><!-- 출발시간 -->
		</span>
 		<span class="reform">도착일 </span><span id="calendertime2"> 
 		<input class="date" type="date" name="End"/> <!-- 도착달력 -->
			<input id="time" type="time" name="time"/><!-- 도착시간 -->
		</span>	
   	   	<button type="submit" class="btn btn-link">
	       	<img class="icon" src="${contextPath}/resources/image/search.png" alt="검색"> <!-- submit 검색버튼 -->
	    </button>
</form>


 <!-- for 문으로 돌려야하는데......... DB연결해야 확인가능하네........ㅠㅠ -->

 
 	 <div class="productmap">
 		<!-- 지도를 표시할 div 입니다 -->
		<div id="map" style="width:325.5px;height:395.5px;"></div>
		
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
 	 <div id="event">

 	</div>
 <c:choose>
 	<c:when test="${carsize eq 'mini'}">
 	<c:forEach begin="0" end="3">
 	<form class="productcar" action="${contextPath}/goods/goodsRentDetail.do" method="get">
 		<div>
 			<img alt="소형이미지" src="${contextPath}/resources/image/car.png" width="250px" height="200">
 		</div>
 		<div class="producttext">
 			<h6 style="font-weight:bold;">자동차 이름</h6>
 			<p>소형 소형</p>
 			<hr>
 			<p style="color:red;">무료취소 [72시간이내]</p>
 			<p>무제한 주행거리포함.</p>
 			<p>연료정책: 인수시와 동일.</p>
 		</div>
 		<div class="productprice" class="producttext">
 			<p style="color:blue; font-weight:bold;">금액 : (임시) 원.</p>
 			<button id="buttonstyle" type="submit">상품 확인</button> <!-- 상세페이지버튼 -->
 			<button id="buttonstyle" type="submit">장바 구니</button>	<!-- 장바구니담기버튼 -->
 		</div>
 	</form>
 	</c:forEach>
 	</c:when>
 	
 	 <c:when test="${carsize eq 'medium'}">
 	<c:forEach begin="0" end="3">
 	<form class="productcar" action="${contextPath}/goods/goodsRentDetail.do" method="get">
 		<div>
 			<img alt="중형이미지" src="${contextPath}/resources/image/car.png" width="250px" height="200">
 		</div>
 		<div class="producttext">
 			<h6 style="font-weight:bold;">자동차 이름</h6>
 			<p>중형 중형</p>
 			<hr>
 			<p style="color:red;">무료취소 [72시간이내]</p>
 			<p>무제한 주행거리포함.</p>
 			<p>연료정책: 인수시와 동일.</p>
 		</div>
 		<div class="productprice" class="producttext">
 			<p style="color:blue; font-weight:bold;">금액 : (임시) 원.</p>
 			<button id="buttonstyle" type="submit">상품 확인</button> <!-- 상세페이지버튼 -->
 			<button id="buttonstyle" type="submit">장바 구니</button>	<!-- 장바구니담기버튼 -->
 		</div>
 	</form>
 	</c:forEach>
 	</c:when>
 	
 	 <c:when test="${carsize eq 'big'}">
  	<c:forEach begin="0" end="3">
 	<form class="productcar" action="${contextPath}/goods/goodsRentDetail.do" method="get">
 		<div>
 			<img alt="대형이미지" src="${contextPath}/resources/image/car.png" width="250px" height="200">
 		</div>
 		<div class="producttext">
 			<h6 style="font-weight:bold;">자동차 이름</h6>
 			<p>대형 대형</p>
 			<hr>
 			<p style="color:red;">무료취소 [72시간이내]</p>
 			<p>무제한 주행거리포함.</p>
 			<p>연료정책: 인수시와 동일.</p>
 		</div>
 		<div class="productprice" class="producttext">
 			<p style="color:blue; font-weight:bold;">금액 : (임시) 원.</p>
 			<button id="buttonstyle" type="submit">상품 확인</button> <!-- 상세페이지버튼 -->
 			<button id="buttonstyle" type="submit">장바 구니</button>	<!-- 장바구니담기버튼 -->
 		</div>
 	</form>
 	</c:forEach>
 	</c:when>
 	
 	 <c:when test="${carsize eq 'suv'}">
 	 	<c:forEach begin="0" end="3">
 	<form class="productcar" action="${contextPath}/goods/goodsRentDetail.do" method="get">
 		<div>
 			<img alt="SUV이미지" src="${contextPath}/resources/image/car.png" width="250px" height="200">
 		</div>
 		<div class="producttext">
 			<h6 style="font-weight:bold;">자동차 이름</h6>
 			<p>SUV SUV</p>
 			<hr>
 			<p style="color:red;">무료취소 [72시간이내]</p>
 			<p>무제한 주행거리포함.</p>
 			<p>연료정책: 인수시와 동일.</p>
 		</div>
 		<div class="productprice" class="producttext">
 			<p style="color:blue; font-weight:bold;">금액 : (임시) 원.</p>
 			<button id="buttonstyle" type="submit">상품 확인</button> <!-- 상세페이지버튼 -->
 			<button id="buttonstyle" type="submit">장바 구니</button>	<!-- 장바구니담기버튼 -->
 		</div>
 	</form>
 	</c:forEach>
 	</c:when>
 	
 	<c:otherwise>
 		 	<c:forEach begin="0" end="3">
 	<form class="productcar" action="${contextPath}/goods/goodsRentDetail.do" method="get">
 		<div>
 			<img alt="SUV이미지" src="${contextPath}/resources/image/car.png" width="250px" height="200">
 		</div>
 		<div class="producttext">
 			<h6 style="font-weight:bold;">자동차 이름</h6>
 			<p>초기 화면</p>
 			<hr>
 			<p style="color:red;">무료취소 [72시간이내]</p>
 			<p>무제한 주행거리포함.</p>
 			<p>연료정책: 인수시와 동일.</p>
 		</div>
 		<div class="productprice" class="producttext">
 			<p style="color:blue; font-weight:bold;">금액 : (임시) 원.</p>
 			<button id="buttonstyle" type="submit">상품 확인</button> <!-- 상세페이지버튼 -->
 			<button id="buttonstyle" type="submit">장바 구니</button> 	<!--onclick사용해야함 장바구니담기버튼 -->
 		</div>
 	</form>
 	</c:forEach>
 	</c:otherwise>
 	
 </c:choose>

</body>
</html>