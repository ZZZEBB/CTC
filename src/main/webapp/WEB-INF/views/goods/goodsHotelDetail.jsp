<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>호텔 상세 페이지</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<link href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.js"></script>
	<script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<script>
	  $(document).ready(function() {
	    $("#datepicker").datepicker({
	      dateFormat: "yy-mm-dd"
	    });
	  });
	</script>
	<script>
	  $(document).ready(function() {
	    $("#datepicker1").datepicker({
	      dateFormat: "yy-mm-dd"
	    });
	  });
	</script>
	<script type="text/javascript">
		function add_cart(goods_code) {
			$.ajax({
				type : "post",
				async : false, //false인 경우 동기식으로 처리한다.
				/* Ajax를 이용해 장바구니에 추가할 상품 번호를 전송합니다. */
				url : "${contextPath}/cart/addGoodsInCart.do",
				data : {
					goods_code:goods_code
					
					
				},
				success : function(data, textStatus) {
					//alert(data);
				//	$('#message').append(data);
				/* 장바구니에 추가하면 알림창을 표시 */
					if(data.trim()=='add_success'){
						imagePopup('open', '.layer01');	
					}else if(data.trim()=='already_existed'){
						alert("이미 카트에 등록된 상품입니다. 장바구니로 이동합니다.");
						location.href = "${contextPath}/cart/cartList.do";
					}
					
				},
				error : function(data, textStatus) {
					alert("로그인 후 이용해주세요.");
					location.href = "${contextPath}/joinandlogin/loginForm.do";
				},
				complete : function(data, textStatus) {
					//alert("작업을완료 했습니다");
				}
			}); //end ajax	
		}
	
		function imagePopup(type) {
			if (type == 'open') {
				// 팝업창을 연다.
				jQuery('#layer').attr('style', 'visibility:visible');
	
				// 페이지를 가리기위한 레이어 영역의 높이를 페이지 전체의 높이와 같게 한다.
				jQuery('#layer').height(jQuery(document).height());
			}
	
			else if (type == 'close') {
	
				// 팝업창을 닫는다.
				jQuery('#layer').attr('style', 'visibility:hidden');
			}
		}
		
	function fn_order_each_goods(goods_id,goods_title,goods_sales_price){
		var _isLogOn=document.getElementById("isLogOn");
		var isLogOn=_isLogOn.value;
		
		 if(isLogOn=="false" || isLogOn=='' ){
			alert("로그인 후 이용해주세요.");
		} 
		
		
			var total_price,final_total_price;
			/* var order_headcount=document.getElementById("order_headcount"); */
			
			var formObj=document.createElement("form");
			var i_goods_id = document.createElement("input"); 
	    var i_goods_title = document.createElement("input");
	    var i_goods_sales_price=document.createElement("input");
	    /* var i_fileName=document.createElement("input"); */
	    var i_order_headcount=document.createElement("input");
	    
	    i_goods_id.name="goods_id";
	    i_goods_title.name="goods_title";
	    i_goods_sales_price.name="goods_sales_price";
	    /* i_fileName.name="goods_fileName"; */
	    /* i_order_headcount.name="order_headcount"; */
	    
	    i_goods_id.value=goods_id;
	    /* i_order_headcount.value=order_headcount.value; */
	    i_goods_title.value=goods_title;
	    i_goods_sales_price.value=goods_sales_price;
	    /* i_fileName.value=fileName; */
	    
	    formObj.appendChild(i_goods_id);
	    formObj.appendChild(i_goods_title);
	    formObj.appendChild(i_goods_sales_price);
	    /* formObj.appendChild(i_fileName); */
	    formObj.appendChild(i_order_goods_qty);
	
	    document.body.appendChild(formObj); 
	    formObj.method="post";
	    formObj.action="${contextPath}/order/orderEachGoods.do";
	    formObj.submit();
		}	
	</script>
	<style type="text/css">
		#search {
		   margin-bottom: 20px;
		   text-align: center;
		}
		.date{
		   padding-left:5px;
		   border:none;
		   background-color:#E0E0E0;
		   text-align: center;
		   height:20px;
		}
		.carousel {
		    margin-top: 20px;
		}
		.carousel-link .thumb {
			width: 25%;
			cursor: pointer;
			float: left;
		}
		.carousel-link .thumb img {
			width: 100%;
			margin: 2px;
		}
		.carousel-link .thumb:first-of-type img {
			margin-left: 0;
		}
		.carousel-link .thumb:last-of-type img {
			margin-right: 0;
		}
		.item img {
			width: 100%;	
		}
	</style>
</head>
<body>
	<div class = "container">
		<c:forEach var="hotel" items="${hotelList}">
			<div class="mainText">
				<h3>${hotel.goods_name}</h3>
			</div>
			<div class="mainPrice">
			   <p><strong>${hotel.goods_price}</strong><small>&nbsp;총 금액</small></p>
			<div class="select">
			   <select>
			       <option value="" disabled selected>룸 타입 선택</option>
			         <option value="1">싱글</option>
			         <option value="2">더블</option>
			         <option value="3">디럭스 싱글</option>
			         <option value="4">디럭스 더블</option>
			         <option value="5">스위트 싱글</option>
			         <option value="6">스위트 더블</option>
			    </select>
			</div>
	  		<a href="#"><input type=button value="지금 예약"></a>&nbsp;&nbsp;
	        <a class="cart" href="javascript:add_cart('${hotel.goods_code }','order_goods_qty')"><input type=button value="장바구니"></a>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">
								    <img src="${contextPath}/resources/image/hotel/hotel1.jpg">
								</div>
								<div class="item">
									<img src="${contextPath}/resources/image/hotel/hotel2.jpg">
								</div>
								<div class="item">
								    <img src="${contextPath}/resources/image/hotel/hotel3.jpg">
							    </div>
							</div>
							<div class="clearfix">
								<div class="carousel-link">
									<div data-target="#carousel" data-slide-to="0" class="thumb"><img src="${contextPath}/resources/image/hotel/hotel1.jpg"></div>
									<div data-target="#carousel" data-slide-to="1" class="thumb"><img src="${contextPath}/resources/image/hotel/hotel2.jpg"></div>
									<div data-target="#carousel" data-slide-to="2" class="thumb"><img src="${contextPath}/resources/image/hotel/hotel3.jpg"></div>
								</div>
							</div>
					    </div> 
					</div> <!-- /col-sm-6 -->
					<div class="col-sm-6">
						<h2>Products</h2>
						<h3>Some product subhead</h3>
						<p>Product description goes here.  Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>
						<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.</p>
					</div> <!-- /col-sm-6 -->
				</div> <!-- /row -->
			</div> <!-- /container -->
			<div class="explain">
				<hr style = "margin: 0 auto;">
				<p>${hotel.goods_exp}</p>
			</div>
		</c:forEach>
	</div>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>