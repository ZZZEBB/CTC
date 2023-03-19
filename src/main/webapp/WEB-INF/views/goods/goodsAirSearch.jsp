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
   
   var selectList = document.getElementById("searchtitle")
   
   if(selectList.options[selectList.selectedIndex].value == "jeju"){
      alert("출발지가 제주로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="";
      document.getElementById('searchtitletwo2').style.display="none";
   }
   if(selectList.options[selectList.selectedIndex].value == "incheon"){
      alert("출발지가 인천으로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "kimPo"){
      alert("출발지가 김포로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "yangyang"){
      alert("출발지가 양양으로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "muan"){
      alert("출발지가 무안로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "daegu"){
      alert("출발지가 대구로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "cheongju"){
      alert("출발지가 청주로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "busan"){
      alert("출발지가 부산으로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "ulsan"){
      alert("출발지가 울산으로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }
   if(selectList.options[selectList.selectedIndex].value == "yeosu"){
      alert("출발지가 여수로 설정되었습니다.");
      document.getElementById('searchtitletwo').style.display="none";
      document.getElementById('searchtitletwo1').style.display="none";
      document.getElementById('searchtitletwo2').style.display="";
   }

}

</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
   .air_hr {
      background-color : #808080;
      margin : 0 auto;
      border : none;
      height : 3px;
      margin-top : 20px;
      margin-bottom : 20px;
   }
</style>
</head>
<body>

<form id="search" action="${contextPath}/goods/goodsAirKeyWordSearch.do" method="get"> 
   <div class = "container">
      <hr class="air_hr">
       <span>
       <img class="icon" alt="car_icon" src="${contextPath}/resources/image/flight/air.png" width = "25px"> <!-- 검색창 왼쪽 비행기아이콘 -->
       <select id="searchtitle" name="searchtitle1" onchange="chageStartSelect()">
           <option value="" selected>출발지를 선택해주세요.</option>
           <option value="인천">인천</option>
           <option value="김포">김포</option>
           <option value="busan">부산</option>
           <option value="muan">무안</option>
           <option value="daegu">대구</option>
           <option value="cheongju">청주</option>
           <option value="ulsan">울산</option>
           <option value="yeosu">여수</option>
           <option value="jeju">제주</option>
      </select>

       
       <img class="icon" alt="car_icon" src="${contextPath}/resources/image/flight/air.png" width = "25px">
       <select id="searchtitletwo" name="searchtitletwo">
           <option selected>도착지를 선택해주세요.</option>
      </select>
             <select id="searchtitletwo1" name="searchtitletwo1" style="display:none;">
           <option value="" selected>도착지를 선택해주세요.</option>
           <option value="incheon2">(서울)인천</option>
           <option value="kimPo2">(서울)김포</option>
           <option value="yangyang2">양양</option>
           <option value="muan2">무안</option>
           <option value="daegu2">대구</option>
           <option value="cheongju2">청주</option>
           <option value="busan2">부산/김해</option>
           <option value="ulsan2">울산</option>
           <option value="yeosu2">여수</option>
      </select>
      <select class="container" id="searchtitletwo2" name="searchtitletwo2" style="display:none;">
           <option value="" selected>도착지를 선택해주세요.</option>
           <option value="jeju2">제주</option>
      </select>
      
       출발일 : <input class="date" type="date" name="start"/> <!-- 출발달력 -->
       </span>
            <button type="submit" class="btn btn-link">
             <img class="icon" src="${contextPath}/resources/image/flight/search.png" alt="검색"> <!-- submit 검색버튼 -->
       </button>
   </div>
</form>
<!-- for문 돌릴예정 -->
<c:forEach var="i" begin="0" end="5">
<form class="container">
   <div id="product_center" class="container" >
   <a class="underscore_del" href="#">임시항공사</a> <!-- 임시 항공사이름 -->
   <img alt="가격할인배너이미지" src="${contextPath}/resources/image/flight/Mileagelogo.jpg" width="100px" height="25px"> <!-- 가격 할인 이미지 -->
   <img alt="가격할인배너이미지" src="${contextPath}/resources/image/flight/Mileagelogo.jpg" width="100px" height="25px"> <!-- 가격 할인 이미지 -->
   <img alt="가격할인배너이미지" src="${contextPath}/resources/image/flight/Mileagelogo.jpg" width="100px" height="25px"> <!-- 가격 할인 이미지 -->
    <span class="product_time"> 06:10 김포공항 <img alt="air_mini" src="${contextPath}/resources/image/flight/air.png" width="15px" height="15px"> 07:30 제주도
    <span class="product_price">가격 : 121,000 원</span>
       <span class="button_css">
         <button class = "btn btn-primary btn-sm" style = "background-color: #00aff0;">지금예약</button>
         <button class = "btn btn-primary btn-sm" style = "background-color: #00aff0;">장바구니</button>
      </span>
   </span>
   </div>
   <hr class = "air_hr">
</form>   
</c:forEach>
   <!-- JavaScript Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>