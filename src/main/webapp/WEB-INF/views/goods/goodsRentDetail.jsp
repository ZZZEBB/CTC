<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="carsize" value=""/>
<c:set var="carName" value=""/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 상품 조회</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
    //뭐지이거..??
	console.log('http://www.abdullahkahriman.com');
	
</script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
*{
	font-family: 'OTWelcomeRA';
	font-weight:bold;
}
/* 상품제목 위치조정 */
.rentDetailtitle{
	margin-left:300px;
}
/* hr태크 길이조정 */
hr{
	width:900px;
	margin-left:300px;
}
/* 상풍 이미지및 설명 위치조정 */
.rentmaintitle{
 	margin-left:300px;
 	float:left;
}
/* 상품 이미지 좌측고정 */
.rentmaintitle img{
 	float:left;
}
/* 상품 상세설명 위치조정 */
.rentmaintitle h5{
	margin-top:10px;
	margin-left:30px;
	float:left;
	width:1100px;
}
/* 아이콘및 설명 */
.minititle{
	margin:15px auto 15px 25px;
	float:left;
	width:1100px;
}
.minititle tr td{
	text-align:center;
	width:1100px;
}
/* 이용시간및 이하 내용 위치조정 */
.minititle1 li {
	margin: 5px auto 5px 25px;
	display : inline-block;
	width : 1100px;
	list-style : none;
	font-size:12px;
}
.minititle1 li img{
	margin: auto 5px auto auto;
}
/* 운전자 정보입력칸 위치조정 */
#licensebox{
	margin:20px auto 20px 300px;
}
/* 지금예약버튼 위치조정 */
#button1{
	margin:20px auto 20px auto;	
}

