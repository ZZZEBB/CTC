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
   <title>나의 마일리지</title>
   <!-- CSS only -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   <style type="text/css">
      .mainText {
      margin-bottom: 100px;
      }
      .Text {
      margin-left: 250px;
      margin-bottom: 100px;
      }
   </style>
</head>
<body>
<div class = "container">
   <h4 class="mainText">마일리지 확인</h4>
   <p class="Text">배한솔님의 사용가능한 마일리지는 0 입니다.</p>
   <div class="align-baseline" id="mainContent">
      <span class="fs-6">최근 내역 조회</span>
      <a href="#"><span><input type="button" class="btn btn-light btn-outline-dark" value="1개월"></span></a>
      <span><input type="button" class="btn btn-light btn-outline-dark" value="3개월"></span>
      <span><input type="button" class="btn btn-light btn-outline-dark" value="6개월"></span>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
      <span class="fs-6">기간 조회</span>
      <span><input class="date" type="date" name="start"/></span>~
      <span><input class="date" type="date" name="start"/></span>
      <span><input type="submit" class="btn btn-light btn-outline-dark" value="조회"></span>
   </div>
   <br>
   <table class="table" style="width: 80%">
  <thead>
    <tr>
      <th scope="col">일자</th>
      <th scope="col">적립 및 사용처</th>
      <th scope="col">거래구분</th>
      <th scope="col">마일리지</th>
      <th scope="col">예약번호</th>
      <th scope="col">상품코드</th>
      <th scope="col">비고</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
       <td>@mdo</td>
    </tr>
  </tbody>
</table>
   
</div>

<!-- JavaScript Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>