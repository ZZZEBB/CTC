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
   <title>이벤트 게시판</title>
   <!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"></script>

   <style>
	   	.event_hr {
	   		box-sizing : border-box;
			background-color : #808080;
			margin : 30px auto;
			border : none;
			height : 2px;
		}
   </style>
   <script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <script>
   	
   </script>
</head>
<body>
	<div class="container">
		<ul class="nav nav-pills justify-content-center" id="myTab" role="tablist">
		  <li class="nav-item" role="presentation">
		    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#all" type="button" role="tab" aria-controls="home" aria-selected="true">전체</button>
		  </li>
		  <li class="nav-item" role="presentation">
		    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#hotel" type="button" role="tab" aria-controls="profile" aria-selected="false">호텔</button>
		  </li>
		  <li class="nav-item" role="presentation">
		    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#flight" type="button" role="tab" aria-controls="contact" aria-selected="false">항공권</button>
		  </li>
		  <li class="nav-item" role="presentation">
		    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#rent" type="button" role="tab" aria-controls="contact" aria-selected="false">렌트</button>
		  </li>
		  <li class="nav-item" role="presentation">
		    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#package" type="button" role="tab" aria-controls="contact" aria-selected="false">패키지</button>
		  </li>
		</ul>
		<div class="tab-content" id="myTabContent">
		  <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="home-tab">
		  	<h6 class = "col-md-7 fs-6 fw-bold">전체 프로모션 n개</h6>
		  	<hr class = "event_hr">
			  	<div class="row justify-content-center">
			  		<div class="col-md-9">
			  			<div class="list-group list-group-flush">
			  				<c:choose>
								<c:when test="${empty eventLists}">
									<h3>등록된 이벤트가 없습니다.</h3>
								</c:when>
								<c:otherwise>
									<c:forEach var = "event" items = "${eventLists}">
										<div class="d-flex w-70 list-group-item">
											<img src="${contextPath}/resources/image/event/eventImage01.png" width="30%">
											<span class="badge badge-pill badge-light ms-3" style="color: #004680; border: 1px solid #004680; height: 10%;">${event.event_category}</span>
											<h6 class="mb-1 ms-5" style="height: 15px; line-height: 15px;"><span class = "fs-5 fw-bolder">${event.event_title}</span>
												<small class="smallCaption text-secondary"><br>${event.event_content}<br>${event.event_start_date} ~ ${event.event_end_date}</small>
											</h6>
											<span class="badge badge-pill badge-light ms-3" style="color: #004680; border: 1px solid #004680; height: 10%;">${event.event_status}</span>
										</div>
										<div class="d-flex justify-content-end">
											<a class = "btn btn-primary btn-sm" href="${contextPath}/board/eventDetail.do?event_num=${event.event_num}">자세히 보기</a>
										</div>
										<hr class = "event_hr col-md-12">
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</div>
	            	</div>
	        	</div>
    		</div>
		  </div>
		  <div class="tab-pane fade" id="hotel" role="tabpanel" aria-labelledby="profile-tab">
		  	<h6 class = "col-md-7 fs-6 fw-bold">호텔 프로모션 n 개</h6>
		  	<hr class = "event_hr">
			  	<div class="row justify-content-center">
			  		<div class="col-md-9">
			  			<div class="list-group list-group-flush">
			  				<c:choose>
								<c:when test="${empty eventLists}">
									<h3>등록된 이벤트가 없습니다.</h3>
								</c:when>
								<c:otherwise>
									<c:forEach var = "event" items = "${eventLists}">
										<a href="${contextPath}/board/eventDetail.do?event_num=${event.event_num}" class="list-group-item">
											<div class="d-flex w-70">
												<img src="${contextPath}/resources/image/event/eventImage01.png" width="30%">
												<span class="badge badge-pill badge-light ms-3" style="color: #004680; border: 1px solid #004680; height: 10%;">${event.event_category}</span>
												<h6 class="mb-1 ms-5" style="height: 15px; line-height: 15px;"><span class = "fs-5 fw-bolder">${event.event_title}</span>
													<small class="smallCaption text-secondary"><br>${event.event_content}<br>${event.event_start_date} ~ ${event.event_end_date}</small>
												</h6>
												<span class="badge badge-pill badge-light ms-3" style="color: #004680; border: 1px solid #004680; height: 10%;">${event.event_status}</span>
											</div>
										</a>
										<hr class = "event_hr col-md-12">
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</div>
	            	</div>
	        	</div>
		  </div>
		  <div class="tab-pane fade" id="flight" role="tabpanel" aria-labelledby="contact-tab">
		  
		  </div>
		  <div class="tab-pane fade" id="rent" role="tabpanel" aria-labelledby="contact-tab">
		  
		  </div>
		  <div class="tab-pane fade" id="package" role="tabpanel" aria-labelledby="contact-tab">
		  
		  </div>
		</div>
	</div>
    <!--페이징-->
    <nav class="paging" aria-label="Pagination" style="margin-top: 20px;">
        <ul class="pagination justify-content-center" >
            <li class="page-item"><a class="page-link text-dark" href="#">이전</a></li>
            <li class="page-item"><a class="page-link text-dark" href="#">1</a></li>
            <li class="page-item"><a class="page-link text-dark" href="#">2</a></li>
            <li class="page-item"><a class="page-link text-dark" href="#">3</a></li>
            <li class="page-item"><a class="page-link text-dark" href="#">4</a></li>
            <li class="page-item"><a class="page-link text-dark" href="#">5</a></li>
            <li class="page-item"><a class="page-link text-dark" href="#">다음</a></li>
        </ul>
    </nav>
    <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>