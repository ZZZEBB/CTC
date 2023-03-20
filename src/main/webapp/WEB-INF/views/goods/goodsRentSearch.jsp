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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-responsive.css">

<script>

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
		
 		
 		<!-- <span class="reform">출발일 </span><span id="calendertime1"> 
 		<input class="date" type="date" name="start"/> 
			<input id="time" type="time" name="time"/>
		</span>
 		<span class="reform">도착일 </span><span id="calendertime2"> 
 		<input class="date" type="date" name="End"/>
			<input id="time" type="time" name="time"/>
		</span>	
   	   	<button type="submit" class="btn btn-link">
	       	<img class="icon" src="${contextPath}/resources/image/search.png" alt="검색"> 
	    </button> -->
	    
	    <!-- 은빈 대여일시~반납일시 폼 -->
	    <div class="container">
		    <div class="row">
		        <div class='col-sm-6'>
		            <div class="form-group">
		                <div class='input-group date' id='datetimepicker1'>
		                    <input type='text' class="form-control" />
		                    <span class="input-group-addon">
		                        <span class="glyphicon glyphicon-calendar"></span>
		                    </span>
		                </div>
		            </div>
		        </div>
		        <script type="text/javascript">
		            $(function () {
		                $('#datetimepicker1').datetimepicker();
		            });
		        </script>
		    </div>
		</div>
	    
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
			<button type="submit" class="btn btn-link">
		  		<img class="icon" src="${contextPath}/resources/image/search.png" alt="검색"> 
		  	</button>
		</span>
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