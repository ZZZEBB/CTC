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
   <title>나의 문의내역</title>
   <!-- CSS only -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!--    <script src="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"></script> --> <!-- 오류남 -->
<style>
.tbl table{
      width: 100%; 
      border-top-color:#bed0d9; 
      border-bottom-color:#bed0d9; 
      border-top-width: 2px; 
      border-bottom-width: 2px; 
      border-top-style: solid; 
      border-bottom-style: solid; 
      border-collapse: collapse;
      margin-top:1%;
      /* margin-left: 10%; */
      text-align: center;
}
   
.tbl tr{
      border-bottom-color: #bed0d9;
      border-bottom-width: 1px;
      border-bottom-style: solid;
}
.paginate{
      text-align: center;
}
.right_cont{
      text-align: right;
      
}
.title{
       background-color: #eceff2;
}
</style>   
</head>
<body>
<div class= "container">
   <div id="contents" class="contents">
     <div class="text_wrap big fix">
       <strong class="tit h4">1:1 문의내역</strong>
     </div>
     <div class="tbl">
       <table class="board_type">
         <colgroup>
           <col style="width: 20%;">
           <col>
           <col style="width: 15%;">
           <col style="width: 10%;">
         </colgroup>
         <thead>
           <tr class = "title">
             <th>유형</th>
             <th>제목</th>
             <th>작성일</th>
             <th>답변상태</th>
           </tr>
         </thead>
         <tbody>
           <tr>
             <td colspan="4">
               <div class="data_no">
                 <div class="cont">
                   <strong>상담 문의내역이 없습니다.</strong>
                 </div>
               </div>
             </td>
           </tr>
         </tbody>
       </table>
     </div>
     <div class="paginate_wrap">
       <div class="paginate">
         <div>
           <a href="#none" class="direction prevend" style="display: none;">처음</a>
           <a href="#none" class="direction prev" style="display: none;">이전</a>
           <span>
             <a>1</a>
           </span>
           <a href="#none" class="direction next" style="display: none;">다음</a>
           <a href="#none" class="direction nextend" style="display: none;">끝</a>
         </div>
       </div>
       <span class="right_cont">
         <a href="${contextPath}/board/oneQnaForm.do" class="btn pink">1:1 문의</a> <!-- 고객센터의문의페이지로이동 -->
       </span>
     </div>
   </div>
</div>
	<!-- JavaScript Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>