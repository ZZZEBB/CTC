<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>1:1문의 등록 페이지</title>
   <!-- CSS only -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<style>
   .tbl table{
      width: 100%; 
      border-top-color:#bed0d9; 
      border-bottom-color:#bed0d9; 
      border-top-width: 3px; 
      border-bottom-width: 3px; 
      border-top-style: solid; 
      border-bottom-style: solid; 
      border-collapse: collapse;
      margin-top:1%;
      /* margin-left: 10%; */
   }
   .tbl tr{
      border-bottom-color: #bed0d9;
      border-bottom-width: 1px;
      border-bottom-style: solid;
   }
   
   .tbl th{
      width: 5%; 
      font-weight: bold; 
      color: dark; 
      background: #cee4ee;
      text-align: center;
   }
   
   .tbl table td{
      padding: 10px 0px 10px 15px;
   }
   
   
   .btn_wrap{
      margin-top: 2%;
   }
</style>

</head>
<body>
<nav class="text-end" style="margin-top:0.5%; text-align:center;" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#" style="text-decoration:none; color:black;">고객센터</a></li>
			<li class="breadcrumb-item active" aria-current="page">1:1 문의하기</li>
		</ol>
	</nav>
<div class="container">
<div id="contents" class="contents">
      <div class="notice_wrap mt0">
        <strong class="tit">문의하시기 전 확인해 주세요.</strong>
        <div class="clearfix">
          <ul class="list_bul disc">
            <li>고객님의 소중한 의견을 빠르고 정확하게 해결하기 위해 최선을 다하겠습니다.</li>
            <li>예약한 상품에 대한 문의는 예약 대리점을 통해 문의해 주세요.</li>
            <li>예약한 상품의 취소는 예약 대리점을 통해 문의해 주세요. (취소 시 위약금 발생)</li>
            <li>문의에 대한 답변은 <a href="마이페이지의 1:1문의내역" class="">
                <em>[마이페이지&gt;1:1 문의내역]</em>
              </a> 에서 확인할 수 있습니다. </li>
          </ul>
        </div>
      </div>
    </div>  
      <div class="tbl">
        <table>
          <colgroup>
            <col style="width:18%">
            <col>
            <col style="width:18%">
            <col>
          </colgroup>
          <tbody>
            <tr>
              <th>
                <span class="impt">문의유형</span>
              </th>
              <td colspan="3">
                <div class="form_holder select">
                  <div class="select_item w180">
                  
                    <select id="selectDefault01" title="선택" class="has_sb" style="">
                      <option value="-" selected="selected">상담유형</option>
                      <option value="100098931">국내여행</option>
                      <option value="100098932">기타상담</option>
                      <option value="100101116">법인여행</option>
                    </select>
                  </div>
                </div>
              </td>
            </tr>

           <tr>
           <th>작성자</th>
           <td colspan="3">
             <span style="vertical-align:middle;line-height:42px">작성자아이디</span>
           </td>
         </tr>

            <tr>
              <th>예약코드</th>
              <td colspan="3">
                    <div>
                   <input type="text" placeholder="예약코드를 입력해주세요." value="" class="inpt_text v-placeholder" size="25px;">
                   <button type="submit" class="btn">예약확인</button>
                  </div>
                <p class="check_message">예약코드를 등록해 주세요.(예약코드: 영문 2글자 + 숫자 조합)</p>
                <p class="txt billiard">문의내용과 관련된 예약코드를 입력해 주세요. 문의내용과 무관할 경우 입력하지 않으셔도 됩니다.</p>
              </td>
            </tr>
            <tr>
              <th>
                <span class="impt">답변알림수단</span>
              </th>
              <td colspan="3">
                <div class="form_wrap">
                  <span class="form_holder radio">
                    <input type="radio" name="radioDefault" value="S" id="radioDefault01" checked="checked" class="inpt_radio">
                    <label for="radioDefault01" class="label_radio">휴대폰 번호받아오기</label>
                  </span>
                  <span class="form_holder radio" style="padding-left:90px">
                    <input type="radio" value="E" name="radioDefault" id="radioDefault02" class="inpt_radio">
                    <label for="radioDefault02" class="label_radio">이메일 번호받아오기</label>
                  </span>
                  <span>
                    <a href="#" class="btn sml" style="width:120px;margin-top:-7px">정보수정</a> <!-- 마이페이지 회원정보수정으로 이동 -->
                  </span>
                </div>
                <p class="txt billiard" style="margin-top:10px">답변이 등록되면 선택하신 (카카오 알림톡, 미설치 시 SMS 문자) 또는 이메일로 알림을 드립니다. <br> 휴대폰 / 이메일 정보 수정은 <a href="/com/mpg/CHPC0MPG0105M200" class="">
                    <em>[마이페이지&gt;회원정보 수정]</em>
                  </a> 메뉴를 이용해 주세요. </p>
              </td>
            </tr>
            <tr>
              <th>
                <span class="impt">제목</span>
              </th>
              <td colspan="3">
                <div class="form_holder" style="width:755px">
                  <input type="text" title="제목" placeholder="제목을 입력해 주세요." value="" class="inpt_text v-placeholder" style="width:100%;">
                </div>
              </td>
            </tr>
            <tr>
              <th>
                <span class="impt">문의내용</span>
              </th>
              <td colspan="3">
                <div class="form_holder v-placeholder" style="width:775px">
                  <textarea rows="10" placeholder="최대 2500자까지 입력 가능합니다. 문의할 내용을 입력해 주세요." style="width:100%;"></textarea>
                  <div class="char_count_group">
                    <span class="char_count">0</span> / 2500
                  </div>
                </div>
              </td>
            </tr>
             <tr>
              <th>파일첨부</th>
              <td colspan="3">
                <div class="file_attach_wrap">
                  <ul>
                      <ul>
                        <li>
                          <span class="img">
                            <img src="" alt="" style="display:none;">
                          </span>
                          <a class="cls" style="cursor:pointer;display:none;">삭제</a>
                          <span class="img" style="display:;"></span>
                          <a class="add" style="cursor:pointer;display:;" >추가</a>
                          <input type="file" style="display:none;"  >
                        </li>
                        <li>
                          <span class="img">
                            <img src="" alt="" style="display:none;" >
                          </span>
                          <a class="cls" style="cursor:pointer;display:none;" >삭제</a>
                          <span class="img" style="display:;"  ></span>
                          <a class="add" style="cursor:pointer;display:;" >추가</a>
                          <input type="file" style="display:none;" >
                        </li>
                        <li>
                          <span class="img">
                            <img src="" alt="" style="display:none;" >
                          </span>
                          <a class="cls" style="cursor:pointer;display:none;">삭제</a>
                          <span class="img" style="display:;"  ></span>
                          <a class="add" style="cursor:pointer;display:;">추가</a>
                          <input type="file" style="display:none;" >
                        </li>
                      </ul>
                  </ul>
                </div>
                <p class="txt billiard">&there4;&nbsp;개당 3MB 미만의 <strong>BMP, GIF, JPG, JPEG, PNG, TIF</strong> 파일만 등록 가능합니다. </p>
                <p class="txt billiard">&there4;&nbsp;상품과 무관한 내용이거나 음란 및 불법적인 내용은 통보 없이 삭제될 수 있습니다.</p>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      
      <div class="btn_wrap" align="center" >
        <a href="#" class="btn big gray">취소</a>
        <button class="btn big pink">등록</button>
      </div>
    </div>
   <!-- JavaScript Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>