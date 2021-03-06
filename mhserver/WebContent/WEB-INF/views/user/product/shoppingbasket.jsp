<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>마켓허리 :: 오늘의 장보기</title>


<style>
/* 소진 */
#SbasketTitle {
	/* 장바구니 제목 */
	text-align: center;
	font-weight: bold;
}

#SbasketExplainTitle, #SbasketNotice {
	/* 페이지 설명글과 장바구니 없음 알림말*/
	text-align: center;
}

#SbasketNotice {
	/* 장바구니 없음 알림말 */
	padding: 80px;
}

#Sbasketline {
	/* 제목 밑에 구분선 */
	width: 1100px;
	border: 0.5px solid #08718e;
}

.SbasketTableline {
	/* 테이블선 */
	width: 1100px;
	border-top: none;
	border-bottom: 1px solid #ccc;
}

#SbasketTable {
	/* checkbox 첫번째 전체 목록*/
	width: 1100px;
	margin: 0px auto;
	font-weight: bold;
}

#SbasketCheckNum {
	/* 상단 메뉴 : '전체선택' */
	margin: 5px;
}

#SbasketInfo {
	/* 상단 메뉴: '상품정보' */
	margin: 350px;
}

#SbasketNum {
	/* 상단메뉴: '수량' */
	margin-right: 97px;
}

#SbasketBottom {
	/* 하단부분 */
	width: 1100px;
	margin: 0px auto;
}

#SbasketAllSelect, #SbasketCheckBox2 {
	/* 하단부분 : checkbox + 전체선택 */
	float: left;
	margin-top: 10px;
	margin-left: 10px;
	font-weight: bold;
}

.SbasketBTN {
	/* 하단부분 : 버튼(선택삭제) */
	background-color: white;
	border: 1px solid #08718e;
	font-weight: bold;
	color: #08718e;
	width: 80px;
	height: 40px;
	margin-left: 20px;
	font-size: 12px;
	outline: none;
}

#SbasketPriceBoxAll {
	/* 금액 박스 전체 */
	width: 1100px;
	padding-top: 70px;
	margin: 0px auto;
}

.SbasketPriceBox {
	/* 금액 박스 class */
	width: 200px;
	height: 170px;
	border: 2px solid #ccc;
	float: left;
	text-align: center;
}

.SbasketOperator {
	/* 연산기호 */
	float: left;
	font-size: 30px;
	padding-top: 35px;
	margin: 30px;
	color: #666666;
}

.BoxTitle {
	/* 상자 안 이름 */
	font-size: 15px;
	padding: 40px;
	color: #666666;
	font-weight: bold;
}

.PriceTitle, .priceTitleWon {
	/* 상자 안 금액 */
	font-size: 18px;
	font-weight: bold;
}

#SbasketPriceBox4 {
	/* 상자 : 결제예정금액 */
	width: 250px;
	background-color: rgb(245, 241, 241);
}

#orderBtnOn {
	/* 주문하기 버튼 감싸기 */
	margin: 0px auto;
	width: 1100px;
	text-align:center;
}

.SbasketOrder {
	/* 주문하기 버튼 */
	display:inline-block;
	width: 160px;
	height: 42px;
	border: none;
	outline: none;
	color: white;
	margin: 80px 0px;
	background-color: #dddfe1;
	cursor:pointer;
}

.FoodCheckbox {
	/* checkbox */
	float: left;
}

.SbasketMenulist {
	/* 음식 전체 틀 */
	width: 1100px;
	margin: 0px auto;
	margin-bottom: 20px;
}

.SbasketPhoto {
	/* 카트 물건 있을때의 사진 */
	width: 65px;
	margin-top: 10px;
	margin-left: 40px;
	float: left;
}

.SbasketFoodName {
	/* 음식 명 */
	font-weight: bold;
	padding-top: 15px;
	margin-left: 150px;
	padding-bottom: 20px;
	width: 300px;
}

.SbasketFoodPrice, #PriceWon {
	/* 돈 + 원 */
	margin-top: 50px;
}

