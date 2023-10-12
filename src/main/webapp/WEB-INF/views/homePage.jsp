<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<html lang="en">
<script src="https://unpkg.com/phosphor-icons"></script>
 <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<jsp:include page="/WEB-INF/common/header.jsp" />
<style>
*{
font-family: 'SUIT-Regular', normal;font-weight:900;
}
.animate__fadeInDown{
 font-size:30px;
}

.animate__fadeInUp {
 font-size:22px;
}

@media (max-width: 991px) {
  #hero .carousel-content h2 {
    font-size: 6vw;
    display: flex;
  justify-content: center; /* 가로축 가운데 정렬 */
  align-items: center; /* 세로축 가운데 정렬 */
  }

  #hero .carousel-content p {
    font-size: 3vw;
    white-space: nowrap;
    display: flex;
  justify-content: center; /* 가로축 가운데 정렬 */
  align-items: center; /* 세로축 가운데 정렬 */
  }
}

@media (max-width: 767px) {
  #hero .carousel-content h2 {
    font-size: 6vw;
    display: flex;
  justify-content: center; /* 가로축 가운데 정렬 */
  align-items: center; /* 세로축 가운데 정렬 */
  }

  #hero .carousel-content p {
    font-size: 3vw;
    white-space: nowrap;
    display: flex;
  justify-content: center; /* 가로축 가운데 정렬 */
  align-items: center; /* 세로축 가운데 정렬 */
  }
}

#portfolio .carousel-item .carousel-content p {
    font-size: 1.25rem;
    line-height: 1.5;
    white-space: nowrap;
  }

  @media (max-width: 767px) {
    #portfolio .carousel-item .carousel-content p {
      font-size: 1.25rem;
      line-height: 1.2;
    }
  }

}

@media screen and (max-width: 767px) {
  .member-info-content a {
    display: block;
    clear: both;
    font-size: 16px;
    margin-top: 10px;
  }
  .member-info-content span {
    display: block;
    clear: both;
    font-size: 16px;
    margin-top: 10px;
  }
}
.img-fluid {
  position: relative;
}

.xi-heart {
  position: absolute;
  top: 10px;
  right: 10px;
  z-index: 999;
  font-size: 25px;
  color:#fa0542;
}
.xi-heart-o {
  position: absolute;
  top: 10px;
  right: 10px;
  font-size: 25px;
}

</style>
<body>

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active" style="background-image: url(resources/assets/img/slide/mood.png);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">나만의 작은 문명 mo_od </h2>
                <p class="animate__animated animate__fadeInUp"> 취향을 가득담은 mo_od를 통해 나만의 문명을 완성하기</p>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item" style="background-image: url(resources/assets/img/slide/mood2.png);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">April & mo_od <i class="fa-solid fa-seedling" style="color: #4bdb12;"></i></h2>
                <p class="animate__animated animate__fadeInUp">4월의 mo_od 아이템들을 만나보기</p>
              </div>
            </div>
          </div>
