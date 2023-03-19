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
   <title>EVENT LIST</title>
   <!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"></script>

   <style>
   @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
	   	.event_hr {
			background-color : #808080;
			margin : 0 auto;
			border : none;
			height : 3px;
			margin-top : 20px;
			margin-bottom : 20px;
		}
   </style>
   <script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row" style = "text-align : center;">
			<div class="col-xs12">
				<div id="tab" class="btn-group btn-group-justified" data-toggle="buttons">
					<a href="#all" class="btn btn-default active" data-toggle="tab">
						<input type="radio" style="appearance: none;" />전체
					</a>
					<a href="#hotel" class="btn btn-default" data-toggle="tab">
						<input type="radio" style="appearance: none;" />호텔
					</a>
					<a href="#air" class="btn btn-default" data-toggle="tab">
						<input type="radio" style="appearance: none;" />항공권
					</a>
					<a href="#rent" class="btn btn-default" data-toggle="tab">
						<input type="radio" style="appearance: none;" />렌트
					</a>
					<a href="#package" class="btn btn-default" data-toggle="tab">
						<input type="radio" style="appearance: none;" />패키지
					</a>
				</div>
				<div class="tab-content">
					<div class="tab-pane active" id="all">전체 이벤트 게시물 조회</div>
					<div class="tab-pane" id="hotel">호텔 관련 이벤트 게시물 조회</div>
					<div class="tab-pane" id="air">항공권 관련 이벤트 게시물 조회</div>
					<div class="tab-pane" id="rent">렌트 관련 이벤트 게시물 조회</div>
					<div class="tab-pane" id="package">패키지 이벤트 게시물 조회</div>
				</div>
			</div>
		</div>
		<!--검색창-->
	    <!-- <div class="row justify-content-center" style="margin-top: 10%; height: 30px;">
            <div class="col-md-8">
                <form class="card card-sm border border-0">
                    <div class="card-body row no-gutters align-items-center justify-content-end" style="padding : 5px; line-height: 40px;">
                    <div class="col-auto">
                        <i class="fas fa-search h4 text-body"></i>
                    </div>
                    <div class="col-md-5">
                        <input class="form-control form-control-borderless" type="search" placeholder="검색어를 입력해주세요">
                    </div>
                    <div class="col-auto">
                        <button class="btn btn-primary" type="submit" style="background-color: #004680">Search</button>
                    </div>
                    </div>
                </form>
            </div>
        </div> -->
        <!--/검색창-->
	</div>
    <!-- 이벤트 게시물 조회 -->
    <div class="container">
		<h6 class = "col-md-7 fs-6 fw-bold">전체 프로모션 6 개</h6>
    	<hr class = "event_hr">
        <div class="row justify-content-center">
            <div class="col-md-9">
                <div class="list-group list-group-flush">
                	<!-- <c:choose>
                		<c:when test="${empty eventLists}">
                			<h3>등록된 이벤트가 없습니다.</h3>
                		</c:when>
                		<c:otherwise>
                			<c:forEach var = "event" items = "${eventLists }">
                				<a href="#" class="list-group-item">
			                       	<div class="d-flex w-70">
			                        	<img src="${contextPath}/resources/image/eventImage01.png" width="30%">
			                            <h6 class="mb-1 ms-5" style="height: 15px; line-height: 15px;"><span class = "fs-5 fw-bolder">${event.event_title}</span>
			                            	<small class="smallCaption text-secondary"><br>${event.event_content}<br>${event.event_start_date } ~ ${event.event_end_date }</small>
			                            </h6>
			                            <span class="badge badge-pill badge-light ms-3" style="color: #004680; border: 1px solid #004680; height: 10%;">진행중</span>
			                        </div>
			                    </a>
			                </div>
			                <hr class = "event_hr">
                			</c:forEach>
                		</c:otherwise>
                	</c:choose> -->
                 <div class="list-group list-group-flush">
                    <a href="${contextPath}/board/eventDetail.do" class="list-group-item">
                       	<div class="d-flex w-100">
                        	<img src="${contextPath}/resources/image/eventImage01.png" width="30%">
                        	<span class="badge badge-pill badge-light ms-3" style="color: #004680; border: 1px solid #004680; height: 10%;">이벤트</span>
                            <h6 class="mb-1 ms-5" style="height: 15px; line-height: 15px;">
                            	<span class = "fs-5 fw-bolder">Conrer To Corner 1주년 기념 감사제!</span>
                            	<small class="smallCaption text-secondary"><br>corner to corner 생일파티에 여러분을 초대합니다!<br>2023-03-10 ~ 2023-03-31</small>
                            </h6>
                            <span class="badge badge-pill badge-light ms-3" style="color: #004680; border: 1px solid #004680; height: 10%;">진행중</span>
                        </div>
                    </a>
                </div>
                <hr class = "event_hr col-md-12">
                <div class="list-group list-group-flush">
                    <a href="${contextPath}/board/eventDetail.do" class="list-group-item">
                       	<div class="d-flex w-70">
                        	<img src="${contextPath}/resources/image/eventImage01.png" width="30%">
                            <h6 class="mb-1 ms-5" style="height: 15px; line-height: 15px;"><span class = "fs-5 fw-bolder">Conrer To Corner 1주년 기념 감사제!</span>
                            	<small class="smallCaption text-secondary"><br>corner to corner 생일파티에 여러분을 초대합니다!<br>2023-03-10 ~ 2023-03-31</small>
                            </h6>
                            <span class="badge badge-pill badge-light ms-3" style="color: #004680; border: 1px solid #004680; height: 10%;">진행중</span>
                        </div>
                    </a>
                </div>
                <hr class = "event_hr col-md-12">
                <div class="list-group list-group-flush">
                    <a href="${contextPath}/board/eventDetail.do" class="list-group-item">
                       	<div class="d-flex w-70">
                        	<img src="${contextPath}/resources/image/eventImage01.png" width="30%">
                            <h6 class="mb-1 ms-5" style="height: 15px; line-height: 15px;"><span class = "fs-5 fw-bolder">Conrer To Corner 1주년 기념 감사제!</span>
                            	<small class="smallCaption text-secondary"><br>corner to corner 생일파티에 여러분을 초대합니다!<br>2023-03-10 ~ 2023-03-31</small>
                            </h6>
                            <span class="badge badge-pill badge-light ms-3" style="color: #004680; border: 1px solid #004680; height: 10%;">진행중</span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!--자유게시판_목록-->
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