.SbasketFoodPrice {
	/* 돈 */
	padding-left: 40px;
}

.SbasketProcductPrice, .SbasketPriceWon {
	/* 상품금액 : 돈 +원  */
	float: right;
}

.NumBox {
	/* 수량 전체 감싸는 div */
	margin-left: 860px;
	width: 1100px;
}

#NumBox1 {
	/* 메뉴 첫번째 수량 */
	margin-top: -25px;
}

.SbasketReduce, .SbasketSellingNum, .SbasketRise {
	/* - , 수량, + */
	border: 1px solid #ccc;
	float: left;
	width: 25px;
	margin-top: -20px;
	outline: none;
}

.SbasketSellingNum {
	/* 수량 */
	width: 35px;
	text-align: center;
}

.TotalPrice {
	/* 상품금액 틀*/
	float: right;
	width: 100px;
	height: 30px;
	margin-top: -20px;
	margin-right: 25px;
	font-weight: bold;
}

#SbasketBottomPart {
	/* 장바구니 있을 때 하단부분 */
	width: 1100px;
	margin: 0px auto;
}

#SbasketCheckBox3 {
	/* 하단부분 체크박스 */
	float: left;
	margin-top: 12px;
}

#SbasketAllSelect {
	margin-left: 10px;
	margin-right: 5px;
}

#menuline {
	padding-top: 10px;
}
</style>

<%@include file="/WEB-INF/views/inc/header.jsp"%>
<link rel="stylesheet" href="/mh/css/modal.css">
</head>

