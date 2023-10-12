<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<style>

.fonthover {
	color: #323232;

}
.imghover:hover {
	transform: scale(1.2);
}
footer {
	bottom: 0;
	left: 0;
	right: 0;
}
.box_list, .login_li {
   margin: 5px 5px;
   display: inline-block;
}
</style>
<head>
<jsp:include page="/WEB-INF/common/header.jsp" />

<section id="hero" style="height: 350px;">
	<div class="hero-container">
		<div id="heroCarousel" data-bs-interval="5000"
			class="carousel slide carousel-fade" data-bs-ride="carousel">
			<ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

			<div class="carousel-inner" role="listbox">

				<!-- Slide 1 -->
				<div class="carousel-item active"
					style="background-image: url(/resources/assets/img/slide/loginimg.png); height: 500px;">
					<div class="carousel-container">
						<div class="carousel-content" style="position: relative; bottom: 40px;">
							<h2 class="animate__animated animate__fadeInDown">로그인</h2>
							<p class="animate__animated animate__fadeInUp"> 회원만 서비스 이용이 가능합니다 </p>
							<!--                         <div> -->
							<!--                            <a href="#about" -->
							<!--                               class="btn-get-started animate__animated animate__fadeInUp scrollto">Click</a> -->
							<!--                         </div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<meta name="google-signin-client_id"
	content="38260405754-99qf9j81rp019ft343rpp1fmq378qabg.apps.googleusercontent.com">
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="/resources/user/css/login.css" />
<script type="text/javascript" src="/resources/user/js/main.js"></script>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
	charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/user/js/googleLogin.js"></script>
<script async defer src="https://apis.google.com/js/api.js"
	onload="googleGapiLoaded()"></script>
<script async defer src="https://accounts.google.com/gsi/client"
	onload="googleGisLoaded()"></script>
<script>
	const result = "${msg}"
	if (result === "loginmsg") {
		alert('로그인이 필요한 서비스입니다. 로그인페이지로 이동합니다.');
	}
	

</script>

</head>

<body>

	<div class="login">
		<div class="form-login">
			<div class="social-icons">
			 <section id="contact" class="contact">
      <div class="container">
        <div class="form">
          <form action="/users/login" method="post" role="form" class="input-group ">
            <div class="row">
              <div class="col-md-6 form-group" style="padding: 0;">
                <input type="text" class="form-control" name="id" placeholder=" 아이디"  required autofocus style="border-radius: 3px;margin-bottom: 15px; width:343px; ">
                <input type="password" class="form-control" name="pwd" id="pwd" placeholder=" 비밀번호"  required style="border-radius: 3px;margin-bottom: 15px; width:343px;">
              </div>

              <c:if test="${ msg == false }">
						<br>
						<br>
						<p style="color: red; font-size: 15px; margin: 10px 35px 5px;">존재하지 않는 아이디 또는 비밀번호입니다</p>
					</c:if>
					<div class="text-center" style="padding: 0;"><button class="submit hover" style="color: white; height: 60px; width: 340px;">로그인</button></div>
            </div>
            
          </form>
        </div>
			<ul class="login_link_box">
					<li class="login_li"style="margin-left: 0;"><a href="/users/searchId" class="fonthover">아이디
							찾기</a> &nbsp;</li>
		     		<li class="login_li"><a href="/users/searchPwd" class="fonthover">비밀번호
							찾기</a> &nbsp;</li>
					<li class="login_li"><a href="/users/join" class="fonthover">회원가입</a>
						&nbsp;</li>
				</ul>


				<div class="social_login">
					<p class="snsname"
						style="margin-bottom: 10px; margin-top: 38px; color: #323232; font-size: 20px; font-weight: 700">간편
						로그인</p>
					<br>
					<ul class="social_logo" style="height: 80px; margin-left: -20px;">
						<li class="box_list">

<!-- 						   <a id="custom-login-btn" href="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=dClx55_VYi9U61rOGPS2&redirect_uri=http://localhost:8080/users/naverLogin&state=bd5ab073-7709-4a54-b537-86cd901cf301">  -->
						<a id="custom-login-btn" href="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=dClx55_VYi9U61rOGPS2&redirect_uri=http://mo-od.co.kr/users/naverLogin&state=bd5ab073-7709-4a54-b537-86cd901cf301">


								<img style="width: 50px;" src="/resources/user/img/naver.png"
								alt="naver" class="imghover"> <span class="box_list_txt" style="color: #323232;">네이버</span>
						</a>
						</li>
						<li class="box_list">



<!--  	 					<a href="https://kauth.kakao.com/oauth/authorize?client_id=e862dc15e41ee83edaac20240a8bc9e5&redirect_uri=http://localhost:8080/users/kakaoLogin&response_type=code"> -->
						 <a href="https://kauth.kakao.com/oauth/authorize?client_id=e862dc15e41ee83edaac20240a8bc9e5&redirect_uri=http://mo-od.co.kr/users/kakaoLogin&response_type=code">   



								<img style="width: 50px;" src="/resources/user/img/kakao.png"
								alt="kakao" class="imghover"> <span class="box_list_txt" style="color: #323232;">카카오</span>
						</a></li>
						<li class="box_list">
							<button
								style="background: transparent; border-color: transparent;"
								onclick="googleHandleAuthClick()">
								<img style="width: 50px;" src="/resources/user/img/google.png"
									alt="google" class="imghover"> <span class="box_list_txt"
									style="color: #323232;">구글</span>
							</button>
						</li>
					</ul>
					<br>
				</div>
      </div>
    </section>	
			</div>
		</div>
	</div>
</body>
<footer><jsp:include page="/WEB-INF/common/footer.jsp" /></footer>
</html>