<input type="hidden" id="userNo" name="userNo" value="${login_info.no}">
          <!-- Slide 3 -->
          <div class="carousel-item" style="background-image: url(resources/assets/img/slide/mood3.png);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">컬러에 담겨진 mo_od </h2>
                <p class="animate__animated animate__fadeInUp">감성을 자극하는 mo_od의 컬러와의 만남 </p>
                
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">
    

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio" style="padding-bottom: 50px; padding-top: 50px;">
      <div class="container">
        <div class="section-title">
          <b style="color: #323232; letter-spacing: 5px;">많은 사랑을 받고있는 상품<i class="fa-solid fa-fire" style="color: #fc490d;"></i></b>
        </div>

       <!--  <div class="row">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active" style="font-size: 20px;">전체보기</li>
              <li data-filter=".filter-app" style="font-size: 20px;">가구</li>
              <li data-filter=".filter-card" style="font-size: 20px;">조명</li>
              <li data-filter=".filter-web" style="font-size: 20px;">수납</li>
            </ul>
          </div>
        </div> -->

        <div class="row portfolio-container">
        
		<c:forEach var="Alist" items="${Alist}" begin="0" end="0">
          <div class="col-lg-4 col-md-6 portfolio-item filter-app" onclick="location.href='/products/${Alist.pro_number }/${Alist.pro_name}/${Alist.pro_img1.substring(0, Alist.pro_img1.lastIndexOf('.'))}'" style="cursor: pointer; margin-bottom: 50px;">
            <div class="portfolio-wrap">
              <img src="resources/assets/img/product/${Alist.pro_img1 }" class="img-fluid" alt="">
               <c:forEach var="cateList" items="${cateList}">
               <c:if test="${cateList.pro_number eq Alist.pro_number}">
              <i class="xi-heart" style="z-index: 999;"></i>
              </c:if>
              </c:forEach>
              <i class="xi-heart-o" style="z-index: 99;" onclick="bucketalert(event)"></i>
              <div class="portfolio-info">
                <h4>${Alist.pro_name }</h4>
                <p><fmt:formatNumber value="${Alist.pro_price}" type="currency" currencySymbol="₩" /></p>
                <div class="portfolio-links">
                </div>
              </div>
            </div>
						<div class="member-info">
							<div class="member-info-content">
								<span style="float: left; font-size:21px;">${Alist.pro_name}</span>
								<span style="float: right; font-size:21px;"><fmt:formatNumber value="${Alist.pro_price}"
										type="currency" currencySymbol="₩" /></span>
							</div>
						</div>
					</div>
					<input type="hidden" value="${Alist.pro_number }" id="pro_number">
