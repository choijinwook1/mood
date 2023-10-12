<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이디 찾기</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<style type="text/css">
body {
	overflow-x: hidden;
}

label{
	color: #323232;
}

.fonthover {
	color: #323232;
}
.fonthover:hover{
	color: #323232;
}


input[type=text], input[type=email]{
    height:50px;
    border: none;
    border-radius: 0;
    border: 1px solid #999;
    outline: none;
    background: transparent;
    background-color: white;
}

input[type=button] {
    font-color:white;
    font-size:27px;
    cursor: pointer;
    color: white;
   	background: #323232;
	transition: all 0.5s;
    border: 0;
    outline: none;    
}

span.span {
	color: #323232;
}

span.br{
	display: inline-block;
	padding-top: 15px;
}

footer{
	background-color:#f5f6f7;
	padding-top: 50px;
}
input[type=text]:focus, input[type=email]:focus {
	box-shadow: none;
	border: 1px solid #999;
  outline: none;
}

</style>
<jsp:include page="/WEB-INF/common/header.jsp" />
</head>
<body>
	<section id="hero" style="height: 200px;">
		<div class="hero-container">
			<div id="heroCarousel" data-bs-interval="5000"
				class="carousel slide carousel-fade" data-bs-ride="carousel">
				<ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

				<div class="carousel-inner" role="listbox">

					<!-- Slide 1 -->
					<div class="carousel-item active"
						style="background-image: url(resources/assets/img/slide/cate1.jpg); height: 500px;">

						<h2 class="animate__animated animate__fadeInDown"
							style="text-align: center; line-height: 200px;">아이디 찾기</h2>

					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="d-flex align-items-center justify-content-center" style=" background-color:#f5f6f7;">
		<div class="row justify-content-center mt-5">
			<div class="col-md-6">
				<div class="card border-0" style=" background-color:#f5f6f7;">
					<div class="card-body">
						<br>
						<div class="row">

							<div class="card-body">
								<div class="form-group row">
									<label style="padding: 0; margin: 0; font-size: 120%;"   class="col-3 col-form-label" for="email">이메일</label>
									<div class="col-6">
										<input class="form-control" type="email" id="email"
											placeholder="이메일 입력" required autofocus>

									</div>
									<input type="button" value="보내기" class="col-3"
										onclick="emailValidate()">
									<div class="col-3"></div>
									<div class="col-9">
										<span class="span br" id="emailCheck"></span>
									</div>
								</div>

							</div>
							<div class="card-body">
								<div class="form-group row">
									<label style="padding: 0; margin: 0; font-size: 120%;"   class="col-3 col-form-label" for="number">인증번호</label>
									<div class="col-6">
										<input class="form-control" type="text" id="number"
											placeholder="인증번호 입력">
									</div>
									<input type="button" value="확인" class="col-3"
										onclick="numValidate()">
									<div class="col-3"></div>
									<div class="col-9">
										<span class="span" id="time"></span>
									</div>
								</div>
							</div>
							
							<div class="card-body">
								<div class="form-group row">
									<div class="col-3"></div>
									<div class="col-9"><span id="show"></span></div>
								</div>
							</div>
							
							<div class="card-body" style="padding: 0;">
								
									<div class="form-group row">
									
											<div class="col-4">
											<a href="/users/searchPwd" class="fonthover"
												>비밀번호찾기</a>
										</div>
										<div class="col-4"></div>
										<div class="col-4" style="position: relative;">
											<a style="padding: 0; margin: 0; position: absolute; right: 20px;" href="/users/login" class="fonthover">돌아가기</a>
										</div>
									</div>

							</div>
							

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<input type="hidden" id="status" value="id">

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

	<script src="/resources/user/js/findId.js"></script>



</body>
<footer><jsp:include page="/WEB-INF/common/footer.jsp" /></footer>
</html>