<!-- body -->
<body>
	<div id="SbasketAllPart">
		<h2 id="SbasketTitle">장바구니</h2>
		<div id="SbasketExplainTitle">주문하실 상품명 및 수량을 정확하게 확인해 주세요.</div>
		<hr id="Sbasketline" />

		<div class="cart-wrap">
			<!-- cart에 물건이 있을 때 -->
			<div>
				<div id="SbasketTable">
					<input type="checkbox" value="choice" class="SbasketCheckBox"
						id="EntireBtn" /> <span id="SbasketCheckNum" class="SbasketTop ">전체선택</span>
					<span class="AllSelectbox2">(</span> <span class="SelectNum">0</span>
					<span class="AllSelectbox2">/</span> <span class="AllSelectNum">0</span>
					<span class="AllSelectbox2">)</span> <span id="SbasketInfo"
						class="SbasketTop">상품정보</span> <span id="SbasketNum"
						class="SbasketTop">수량</span> <span id="SbasketPrice"
						class="SbasketTop">상품금액</span>
				</div>
				<hr class="SbasketTableline" />
				<form method="POST" action="/mh/user/product/orderpage.do" id="selectedproduct">
				<div class="SbasketMenulist">
					<c:forEach items="${list }" var="dto">
						<div class="item">
							<input type="checkbox" class="FoodCheckbox" name="productseq" value="${dto.seq}"> 
							<img src="${dto.img }" class="SbasketPhoto" alt="상품이미지" name="productimg">
							<div class="SbasketFoodName">${dto.name }</div>
							<span class="SbasketFoodPrice">${dto.price }</span> 
							<span class="SbasketPriceWon1">원</span>

							<div class="NumBox" id="NumBox1">
								<button type="button" class="SbasketReduce">-</button>
								<input type="text" value="${dto.qty}" readonly="readonly"
									class="SbasketSellingNum" name="productqty">
								<button type="button" class="SbasketRise">+</button>
							</div>
							<div class="TotalPrice">
								<span class="SbasketPriceWon">원</span> <span
									class="SbasketProcductPrice" id="FirstMenuPrice">${dto.price } </span>
							</div>

							<hr class="SbasketTableline" id="menuline" />
						</div>
					</c:forEach>
				</div>
				</div>

				<div id="noData">
					<!-- cart에 물건이 없을때 -->

					<div id="SbasketNotice">장바구니에 담긴 상품이 없습니다.</div>
					<hr class="SbasketTableline" />
				</div>
			</div>


			<div id="SbasketBottomPart">
				<input type="button" id="selectedDelBtn" class="SbasketBTN" value="선택 삭제">
				
			</div>
			<div id="SbasketPriceBoxAll">
				<div id="SbasketPriceBox1" class="SbasketPriceBox">
					<div class="BoxTitle">상품금액</div>
					<span class="PriceTitle" id="ProductPrice">0</span> <span
						class="priceTitleWon">원</span>
				</div>

				<div id="SbasketMinus" class="SbasketOperator">-</div>

				<div id="SbasketPriceBox2" class="SbasketPriceBox">
					<div class="BoxTitle">상품할인금액</div>
					<span class="PriceTitle" id="DiscountPrice">0</span> <span
						class="priceTitleWon">원</span>
				</div>

				<div id="SbasketMinus" class="SbasketOperator">+</div>

				<div id="SbasketPriceBox3" class="SbasketPriceBox">
					<div class="BoxTitle">배송비</div>
					<span class="PriceTitle">0</span> <span class="priceTitleWon">원</span>
				</div>

				<div id="SbasketMinus" class="SbasketOperator">=</div>

				<div id="SbasketPriceBox4" class="SbasketPriceBox">
					<div class="BoxTitle">결제예정금액</div>
					<span class="PriceTitle" id="ExpectedPrice">0</span> <span
						class="priceTitleWon">원</span>
				</div>
				
				<input type="hidden" name="ogprice" id="ogprice"> 
				<input type="hidden" name="slPrice" id="slPrice">
				<input type="hidden" name="flprice" id="flprice">
				
				<div style="clear: both;"></div>
			</div>

			<!-- 주문하기 버튼 -->
		</form>
			<div id="orderBtnOn">
				<button class="SbasketOrder" id="SbasketBtnOn"
					style="background-color: #08718e;" >주문하기</button>

			</div>
		</div>
	<!-- 장바구니 카트 전체 div -->
	<!-- top button -->
	<a href="#" id="topbtn" style="border: 0px; outline: none;"></a>
	<%@include file="/WEB-INF/views/inc/footer.jsp"%>
	
	<div id="modal"></div>
	
	<div class="modal_common noMore">
		<a href="javascript:;" class="close">X</a>
		<p class="title">알림메세지</p>
		<div class="con">최대 50개까지 구매하실 수 있습니다.</div>
		<div>
			<input type="button" value="확인" href="javascript:;" class="yes">
		</div>
	</div>

	<div class="modal_common pleaseMore">
		<a href="javascript:;" class="close">X</a>
		<p class="title">알림메세지</p>
		<div class="con">최소 1개 이상 구매하실 수 있습니다.</div>
		<div>
			<input type="button" value="확인" href="javascript:;" class="yes">
		</div>
	</div>

	<!-- script start -->
	<script>
	  var countAllNum = 0;
      var countSelectNum = 0;

      // 장바구니 없음 보여주고 아님 말고
      if ($(".item").length != 0) {
          $("#noData").hide();

      } else if ($(".item").length == 0) {
          $('#noData').show()
          $("#SbasketBtnOn").hide();
          $("#menuline").hide();
      }

      //전체선택 checkbox 개수
      countAllNum = $(".item").length;
      $(".AllSelectNum").text(countAllNum);

      //전체선택 체크박스 클릭
      $(".SbasketCheckBox").click(function () {
    	 
          //전체선택 체크박스가 체크된상태일경우
          if ($(".SbasketCheckBox").prop("checked")) {
              //input type 이 checkbox인 경우 전부 선택
              $("input[type=checkbox]").prop("checked", true);

              //선택되어진 checkbox 개수 세기
              countSelectNum = $("input:checkbox[name=productseq]:checked").length;
              $(".SelectNum").text(countSelectNum);
			 
              var totalPrice = 0 ;
              $(".item").each(function(index,item){
                  var price = $(item).find(".SbasketFoodPrice").text().replace(",","");
                  var qty = $(item).find(".SbasketSellingNum").val();
                  
                  totalPrice += (price * qty);
              })
              $("#ProductPrice").text(numberWithCommas(totalPrice));

          } else {
              //input type 이 checkbox인 경우 전부 해제
              $("input[type=checkbox]").prop("checked", false);

              //선택되어진 checkbox 개수 세기
              countSelectNum = $("input:checkbox[name=productseq]:checked").length;
              $(".SelectNum").text(countSelectNum);
              $("#ProductPrice").text(0);
          }
      });

      // + 버튼 클릭
      $(".SbasketRise").click(function(){
    	  var pseq = $(this).parent().parent().find(".productseqbox").val();
          var qty = parseInt($(this).parent().find(".SbasketSellingNum").val());
          var price = parseInt($(this).parent().parent().find(".SbasketFoodPrice").text().replace(",",""));
          
          if(qty < 50){
              $(this).parent().find(".SbasketSellingNum").val(qty+1);
              var newPrice = numberWithCommas(price * $(this).parent().find(".SbasketSellingNum").val());
              $(this).parent().parent().find(".TotalPrice").find(".SbasketProcductPrice").text(newPrice);
              
              $.ajax({
            	  type:"GET",
            	  url:"/mh/user/product/shoppingbasketok.do",
            	  data:"type=0&pseq="+pseq,
            	  dataType: "text",
            	  succuess: function(result){
            	  },
            	  error: function(a,b,c){
            		  console.log(a,b,c);
            	  }
              });
          } else {
              openModal("noMore");
          }

          var checkbox = $(this).parent().parent().find(".FoodCheckbox");

          if(checkbox.prop("checked")==true){
              var newPrice = 0;
              $("input[class='FoodCheckbox']:checked").each(function(index, item){
                  newPrice += parseInt($(item).parent().find(".TotalPrice").find(".SbasketProcductPrice").text().replace(",",""));
              });
              $("#ProductPrice").text(numberWithCommas(newPrice));
          }
      })

      // - 버튼 클릭
      $(".SbasketReduce").click(function(){
		  var pseq = $(this).parent().parent().find(".productseqbox").val();
          var qty = parseInt($(this).parent().find(".SbasketSellingNum").val());
          var price = parseInt($(this).parent().parent().find(".SbasketFoodPrice").text().replace(",",""));

          if( qty > 1 ){
              $(this).parent().find(".SbasketSellingNum").val(qty-1);
              var newPrice = numberWithCommas(price * $(this).parent().find(".SbasketSellingNum").val());
              $(this).parent().parent().find(".TotalPrice").find(".SbasketProcductPrice").text(newPrice);
              
              $.ajax({
            	  type:"GET",
            	  url:"/mh/user/product/shoppingbasketok.do",
            	  data:"type=1&pseq="+pseq,
            	  dataType: "text",
            	  succuess: function(result){
            	  },
            	  error: function(a,b,c){
            		  console.log(a,b,c);
            	  }
              });
          } else {
              openModal("pleaseMore");
          }

          var checkbox = $(this).parent().parent().find(".FoodCheckbox");

          if(checkbox.prop("checked")==true){
              var newPrice = 0;
              $("input[class='FoodCheckbox']:checked").each(function(index, item){
                  newPrice += parseInt($(item).parent().find(".TotalPrice").find(".SbasketProcductPrice").text().replace(",",""));
              });
              $("#ProductPrice").text(numberWithCommas(newPrice));
          }
      })

      // 체크박스 클릭
      $(".FoodCheckbox").click(function(){
    	  $(".SelectNum").text($("input[class='FoodCheckbox']:checked").length);
    	  
    	  var price = 0;
          
          if($(this).prop("checked")==false){
              $("input[class='FoodCheckbox']:checked").each(function(index, item){
                  price += parseInt($(item).parent().find(".TotalPrice").find(".SbasketProcductPrice").text().replace(",",""))
                  * $(item).parent().find(".NumBox").find(".SbasketSellingNum").val();
              });
              $("#ProductPrice").text(numberWithCommas(price));
          } 

          else {
              $("input[class='FoodCheckbox']:checked").each(function(index, item){
                  price += parseInt($(item).parent().find(".TotalPrice").find(".SbasketProcductPrice").text().replace(",",""))
                  * $(item).parent().find(".NumBox").find(".SbasketSellingNum").val();
              });
              $("#ProductPrice").text(numberWithCommas(price));
          }

      });

	  // 선택 삭제 버튼 클릭
	  $("#selectedDelBtn").click(function(){
		  var selectedSeq = new Array() ;
		  // 선택된 것들 삭제
		  $("input[class='FoodCheckbox']:checked").each(function(index,item){
			  $(item).parent().remove();
			  selectedSeq.push($(item).parent().find(".FoodCheckbox").val());
		  });
		  if($("input[class='FoodCheckbox']:checked").length == 1){}
		  // 디비에서 삭제
		  $.ajax({
        	  type:"GET",
        	  url:"/mh/user/product/shoppingbasketok.do",
        	  data:"type=2&selectedSeq="+selectedSeq,
        	  dataType: "text",
        	  succuess: function(result){
        	  },
        	  error: function(a,b,c){
        		  console.log(a,b,c);
        	  }
          });
		  
		  // 이후 총 금액 재 계산
		  var totalPrice = 0 ;
		  $("input[class='FoodCheckbox']:checked").each(function(index,item){
              var price = $(item).find(".SbasketFoodPrice").text().replace(",","");
              var qty = $(item).find(".SbasketSellingNum").val();
              
              totalPrice += (price * qty);
          })
          
          $("#ProductPrice").text(numberWithCommas(totalPrice));
		  
		  // 전체 물품수 변경
		  $(".AllSelectNum").text($(".item").length);
		  
		  // 선택 물품수 변경
		  $(".SelectNum").text($("input[class='FoodCheckbox']:checked").length);
	  });
	  
	  // onchange는 input 태그에 적용되는 것, 또한 html 내용이 변경되는 것을 감지하려면 onchange를 사용하는 것이 아니라 DOM변경을 감지하는 이벤트(DOMSubtreeModified)를 씁니다.
	  // https://www.phpschool.com/gnuboard4/bbs/board.php?bo_table=qna_html&wr_id=281733
			  
	  var salesper = ${per};
		$('#ProductPrice').on('DOMSubtreeModified propertychange', function() {
			  var salesprice = Math.floor(parseInt($("#ProductPrice").text().replace(",","")) * salesper * 0.1) * 10 ;
			  $("#DiscountPrice").text(numberWithCommas(salesprice));
			  var finalprice = parseInt($("#ProductPrice").text().replace(",","")) - salesprice;
			  $("#ExpectedPrice").text(numberWithCommas(finalprice));
		});
	 
	  
	 	// 전송하기
	$("#SbasketBtnOn").click(function(){
		if($("input[class='FoodCheckbox']:checked").length > 0){
			$("input[class='FoodCheckbox']:checked").each(function(index, item){
				var seq = $(item).val();
				var name = $(item).parent().find(".SbasketFoodName").text();
				var price = $(item).parent().find(".SbasketFoodPrice").text().replace(",","");
				var qty = $(item).parent().find(".NumBox").find(".SbasketSellingNum").val();
				var img = $(item).parent().find(".SbasketPhoto").attr("src");
				
				$(item).attr("value",seq + "," + name + "," + price + "," + qty + "," + img);
			});
				
				
			$("#ogprice").attr("value",$("#ProductPrice").text().replace(",",""));
			$("#slPrice").attr("value",$("#DiscountPrice").text().replace(",",""));
			$("#flprice").attr("value",$("#ExpectedPrice").text().replace(",",""));
			
			$("#selectedproduct").submit();
	}
		else {
			alert("상품을 최소 1개 이상 선택해주세요.");
			return;
		}
	});
   
    
    // 천단위 , 찍기
    function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }

    function removeComma(x){
        return parseInt(x.replace(",",""));
    }
    </script>
	<script src="/mh/js/main.js"></script>
	<script src="/mh/js/modal.js"></script>
</body>
</html>