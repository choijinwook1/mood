<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
   content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.101.0">
<title>결제</title>

<link rel="canonical"
   href="https://getbootstrap.com/docs/4.6/examples/checkout/">
<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">



<style>

.bd-placeholder-img {
   font-size: 1.125rem;
   text-anchor: middle;
   -webkit-user-select: none;
   -moz-user-select: none;
   -ms-user-select: none;
   user-select: none;
}

@media ( min-width : 768px) {
   .bd-placeholder-img-lg {
      font-size: 3.5rem;
   }
}

img {
   width: 15vmin;
   height: 15vmin;
}


ol {
   display: flex;
   flex-wrap: wrap;
   justify-content: center;
   align-items: center;
   margin: 0;
   padding: 0;
   list-style: none;

   
}

li {
   display: flex;
   align-items: center;
   margin: 10px;
   margin-bottom: 0;
}

li .btnspan {
   display: inline-flex;
   justify-content: center;
   align-items: center;
   width: 30px;
   height: 30px;
   border-radius: 50%;
   background-color: #ccc;
   margin-right: 5px;
   font-size: 20px;
   color: #fff;
}
li .btnspan_on{
background-color: #525252;
}

@media only screen and (max-width: 768px) {
   ol {
      bottom: 0;
      left: 0;
      width: 100%;
      background-color: #f8f9fa;
      padding: 10px;
      box-sizing: border-box;
      z-index: 999;
      
   }
   li {
      margin: 5px;
   }
   li .btnspan {
      width: 20px;
      height: 20px;
      font-size: 18px;
   }
}
.order_wrap {
   max-width: 1200px;
   width: 100%;
   margin: auto;
}

@media only screen and (max-width: 768px) {
   .order_wrap {
      max-width: 768px;
   }
}

@media only screen and (max-width: 576px) {
   .order_wrap {
      max-width: 576px;
   }
}

.order_wrap .order_tit {
   overflow: hidden;
   border-bottom: 2px solid #525252;
   margin-bottom: 10px;
}

.order_wrap .order_tit ol {
   float: right;

}

.order_wrap .order_tit h2 {
   float: left;
   font-size: 32px;
   color: #222222;
}

.order_wrap .order_tit ol li {
   float: left;
   font-size: 20px;
   color: #d1d1d1;
}

.order_wrap .order_tit li span {
   font-size: 22px;
   font-weight: bold;
}

.order_wrap .order_tit .page_on {
   color: #525252;
   font-weight: bold;
}
.content_box {
   margin-top: 10px;
}
.mb-3{
 	font-size: 24px;
}


body {
	height:100%;
}
.xi-kakaotalk{
font-size: 30px;
  vertical-align: bottom;
  margin-left: 5px; /* 원하는 만큼 조절 가능 */
}

.btnhover{
font-size: 20px;
font-weight: 700;
background: #525252;
border: none;
border-radius: 50px;
width: 350px;
height: 70px;
padding: 20px;
color:white;
float: right;
margin: 10px;
box-shadow: 1px 1px 1px 1px lightgray; 


}
.btnhover:hover{
background: #323232;
}
.paybtn{
border-radius: 50px;
background: #F9E000;
color: #000;
}
.paybtn:hover{
background: #f9bf00;
}

</style>
<jsp:include page="../../common/header.jsp" />

<link href="form-validation.css" rel="stylesheet">
<!-- jQuery -->
<script type="text/javascript"
   src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

</head>

<body class="bg-light">
   <section id="hero" style="height: 400px;">
      <div class="hero-container">
         <div id="heroCarousel" data-bs-interval="5000"
            class="carousel slide carousel-fade" data-bs-ride="carousel">
            <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

            <div class="carousel-inner" role="listbox">

               <!-- Slide 1 -->
               <div class="carousel-item active"
                  style="background-image: url(/resources/assets/img/slide/order.png); height: 500px;">
                  <div class="carousel-container">
                     <div class="carousel-content">
                        <h2 class="animate__animated animate__fadeInDown">주문 | 결제</h2>
                        <p class="animate__animated animate__fadeInUp">주문하시기 전에
                           회원정보와 결제금액을 반드시 확인하시기 바랍니다.</p>
                        <div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <div class="content_box">
      <div class="order_wrap" style="position: relative;">
         <div class="order_tit">
            <ol style="margin-bottom: 0;">
               <li><span class="btnspan">01</span>장바구니</li>
               <li class="page_on"><span class="btnspan btnspan_on">02</span>주문서작성/결제</li>
               <li><span class="btnspan">03</span>주문완료</li>
            </ol>
         </div>
         </div>

   <div class="container">
      <div class="py-4 text-center"></div>

      <div class="row">

         <form class="needs-validation" novalidate action="/kakaoPay"
            method="post">
            <div class="col-md-12 order-md-1">
               <h2 class="mb-3" style="margin:18px 0 18px 0; color:#323232; font-size: 32px; font-weight: bold;"><i class="xi-user" style="color:#000;"></i> ${login_info.id}님주문 정보</h2>
               <div class="row">
                  <div class="col-md-6 mb-3">
                     <label for="firstName">성　　함 : </label><small>
                        ${login_info.name}</small>
                  </div>
                  <div class="col-md-6 mb-3">
                     <label for="lastName">전화번호 : </label> <small>${login_info.phone}</small>
                  </div>
                  <div class="col-md-6 mb-3">
                     <label for="address">주　　소 : </label> <small>${login_info.adr}</small>
                  </div>
                  <div class="col-md-6 mb-3">
                     <label for="lastName" style="letter-spacing:1px;">E-mail : </label> <small>${login_info.email}</small>
                  </div>
