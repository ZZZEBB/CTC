<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원 회원가입</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
</style>
<!-- css 스타일시트 추가 -->
<link href="${contextPath}/resources/css/joinForm.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
</head>
<body>
	<h3 id="join_member">사업체 회원 가입</h3>
	<form action="${contextPath}/joinAndLogin/addMember.do" method="post">	
	<div id="detail_table">
		<table>
			<tbody>
				<tr class="dot_line">
					<td class="fixed_join">아이디</td>
					<td>
					  <input type="text" name="_member_id"  id="_member_id"  size="20" />
					  <input type="hidden" name="member_id"  id="member_id" />
					  
					  <input type="button"  id="btnOverlapped" value="중복 확인" onClick="fn_overlapped()" />
					</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">비밀번호</td>
					<td>
					<input name="member_pw" type="password" size="20" /><br><br>
					<input name="member_pw" type="password" size="20" placeholder="비밀번호확인" onfocus="this.placeholder=''" onblur="this.placeholder='비밀번호확인'" />
					</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">사업자등록번호</td>
					<td> 
						<input size="10px"  type="text" name="member_ph1"> - <input size="10px"  type="text" name="member_ph2"> - <input size="10px"  type="text"name="member_ph3">
						<br><br>
						<input type="button"  id="btnOverlapped" value="사업자등록번호인증" onClick="" />
					</td>				
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">상호명</td>
					<td><input name="member_name" type="text" size="20" /></td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">대표자명</td>
					<td>
						<input type="text" name="member_rrn" size="20">
					</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">사업체전화번호</td>
					<td> 
						<input size="10px"  type="text" name="member_ph1"> - <input size="10px"  type="text" name="member_ph2"> - <input size="10px"  type="text"name="member_ph3">
					</td>				
				</tr>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">주소</td>
					<td>
					   <input type="text" id="zipcode" name="zipcode" size="10" > <a href="javascript:execDaumPostcode()">우편번호검색</a>
					  <br>
					  <p> 
					   지번 주소:<br><input type="text" id="roadAddress"  name="roadAddress" size="50"><br><br>
					  도로명 주소: <input type="text" id="jibunAddress" name="jibunAddress" size="50"><br><br>
					  나머지 주소: <input type="text"  name="namujiAddress" size="50" />
					 <!--   <span id="guide" style="color:#999"></span> -->
					   </p>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr class="dot_line">
					<td colspan='2'>
					<input type="checkbox" name="" value="" />&nbsp;이용약관동의(필수)<br>
					<input type="checkbox" name="" value="" />&nbsp;개인정보수집 및 이용동의(필수)
					</td>
			</tr>
			</tfoot>
		</table>
		</div>
		
		<div class="clear">
		<br><br>
		<table align=center>
		<tr >
			<td >
				<input type="submit"  value="회원 가입">
			</td>
		</tr>
	</table>
	</div>
</form>	

</body>
</html>