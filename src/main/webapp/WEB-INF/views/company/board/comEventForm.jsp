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
	<title>사업체 이벤트 게시물 등록페이지</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
	<div class = "container ms-2">
		<nav class="text-start" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item active fs-4 fw-bolder" style = "color : #0070c0;" aria-current="page">이벤트 등록</li>
			</ol>
		</nav>
		<form class="row g-3">
			<div class="col-md-6">
				<label for="inputEmail4" class="form-label">Email</label>
				<input type="email" class="form-control" id="inputEmail4">
			</div>
			<div class="col-md-6">
				<label for="inputPassword4" class="form-label">Password</label>
				<input type="password" class="form-control" id="inputPassword4">
			</div>
			<div class="col-12">
				<label for="inputAddress" class="form-label">Address</label>
				<input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
			</div>
			<div class="col-12">
				<label for="inputAddress2" class="form-label">Address 2</label>
				<input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
			</div>
			<div class="col-md-6">
				<label for="inputCity" class="form-label">City</label>
				<input type="text" class="form-control" id="inputCity">
			</div>
			<div class="col-md-4">
				<label for="inputState" class="form-label">State</label>
				<select id="inputState" class="form-select">
					<option selected>Choose...</option>
					<option>...</option>
				</select>
			</div>
			<div class="col-md-2">
				<label for="inputZip" class="form-label">Zip</label>
				<input type="text" class="form-control" id="inputZip">
			</div>
			<div class="col-12">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" id="gridCheck">
					<label class="form-check-label" for="gridCheck">Check me out</label>
				</div>
			</div>
			<div class="col-12">
				<button type = "submit" class = "btn btn-primary btn-md justify-content-end">등록요청</button>
			</div>
		</form>
	</div>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>