<input type="hidden" value="${Alist.pro_name }" id="pro_name">
<input type="hidden" value="${Alist.pro_img1.substring(0, Alist.pro_img1.lastIndexOf('.'))}" id="pro_img">
          </c:forEach>

		<c:forEach var="Blist" items="${Blist}" begin="0" end="0">
          <div class="col-lg-4 col-md-6 portfolio-item filter-card" onclick="location.href='/products/${Blist.pro_number }/${Blist.pro_name}/${Blist.pro_img1.substring(0, Blist.pro_img1.lastIndexOf('.'))}'" style="cursor: pointer">
            <div class="portfolio-wrap">
              <img src="resources/assets/img/product/${Blist.pro_img1 }" class="img-fluid" alt="">
               <c:forEach var="cateList" items="${cateList}">
               <c:if test="${cateList.pro_number eq Blist.pro_number}">
              <i class="xi-heart" style="z-index: 999;"></i>
              </c:if>            
              </c:forEach>
              <i class="xi-heart-o" style="z-index: 99;" onclick="bucketalert(event)"></i>
              <div class="portfolio-info">
                <h4>${Blist.pro_name }</h4>
                <p><fmt:formatNumber value="${Blist.pro_price}" type="currency" currencySymbol="₩" /></p>
                <div class="portfolio-links">                
                </div>
              </div>
            </div>
            
						<div class="member-info">
							<div class="member-info-content">
								<span style="float: left; font-size:21px;">${Blist.pro_name}</span>
								<span style="float: right; font-size:21px;"><fmt:formatNumber value="${Blist.pro_price}"
										type="currency" currencySymbol="₩" /></span>
							</div>
						</div>
          </div>
          </c:forEach>
		<c:forEach var="Clist" items="${Clist}" begin="0" end="0">
          <div class="col-lg-4 col-md-6 portfolio-item filter-web" onclick="location.href='/products/${Clist.pro_number }/${Clist.pro_name}/${Clist.pro_img1.substring(0, Clist.pro_img1.lastIndexOf('.'))}'" style="cursor: pointer">
            <div class="portfolio-wrap">
              <img src="resources/assets/img/product/${Clist.pro_img1 }" class="img-fluid" alt="">
               <c:forEach var="cateList" items="${cateList}">
               <c:if test="${cateList.pro_number eq Clist.pro_number}">
              <i class="xi-heart" style="z-index: 999;"></i>
              </c:if>
              </c:forEach>
              <i class="xi-heart-o" style="z-index: 99;" onclick="bucketalert(event)"></i>
              <div class="portfolio-info">
                <h4>${Clist.pro_name }</h4>
                <p><fmt:formatNumber value="${Clist.pro_price}" type="currency" currencySymbol="₩" /></p>
                <div class="portfolio-links">
                </div>
              </div>
            </div>
            
						<div class="member-info">
							<div class="member-info-content">
								<span style="float: left; font-size:21px;">${Clist.pro_name}</span>
								<span style="float: right; font-size:21px;"><fmt:formatNumber value="${Clist.pro_price}"
										type="currency" currencySymbol="₩" /></span>
							</div>
						</div>
          </div>
          </c:forEach>

          <c:forEach var="Alist" items="${Alist}" begin="1" end="1">
          <div class="col-lg-4 col-md-6 portfolio-item filter-app" onclick="location.href='/products/${Alist.pro_number }/${Alist.pro_name}/${Alist.pro_img1.substring(0, Alist.pro_img1.lastIndexOf('.'))}'" style="cursor: pointer">
            <div class="portfolio-wrap">
              <img src="resources/assets/img/product/${Alist.pro_img1 }" class="img-fluid" alt="">
               <c:forEach var="cateList" items="${cateList}">
               <c:if test="${cateList.pro_number eq Alist.pro_number}">
              <i class="xi-heart" style="z-index: 999;"></i>
              </c:if>
              </c:forEach>
              <i class="xi-heart-o" style="z-index: 99;" onclick="bucketalert(event)"></i>
              <div class="portfolio-info">
                <h4>${Alist.pro_name }</h4>
                <p><fmt:formatNumber value="${Alist.pro_price}" type="currency" currencySymbol="₩" /></p>
                <div class="portfolio-links">
                </div>
              </div>
            </div>
            
						<div class="member-info">
							<div class="member-info-content">
								<span style="float: left; font-size:21px;">${Alist.pro_name}</span>
								<span style="float: right; font-size:21px;"><fmt:formatNumber value="${Alist.pro_price}"
										type="currency" currencySymbol="₩" /></span>
							</div>
						</div>
          </div>
          </c:forEach>

          <c:forEach var="Blist" items="${Blist}" begin="1" end="1">
          <div class="col-lg-4 col-md-6 portfolio-item filter-card" onclick="location.href='/products/${Blist.pro_number }/${Blist.pro_name}/${Blist.pro_img1.substring(0, Blist.pro_img1.lastIndexOf('.'))}'" style="cursor: pointer">
            <div class="portfolio-wrap">
              <img src="resources/assets/img/product/${Blist.pro_img1 }" class="img-fluid" alt="">
              <c:forEach var="cateList" items="${cateList}">
               <c:if test="${cateList.pro_number eq Blist.pro_number}">
              <i class="xi-heart" style="z-index: 999;"></i>
              </c:if>
              </c:forEach>
              <i class="xi-heart-o" style="z-index: 99;" onclick="bucketalert(event)"></i>
              <div class="portfolio-info">
                <h4>${Blist.pro_name }</h4>
                <p><fmt:formatNumber value="${Blist.pro_price}" type="currency" currencySymbol="₩" /></p>
                <div class="portfolio-links">   
                </div>
              </div>
            </div>
            
						<div class="member-info">
							<div class="member-info-content">
								<span style="float: left; font-size:21px;">${Blist.pro_name}</span>
								<span style="float: right; font-size:21px;"><fmt:formatNumber value="${Blist.pro_price}"
										type="currency" currencySymbol="₩" /></span>
							</div>
						</div>
          </div>
          </c:forEach>
          
          <c:forEach var="Clist" items="${Clist}" begin="1" end="1">
          <div class="col-lg-4 col-md-6 portfolio-item filter-web" onclick="location.href='/products/${Clist.pro_number }/${Clist.pro_name}/${Clist.pro_img1.substring(0, Clist.pro_img1.lastIndexOf('.'))}'" style="cursor: pointer">
            <div class="portfolio-wrap">
              <img src="resources/assets/img/product/${Clist.pro_img1 }" class="img-fluid" alt="">
              <c:forEach var="cateList" items="${cateList}">
               <c:if test="${cateList.pro_number eq Clist.pro_number}">
              <i class="xi-heart" style="z-index: 999;"></i>
              </c:if>
              </c:forEach>
              <i class="xi-heart-o" style="z-index: 99;" onclick="bucketalert(event)"></i>
              <div class="portfolio-info">
                <h4>${Clist.pro_name }</h4>
                <p><fmt:formatNumber value="${Clist.pro_price}" type="currency" currencySymbol="₩" /></p>
                <div class="portfolio-links">
                </div>
              </div>
            </div>
						<div class="member-info">
							<div class="member-info-content">
								<span style="float: left; font-size:21px;">${Clist.pro_name}</span>
								<span style="float: right; font-size:21px;"><fmt:formatNumber value="${Clist.pro_price}"
										type="currency" currencySymbol="₩" /></span>
							</div>
						</div>
          </div>
          </c:forEach>
          
          <%--  <c:forEach var="Alist" items="${Alist}" begin="2" end="2">
          <div class="col-lg-4 col-md-6 portfolio-item filter-app" onclick="location.href='/products/${Alist.pro_number }/${Alist.pro_name}/${Alist.pro_img1.substring(0, Alist.pro_img1.lastIndexOf('.'))}'" style="cursor: pointer">
            <div class="portfolio-wrap">
              <img src="resources/assets/img/product/${Alist.pro_img1 }" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>${Alist.pro_name }</h4>
                <p><fmt:formatNumber value="${Alist.pro_price}" type="currency" currencySymbol="₩" /></p>
                <div class="portfolio-links">
                </div>
              </div>
            </div>
          </div>
          </c:forEach>
          
           <c:forEach var="Blist" items="${Blist}" begin="2" end="2">
          <div class="col-lg-4 col-md-6 portfolio-item filter-card" onclick="location.href='/products/${Blist.pro_number }/${Blist.pro_name}/${Blist.pro_img1.substring(0, Blist.pro_img1.lastIndexOf('.'))}'" style="cursor: pointer">
            <div class="portfolio-wrap">
              <img src="resources/assets/img/product/${Blist.pro_img1 }" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>${Blist.pro_name }</h4>
                <p><fmt:formatNumber value="${Blist.pro_price}" type="currency" currencySymbol="₩" /></p>
                <div class="portfolio-links">   
                </div>
              </div>
            </div>
          </div>
          </c:forEach>
          
          <c:forEach var="Clist" items="${Clist}" begin="2" end="2">
          <div class="col-lg-4 col-md-6 portfolio-item filter-web" onclick="location.href='/products/${Clist.pro_number }/${Clist.pro_name}/${Clist.pro_img1.substring(0, Clist.pro_img1.lastIndexOf('.'))}'" style="cursor: pointer">
            <div class="portfolio-wrap">
              <img src="resources/assets/img/product/${Clist.pro_img1 }" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>${Clist.pro_name }</h4>
                <p><fmt:formatNumber value="${Clist.pro_price}" type="currency" currencySymbol="₩" /></p>
                <div class="portfolio-links">
                </div>
              </div>
            </div>
          </div>
          </c:forEach> --%>

        </div>

      </div>
    </section>

  </main><!-- End #main -->
</body>

<script type="text/javascript">
var userNo = $('#userNo').val();
var pro_number = document.getElementById("pro_number").value;
var pro_name = document.getElementById("pro_name").value;
var pro_img = document.getElementById("pro_img").value;
function bucketalert(event) {
	  if (userNo == "") {
	    var login_chk = confirm('장바구니는 로그인이 필요한 서비스입니다.\n로그인페이지로 이동하시겠습니까?');
	    if (login_chk) {
	      event.stopPropagation(); 
	      
	      $.ajax({
	    	  url: '/users/login',
	    	  type: 'POST',
	    	  success: function() {
	    	    window.location.replace('/users/login');
	    	  },
	    	  error: function(xhr, status, error) {
	    	    console.log(status,error,xhr);
	    	  }
	    	});
	    } else {
	      event.stopPropagation(); 
	    }
	  }
	}
</script>
	<jsp:include page="../../WEB-INF/common/footer.jsp" />
</html>