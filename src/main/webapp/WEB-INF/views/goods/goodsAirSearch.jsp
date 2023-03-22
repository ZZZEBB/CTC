<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>Insert title here</title>
<!-- CSS only -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript">
//출발지에따라 도착지가 변경되는창
 function chageStartSelect(){ 
   
   var selectList = document.getElementById("searchtitle1")
   
   if(selectList.options[selectList.selectedIndex].value == "제주"){
      alert("출발지가 제주로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="";
      document.getElementById('searchtitletwo2').style.display="none";
   }
   if(selectList.options[selectList.selectedIndex].value == "인천"){
      alert("출발지가 인천으로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "김포"){
      alert("출발지가 김포로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "김해"){
      alert("출발지가 김해로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "부산"){
      alert("출발지가 부산으로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "대구"){
      alert("출발지가 대구로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "청주"){
      alert("출발지가 청주로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "부산"){
      alert("출발지가 부산으로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }

} 



</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');

#searchtitle1 , #searchtitletwo1 , #searchtitletwo2 , #searchtitletwo{
	width:250px;
	margin-right:50px;
	border:2px solid #4DD7F9;
	border-radius:5px;
	text-align: center;
}

#searchtitle1,#searchtitletwo , #searchtitletwo1 , #searchtitletwo2 , #searchtitletwo option{
	background-color:#8DE4FC;
}
#calender{
	background-color:#8DE4FC;
	border:2px solid #4DD7F9;
	border-radius:5px;
	height:33px;
	text-align: center;
}
hr{
	width:20%;
}
.productTag{
	margin:auto 10px;
}
</style>
</head>
<body>
<form class="container row col" style="text-align:center; margin-left:11%;" id="search" action="${contextPath}/goods/goodsAirKeyWordSearch.do" method="get"> 
   <div class = "container">
      <hr id="product_hr" class="container">
       <span>
       <img class="icon" alt="car_icon" src="${contextPath}/resources/image/flight/air.png" width = "25px"> <!-- 검색창 왼쪽 비행기아이콘 -->
       <select id="searchtitle1" name="searchtitle1" onchange="chageStartSelect()">
           <option value="" selected>출발지를 선택해주세요.</option>
           <option value="서울김포">서울/김포</option>
           <option value="부산김해">부산/김해</option>
           <option value="제주">제주</option>
           <option value="대구">대구</option>
           <option value="울산">울산</option>
           <option value="청주">청주</option>
           <option value="무안">무안</option>
           <option value="광주">광주</option>
           <option value="여수">여수</option>
           <option value="포항경주">포항경주</option>
           <option value="양양">양양</option>
           <option value="사천">사천</option>
           <option value="군산">군산</option>
           <option value="횡성원주">횡성/원주</option>
      </select>
       
        <img class="icon" alt="car_icon" src="${contextPath}/resources/image/flight/air.png" width = "25px">
       <select id="searchtitletwo" name="searchtitletwo">
           <option selected>도착지를 선택해주세요.</option>
      </select>
           <select id="searchtitletwo1" name="searchtitletwo1" style="display:none;">
           <option value="" selected>도착지를 선택해주세요.</option>
       	   <option value="김포">김포</option>
           <option value="인천">인천</option>
           <option value="김해">김해</option>
           <option value="부산">부산</option>
           <option value="청주">청주</option>
           <option value="대구">대구</option>
      </select> 
    <select class="container" id="searchtitletwo2" name="searchtitletwo2" style="display:none;" onchange="chageEndSelect()">
           <option value="" selected>도착지를 선택해주세요.</option>
           <option value="김포">김포</option>
           <option value="인천">인천</option>
           <option value="제주">제주</option>
           <option value="김해">김해</option>
           <option value="부산">부산</option>
           <option value="청주">청주</option>
           <option value="대구">대구</option>
      </select>
      
       출발일 : <input id="calender" class="date" type="date" name="start"/>
     <!--   <input id="calender" type="time" name="time"/> 출발시간 -->
       </span>
            <button type="submit" class="btn btn-link">
             <img class="icon" src="${contextPath}/resources/image/flight/search.png" alt="검색" 	width="20px" height="20px"> <!-- submit 검색버튼 -->
       </button>
   </div>
</form>

<!-- for문 돌릴예정 -->
<c:forEach var="product" items="${keyword}" >
<form class="container row col" style="text-align:center; margin-left:11%;">
	<div id="product_center" class="container container d-flex align-items-end justify-content-center" style="margin:10px auto;">
	<p style="margin:0px;">${product.flight_airline}</p> <!-- 항공사이름 -->
	<img alt="가격할인배너이미지" src="${contextPath}/resources/image/flight/sale.png" width="30px" height="25px"> <!-- 가격 할인 이미지 -->
	<img alt="가격할인배너이미지" src="${contextPath}/resources/image/flight/Mileagelogo.jpg" width="100px" height="25px"> <!-- 가격 할인 이미지 -->
	<img alt="가격할인배너이미지" src="${contextPath}/resources/image/flight/sale2.png" width="25px;" height="25px"> <!-- 가격 할인 이미지 -->
	 <span class="product_time"><span class="productTag">${product.flight_departure_date}</span><span class="productTag">${product.flight_departure_time}</span><span class="productTag">${product.flight_departures}공항</span>
	 <img alt="air_mini" src="${contextPath}/resources/image/flight/air.png" width="15px" height="15px">
	 <span class="productTag">${product.flight_arrival_date}</span><span class="productTag">${product.flight_arrival_time}</span><span class="productTag">${product.flight_arrivals}공항</span>
	 <span class="product_price">가격 : ${product.flight_saleprice}원</span>
		 <span class="button_css">
			<button type="submit">지금예약</button>
			<button type="submit">장바구니</button>
		</span>
	</span>
	</div>
	<hr id="product_hr">
</form>	
</c:forEach>
   <!-- JavaScript Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   
   
   

</body>
</html>