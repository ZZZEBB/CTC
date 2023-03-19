<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
   <script>
   </script>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>HEADER_사업체, 관리자</title>

   <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

   <style>
   @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
   </style>
	<script src = "http://code.jquery.com/jquery-latest.min.js"></script>
    <!-- css 스타일시트 추가 -->
    <!-- <link href="css/headers.css" rel="stylesheet"> -->
</head>
<body>
	<c:choose>
		<c:when test="${loginID=='company' }">
		    <div class="container">
		<div class="container">
			<header class="p-3 mt-2 text">
				<div class="container-fluid">
					<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
						<form class="d-flex me-lg-auto" role="search">
							<a href="${contextPath}/main/main.do" class="navbar-brand mt-2">
								<img src="${contextPath}/resources/image/logo.png" alt="로고" width="40" height="30">
								<img src="${contextPath}/resources/image/ctc.png" alt="이름" width="250" height="30">
							</a>
							<input class="form-control mt-1 ms-4 input-lg " type="search" placeholder="검색어를 입력해주세요" aria-label="Search">
							<button type="submit" class="btn btn-link">
								<img src="${contextPath}/resources/image/search.png" alt="검색" width="15" height="15">
							</button>
						</form>
					
					<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li><a href="#" class="nav-link px-2 text-dark fw-lighter">로그인</a></li>
					<li><a href="#" class="nav-link px-2 text-dark fw-lighter">회원가입</a></li>
					<li><a href="#" class="nav-link px-2 text-dark fw-lighter">고객센터</a></li>
					<li><a href="${contextPath}/company/intro.do" class="nav-link px-2 text-dark fw-lighter">회사소개</a></li>
					</ul>
					</div>
				</div>
			</header>
		</div>
		<div class="row" style = "background-color : #dce4f0; width : 100%; height : 100px; margin-top : 20px; text-align : center;">
			<div class="col-xs12">
				<div id="tab" class="btn-group btn-group-justified" data-toggle="buttons">
					<a href="#prices" class="btn btn-default active fs-5 fw-normal" data-toggle="tab">
						<img src = "${contextPath}/resources/image/booking.png" alt="예약" width="50" height="50">
						<br>
						<input type="radio" value="" style="appearance: none;"/>예약 관리
					</a>
						<a href="#features" class="btn btn-default fs-5 fw-normal" data-toggle="tab">
						<img src = "${contextPath}/resources/image/goods.png" alt="상품" width="50" height="50" style="margin-left: 20px;">
						<br>
						<input type="radio" value="" style="appearance: none;"/>상품관리
					</a>
					<a href="#requests" class="btn btn-default fs-5 fw-normal" data-toggle="tab">
						<img src = "${contextPath}/resources/image/event.png" alt="이벤트" width="50" height="50" style="margin-left: 20px;">
						<br>
						<input type="radio" value="" style="appearance: none;"/>이벤트
					</a>
					<a href="#contact" class="btn btn-default fs-5 fw-normal" data-toggle="tab">
						<img src = "${contextPath}/resources/image/review.png" alt="후기" width="50" height="50" style="margin-left: 20px;">
						<br>
						<input type="radio" value="" style="appearance: none;"/>후기 관리
					</a>
					<a href="#contact" class="btn btn-default fs-5 fw-normal" data-toggle="tab">
						<img src = "${contextPath}/resources/image/qna.png" alt="문의" width="50" height="50" style="margin-left: 20px;">
						<br>
						<input type="radio" value="" style="appearance: none;" />문의 내역
					</a>
					<a href="#contact" class="btn btn-default fs-5 fw-normal" data-toggle="tab">
						<img src = "${contextPath}/resources/image/sales.png" alt="매출" width="55" height="50" style="margin-left: 20px;">
						<br>
						<input type="radio" value="" style="appearance: none;" />매출 관리
					</a>
				</div>
			
			<div class="tab-content">
			<div class="tab-pane active" id="prices">Prices content</div>
			<div class="tab-pane" id="features">Features Content</div>
			<div class="tab-pane" id="requests">Requests Content</div>
			<div class="tab-pane" id="contact">Contact Content</div>
			</div>
			</div>
		</div>
	</div>
    	</c:when>
    	<c:when test="${loginID=='admin' }">
    		<div class="container">
				<div class="container">
					<header class="p-3 mt-2 text">
						<div class="container-fluid">
							<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
								<form class="d-flex me-lg-auto" role="search">
									<a href="${contextPath}/main/main.do" class="navbar-brand mt-2">
										<img src="${contextPath}/resources/image/logo.png" alt="로고" width="40" height="30">
										<img src="${contextPath}/resources/image/ctc.png" alt="이름" width="250" height="30">
									</a>
									<input class="form-control mt-1 ms-4 input-lg " type="search" placeholder="검색어를 입력해주세요" aria-label="Search">
									<button type="submit" class="btn btn-link">
										<img src="${contextPath}/resources/image/search.png" alt="검색" width="15" height="15">
									</button>
								</form>
							
							<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
							<li><a href="#" class="nav-link px-2 text-dark fw-lighter">로그인</a></li>
							<li><a href="#" class="nav-link px-2 text-dark fw-lighter">회원가입</a></li>
							<li><a href="#" class="nav-link px-2 text-dark fw-lighter">고객센터</a></li>
							<li><a href="${contextPath}/company/intro.do" class="nav-link px-2 text-dark fw-lighter">회사소개</a></li>
							</ul>
							</div>
						</div>
					</header>
				</div>
				<div class="row" style = "background-color : #dce4f0; width : 100%; height : 100px; margin-top : 20px; text-align : center;">
					<div class="col-xs12">
						<div id="tab" class="btn-group btn-group-justified" data-toggle="buttons">
							<a href="#features" class="btn btn-default fs-5 fw-normal" data-toggle="tab">
								<img src = "${contextPath}/resources/image/goods.png" alt="상품" width="50" height="50" style="margin-left: 20px;">
								<br>
								<input type="radio" value="" style="appearance: none;"/>상품 관리
							</a>
							<a href="#prices" class="btn btn-default active fs-5 fw-normal" data-toggle="tab">
								<img src = "${contextPath}/resources/image/order.png" alt="주문" width="50" height="50">
								<br>
								<input type="radio" value="" style="appearance: none;"/>주문 관리
							</a>
							<a href="#requests" class="btn btn-default fs-5 fw-normal" data-toggle="tab">
								<img src = "${contextPath}/resources/image/people.png" alt="고객" width="50" height="50" style="margin-left: 20px;">
								<br>
								<input type="radio" value="" style="appearance: none;"/>고객 관리
							</a>
							<a href="#contact" class="btn btn-default fs-5 fw-normal" data-toggle="tab">
								<img src = "${contextPath}/resources/image/board.png" alt="게시판" width="50" height="50" style="margin-left: 20px;">
								<br>
								<input type="radio" value="" style="appearance: none;"/>게시판 관리
							</a>
							<a href="#contact" class="btn btn-default fs-5 fw-normal" data-toggle="tab">
								<img src = "${contextPath}/resources/image/sales.png" alt="매출" width="50" height="50" style="margin-left: 20px;">
								<br>
								<input type="radio" value="" style="appearance: none;" />매출 관리
							</a>
						</div>
					
					<div class="tab-content">
					<div class="tab-pane active" id="prices">Prices content</div>
					<div class="tab-pane" id="features">Features Content</div>
					<div class="tab-pane" id="requests">Requests Content</div>
					<div class="tab-pane" id="contact">Contact Content</div>
					</div>
					</div>
				</div>
			</div>
    	</c:when>
    </c:choose>
    <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>