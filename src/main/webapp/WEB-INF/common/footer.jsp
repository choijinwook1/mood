<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<jsp:include page="../../WEB-INF/common/RecentlyViewProduct.jsp"/>
<!DOCTYPE>
<html>
<head>
<style>
@media (max-width: 767px) {
  #footer .container {
    padding: 10px;
  }
  #footer .copyright {
    text-align: center;
    font-size: 3.2vw; /* or use any other value depending on your preference */
  }
  #footer .names {
    line-height: 1.5;
    font-size: 3.2vw; /* or use any other value depending on your preference */
  }
}

/* 중간 크기 화면에서 위치 변경 */
@media (max-width: 992px) {
  .back-to-top {
    right: 20px;
    bottom: 80px;
    width: 30px;
    height: 30px;
    font-size: 20px;
  }
}

/* 모바일 크기 화면에서 위치 변경 */
@media (max-width: 576px) {
  .back-to-top {
    right: 15px;
    bottom: 80px;
    width: 25px;
    height: 25px;
    font-size: 16px;
  }
}

</style>
</head>
<!-- ======= Footer ======= -->
  <footer id="footer">


    <div class="container" style="font-size:22px;">
      <div class="copyright">
        &copy; Copyright <strong><span style="font-family:궁서; line-height:2.5;">묻:</span><a href="/adminLogin" style="color:white;">mo_od.</a></strong> 2023<br><span style="line-height:2.5;">김남수 　김지애 　장승연 　송준기 　이슬기 　최욱진</span>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

  <script src="/resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/resources/assets/vendor/php-email-form/validate.js"></script>	
	
  <!-- Template Main JS File -->
  <script src="/resources/assets/js/main.js"></script>

</body>
</html>