</style>
</head>
<body>
 <!-- for 문으로 돌려야하는데......... DB연결해야 확인가능하네........ㅠㅠ -->
 <c:choose>
 	<c:when test="${cartype eq '소형'}">
 	<form>
 	<div class="rentDetailtitle">
	 	<h4>렌터카 정보</h4>
	 	<hr>
	</div>
 	<div class="rentmaintitle">
		<img alt="소형이미지" src="${contextPath}/resources/image/car.png" width="400px" height="400px">
		<h5>2022년식 장난감 차(17년~22년)</h5>
	
		<table class="minititle">
			<tr style="list-style: none; display:inline-block;">
				<td style="width:100px;"><img alt="미니카" src="${contextPath}/resources/image/frontcar.png" width="35px" height="25px">소형</td>
				<td style="width:100px;"><img alt="좌석" src="${contextPath}/resources/image/seat.png" width="35px" height="25px">4인승</td>
				<td style="width:105px;"><img alt="핸들" src="${contextPath}/resources/image/handle.png" width="35px" height="25px">자동변속</td>
				<td style="width:100px;"><img alt="기름" src="${contextPath}/resources/image/gasoline.png" width="35px" height="25px">휘발유</td>
			</tr>
		</table>
	</div>	
	</form>
 	</c:when>
 	
 	 <c:when test="${cartype eq '중형'}">
 	<form>
 	<div class="rentDetailtitle">
	 	<h4>렌터카 정보</h4>
	 	<hr>
	</div>
 	<div class="rentmaintitle">
		<img alt="중형이미지" src="${contextPath}/resources/image/car.png" width="400px" height="400px">
		<h5>2022년식 장난감 차(17년~22년)</h5>
	
		<table class="minititle">
			<tr style="list-style: none; display:inline-block;">
				<td style="width:100px;"><img alt="미니카" src="${contextPath}/resources/image/frontcar.png" width="35px" height="25px">소형</td>
				<td style="width:100px;"><img alt="좌석" src="${contextPath}/resources/image/seat.png" width="35px" height="25px">4인승</td>
				<td style="width:105px;"><img alt="핸들" src="${contextPath}/resources/image/handle.png" width="35px" height="25px">자동변속</td>
				<td style="width:100px;"><img alt="기름" src="${contextPath}/resources/image/gasoline.png" width="35px" height="25px">휘발유</td>
			</tr>
		</table>
	</div>	
	</form>
 	</c:when>
 	
 	 <c:when test="${cartype eq '대형'}">
 	<form>
 	<div class="rentDetailtitle">
	 	<h4>렌터카 정보</h4>
	 	<hr>
	</div>
 	<div class="rentmaintitle">
		<img alt="대형이미지" src="${contextPath}/resources/image/car.png" width="400px" height="400px">
		<h5>2022년식 장난감 차(17년~22년)</h5>
	
		<table class="minititle">
			<tr style="list-style: none; display:inline-block;">
				<td style="width:100px;"><img alt="미니카" src="${contextPath}/resources/image/frontcar.png" width="35px" height="25px">소형</td>
				<td style="width:100px;"><img alt="좌석" src="${contextPath}/resources/image/seat.png" width="35px" height="25px">4인승</td>
				<td style="width:105px;"><img alt="핸들" src="${contextPath}/resources/image/handle.png" width="35px" height="25px">자동변속</td>
				<td style="width:100px;"><img alt="기름" src="${contextPath}/resources/image/gasoline.png" width="35px" height="25px">휘발유</td>
			</tr>
		</table>
	</div>	
	</form>
 	</c:when>
 	
 	 <c:when test="${cartype eq 'suv'}">
	  <form>
	 	<div class="rentDetailtitle">
		 	<h4>렌터카 정보</h4>
		 	<hr>
		</div>
	 	<div class="rentmaintitle">
			<img alt="SUV이미지" src="${contextPath}/resources/image/car.png" width="400px" height="400px">
			<h5>2022년식 장난감 차(17년~22년)</h5>
		
			<table class="minititle">
				<tr style="list-style: none; display:inline-block;">
					<td style="width:100px;"><img alt="미니카" src="${contextPath}/resources/image/frontcar.png" width="35px" height="25px">소형</td>
					<td style="width:100px;"><img alt="좌석" src="${contextPath}/resources/image/seat.png" width="35px" height="25px">4인승</td>
					<td style="width:105px;"><img alt="핸들" src="${contextPath}/resources/image/handle.png" width="35px" height="25px">자동변속</td>
					<td style="width:100px;"><img alt="기름" src="${contextPath}/resources/image/gasoline.png" width="35px" height="25px">휘발유</td>
				</tr>
			</table>
		</div>	
	</form>
 	</c:when>
 	
 	<c:otherwise>
 	<form>
 	<div class="rentDetailtitle">
	 	<h4>렌터카 정보</h4>
	 	<hr>
	</div>
 	<div class="rentmaintitle">
		<img alt="소형이미지" src="${contextPath}/resources/image/car.png" width="400px" height="400px">
		<h5>2022년식 장난감 차(17년~22년)</h5>
	
		<table class="minititle">
			<tr id="minititleOne" style="list-style: none; display:inline-block;">
				<td style="width:100px;"><img alt="미니카" src="${contextPath}/resources/image/frontcar.png" width="35px" height="25px">소형</td>
				<td style="width:100px;"><img alt="좌석" src="${contextPath}/resources/image/seat.png" width="35px" height="25px">4인승</td>
				<td style="width:105px;"><img alt="핸들" src="${contextPath}/resources/image/handle.png" width="35px" height="25px">자동변속</td>
				<td style="width:100px;"><img alt="기름" src="${contextPath}/resources/image/gasoline.png" width="35px" height="25px">휘발유</td>
			</tr>
		</table>
		<ul class="minititle1">
			<li><img alt="캘린더" src="${contextPath}/resources/image/calender.png" width="20px" height="15px">이용일 : <span>날짜</span></li>			
			<li><img alt="시계" src="${contextPath}/resources/image/watch.png" width="20px" height="15px">이용 시간 : <span>시간</span></li>
			<li><img alt="시계" src="${contextPath}/resources/image/watch.png" width="20px" height="15px">인수 장소 : <span>위치</span></li>
			<li><img alt="시계" src="${contextPath}/resources/image/watch.png" width="20px" height="15px">반납 장소 : <span>위치</span></li>
			<li><img alt="시계" src="${contextPath}/resources/image/watch.png" width="20px" height="15px">대여가능 나이 : <span>26세이상</span></li>
			<li><img alt="시계" src="${contextPath}/resources/image/watch.png" width="20px" height="15px">대여가능 운전경력 : <span>1년이상</span></li>
		</ul>
	</div>
	<div id="licensebox">
		<h5>운전자 정보 입력</h5>
		<hr>
		<p>여권상의 영문성, 영문이름과 같지않으면 서비스가 거부될수 있습니다.</p>
		<div>
		<p>면허 번호</p>
		<input type="text" name="license number" placeholder="면허 번호를 입력해주세요.">
		<p>발급 일자</p>
		<input type="text" name="published date" placeholder="예) 20150115"><br>
		
		<button id="button1" type="submit">지금 예약</button>
		</div>
	</div>
	</form>
 </c:otherwise>
 </c:choose>

</body>
</html>