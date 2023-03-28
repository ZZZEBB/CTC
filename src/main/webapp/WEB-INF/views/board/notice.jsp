<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>공지사항 게시판</title>
   <!-- CSS only -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   <style>
   
   </style>
   <script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
   <nav class="container col-md-7" style="margin-top:0.5%;" aria-label="breadcrumb">
   <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="#" style="text-decoration:none; color:black;">고객센터</a></li>
      <li class="breadcrumb-item active" aria-current="page">공지사항</li>
   </ol>
   </nav>
   <div class="container">
      <ul class="nav nav-tabs nav-fill justify-content-center mt-3" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
          <button class="nav-link active" id="all-tab" data-bs-toggle="tab" data-bs-target="#all" type="button" role="tab" aria-controls="home" aria-selected="true">전체</button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="general-tab" data-bs-toggle="tab" data-bs-target="#hotel" type="button" role="tab" aria-controls="hotel" aria-selected="false">일반</button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="info-tab" data-bs-toggle="tab" data-bs-target="#flight" type="button" role="tab" aria-controls="flight" aria-selected="false">안전정보</button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="service-tab" data-bs-toggle="tab" data-bs-target="#rent" type="button" role="tab" aria-controls="rent" aria-selected="false">서비스</button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="pre-tab" data-bs-toggle="tab" data-bs-target="#package" type="button" role="tab" aria-controls="package" aria-selected="false">당첨자발표</button>
        </li>
      </ul>
      <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
           <!-- <hr class = "event_hr"> -->
              <div class="row justify-content-center">
                 <div class="col-md-9">
                    <div class="list-group list-group-flush">
                     <a href="#" class="list-group-item">
                        
                        <div class="d-flex w-70">
                           <table class="table table-hover table-bordered">
                       <thead>
                         <tr>
                           <th scope="col">번호</th>
                           <th scope="col">구분</th>
                           <th scope="col">제목</th>
                           <th scope="col">등록일</th>
                         </tr>
                       </thead>
                       <c:forEach var="notice" items="${notice}">
                       <tbody>
                         <tr>
                           <th scope="row">${notice.notice_num}</th>
                           <td>${notice.notice_div}</td>
                           <td>${notice.notice_title}</td>
                           <td>${notice.notice_write_date}</td>
                         </tr>
                  <!--        <tr>
                           <th scope="row">2</th>
                           <td>Jacob</td>
                           <td>Thornton</td>
                           <td>@fat</td>
                         </tr>
                         <tr>
                           <th scope="row">3</th>
                           <td>Larry the Bird</td>
                           <td>Thornton</td>
                           <td>@twitter</td>
                         </tr> -->
                       </tbody>
                       </c:forEach>
                     </table>
                     
                       </div>
                     </a>
                     </div>
                  </div>
              </div>
          </div>
        </div>
        <div class="tab-pane fade" id="hotel" role="tabpanel" aria-labelledby="general-tab">
           <div class="row justify-content-center">
              <div class="col-md-9">
                 <div class="list-group list-group-flush">
                  <a href="#" class="list-group-item">
                     <div class="d-flex w-70">
                        <img src="${contextPath}/resources/image/event/eventImage01.png" width="30%">
                        <span class="badge badge-pill badge-light ms-3" style="color: #004680; border: 1px solid #004680; height: 10%;">dddd</span>
                        <h6 class="mb-1 ms-5" style="height: 15px; line-height: 15px;"><span class = "fs-5 fw-bolder">공지사항</span>
                           <small class="smallCaption text-secondary"><br>공지사항내용</small>
                        </h6>
                     </div>
                  </a>
                  </div>
              </div>
           </div>
        </div>
        <div class="tab-pane fade" id="flight" role="tabpanel" aria-labelledby="info-tab">
        
        </div>
        <div class="tab-pane fade" id="rent" role="tabpanel" aria-labelledby="service-tab">
        
        </div>
        <div class="tab-pane fade" id="package" role="tabpanel" aria-labelledby="pre-tab">
        
        </div>
      </div>
   <!-- JavaScript Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>