<span style="color: red;">*결제승인시간 기준 24시간 이후, 구매확정상태가되어 결제취소가 불가능합니다.</span>
               </div>


               <hr class="mb-4" style="margin-bottom:2rem !important;">

               <h2 class="mb-3" style="margin:22px 0 22px 0; color:#323232; font-size: 32px; font-weight: bold;"><i class="xi-box" style="color:#000;"></i> 결제상품 정보</h2>
               <c:forEach var="list" items="${list}">
                  <input type="hidden" name="pro_name" value=${list.pro_name }>
                  <input type="hidden" name="pro_number" value="${list.pro_number }">

                  <div class="row">
                     <div class="col-md-6 mb-3">
                        <label for="cc-name"></label> <img alt=""
                           src="${pageContext.request.contextPath}/resources/assets/img/product/${list.pro_img1}"
                           style="width: 100px; height: 100px; margin-bottom: 70px;">
                        <div style="display: inline-block;">
                           <small class="text-muted"><a href="/products/${list.pro_number }/${list.pro_name}/${list.pro_img1}" style="color:#525252;">상품명 : ${list.pro_name}</a><c:if test="${!empty list.pro_option}"><br>옵　션 : ${list.pro_option}</c:if><br>설　명 : ${list.pro_maindesctitle}
                           </small>
                        </div>
                     </div>
                     <div class="col-md-6 mb-3">
                        <label for="cc-number"><span style="letter-spacing:1.5px;">상품금액 : </span><fmt:formatNumber value="${list.pro_price}" type="currency" currencySymbol="₩" /></label><br>
                        <label for="cc-number" style="letter-spacing:4px;">수　 량 : ${list.amount}</label><br>
                        <label for="cc-number"><span style="letter-spacing:1px;">총　금액 : </span><fmt:formatNumber value="${list.total}" type="currency" currencySymbol="₩" /></label>
                     </div>               

                     <hr class="mb-4">
                  </div>
               </c:forEach>
               
               <c:forEach var="onelist" items="${onelist}">
                  <input type="hidden" name="pro_number" value="${onelist.pro_number }">

                  <div class="row">
                     <div class="col-md-6 mb-3">
                        <label for="cc-name"></label> <img alt=""
                           src="${pageContext.request.contextPath}/resources/assets/img/product/${onelist.pro_img1}"
                           title="${onelist.pro_name }"
                           alt="${onelist.pro_name }"
                           style="width: 100px; height: 100px; margin-bottom: 70px;">

                        <div style="display: inline-block;">
                            <small class="text-muted"><a href="/products/${onelist.pro_number }/${onelist.pro_name}/${onelist.pro_img1}" style="color:#525252; letter-spacing:1px;">상품명 : ${onelist.pro_name}</a><c:if test="${!empty onelist.pro_option}"><br>옵　션 : ${onelist.pro_option}</c:if><br>설　명 : ${onelist.pro_maindesctitle}
                           </small>
                        </div>
                     </div>
                     <div class="col-md-6 mb-3">
                        <label for="cc-number"><span style="letter-spacing:1.5px;">상품금액 : </span><fmt:formatNumber value="${onelist.pro_price}" type="currency" currencySymbol="₩" /></label><br>
                        <label for="cc-number" style="letter-spacing:4px;">수　 량 : ${onelist.count}</label><br>
                        <label for="cc-number"><span style="letter-spacing:1px;">총　금액 : </span><fmt:formatNumber value="${onelist.pro_price}" type="currency" currencySymbol="₩" /></label>
                     </div>    
                     <!--  userPaymentDatail에 나중에 ordernumber로 받아서 넘기-->
                     <hr class="mb-4">
                  </div>
                  
                  <c:set var="totalPrice" value="0" />
                  <c:set var="totalPrice" value="${totalPrice + onelist.pro_price}" />
    				<input type="hidden" value="${onelist.pro_name}" name="pro_name"> 
    				<input type="hidden" value="${onelist.pro_price}" name="pro_price"> 
    				<input type="hidden" value="${onelist.pro_number}" name="pro_number"> 
   				 	<input type="hidden" value="${onelist.orderId}" name="orderId"> 
   				 	<input type="hidden" value="${onelist.userno }" name="userno">
    				<button class="paybtn btnhover" type="submit" id="apibtn"><i class="xi-kakaotalk"></i>결제하기 <fmt:formatNumber value="${totalPrice}" type="currency" currencySymbol="₩" />원</button>
    				<button class="btnhover" type="button" id="cancelbtn" onclick="location.href='/products/${onelist.pro_number}/${onelist.pro_name}/${onelist.pro_img1.substring(0, onelist.pro_img1.lastIndexOf('.'))}'">주문 취소</button>
               </c:forEach>

               <c:set var="totalPrice" value="0" />
               <c:forEach var="list" items="${list}">
                  <c:set var="totalPrice" value="${totalPrice + list.pro_price}" />
               </c:forEach>
               <c:forEach var="orderprice" items="${orderprice}" begin="0" end="0">
                  <button class="paybtn btnhover" type="submit" id="apibtn"><i class="xi-kakaotalk"></i>결제하기 <fmt:formatNumber value="${orderprice.price}" type="currency" currencySymbol="₩" />원</button>
                  <button class="btnhover" type="button" id="cancelbtn" onclick="history.go(-1)" >주문 취소</button>
                  <input type="hidden" name="pro_price" value=${orderprice.price }>
                  <input type="hidden" name="orderId" value=${orderprice.orderId }>
                  <input type="hidden" name="userno" value=${login_info.no }>
                  </c:forEach>
                  
            </div>
         </form>
      </div>
   </div>



   </div><br>



   <script
      src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"></script>
   <script>
      window.jQuery
            || document
                  .write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')
   </script>
   <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

   <script src="form-validation.js"></script>


   <jsp:include page="../../common/footer.jsp" />