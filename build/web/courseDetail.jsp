<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>CGate</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="css/animate.css">
  
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="css/jquery.timepicker.css">

  
  <link rel="stylesheet" href="css/flaticon.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/go.css">
</head>
<body>
            <%
    String url=request.getRequestURI().toString();
    request.setAttribute("url", url);
    %>
     <script>
var loc = window.location.href;
window.location.href="#show";
</script>
 <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
   <div class="container">
     <a class="navbar-brand" href="home"><span>C</span>Gate</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
       <span class="oi oi-menu"></span> Menu
     </button>

     <div class="collapse navbar-collapse" id="ftco-nav">
       <ul class="navbar-nav ml-auto">
         <li class="nav-item"><a href="home" class="nav-link">Home</a></li>
         <li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
         <li class="nav-item active"><a href="category?cname=all" class="nav-link">Course</a></li>
         <li class="nav-item"><a href="instructor.html" class="nav-link">Instructor</a></li>
         <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
         <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
       </ul>
     </div>
   </div>
 </nav>
 <!-- END nav -->
 
 <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text align-items-end justify-content-center">
      <div class="col-md-9 ftco-animate pb-5 text-center" id="show">
       <p class="breadcrumbs"><span class="mr-2"><a href="home">Home <i class="fa fa-chevron-right"></i></a></span> <span class="mr-2"><a href="category?cname=all">Course <i class="fa fa-chevron-right"></i></a></span> <span>Course Details <i class="fa fa-chevron-right"></i></span></p>
       <h1 class="mb-0 bread">Course Details</h1>
     </div>
   </div>
 </div>
</section>

<section class="ftco-section bg-light">
 <div class="container">
  <div class="row">
   <div class="col-md-4 ftco-animate d-flex align-items-center align-items-stretch">
    <div class="staff-2 w-100">
     <div class="img-wrap d-flex align-items-stretch" id="">
      <div class="img align-self-stretch d-flex align-items-end" style="background-image: url(${coursene.image});">
       <div class="text mb-4 text-md-center">
        <h3>${coursene.name}</h3>
        <span class="position mb-2">${coursene.type}</span>
        <span class="position mb-2"><a href="#">${coursene.tname}</a></span>
        <div class="faded">
         <!-- <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p> -->
       
      </div>
    </div>

  </div>
</div>
</div>
</div>
<div class="col-md-8 d-flex align-items-center">
  <div class="staff-detail w-100 pl-md-5">
   <h3>Giới thiệu khóa học</h3>
   
       
   <p>${coursene.description}</p><br/>
    
      <h5>Ngày khai giảng:  ${coursene.openDate}</h5>
      <p>${coursene.shift}</p>
      <c:if test="${sessionScope.acc==null}">
          <span class="position mb-2"><button class="place-buy-btn js-buy-ticket">Đăng nhập để đăng kí lớp</button></span>
      </c:if>
      <form action="register" method="POST">
          <input type="hidden" name="courseID" value="${coursene.id}"/>
          <c:if test="${sessionScope.acc!=null && status!='Đang học'}">
              <span class="position mb-2"><button type="submit" class="place-buy-btn js-buy-ticket2">Đăng kí lớp</button></span>
      </c:if>
              
              <c:if test="${status=='Đang học'}">
                  <p><a href="${coursene.link}">Link lớp học:  ${coursene.link}</a></p>
                  <p><a href="${coursene.document}">Tài liệu:  ${coursene.document}</a></p>
              </c:if>
              
   </form>
 </div>
</div>
</div>
</div>
</section>
      


<section class="ftco-section bg-light ftco-no-pt">
 <div class="container">
  <div class="row pb-4">
    <div class="col-md-12 heading-section ftco-animate">
      <h2 class="mb-4">Những khóa học liên quan</h2>
    </div>
  </div>
  <div class="row">
      <c:forEach items="${ListCourse}" var="o">
     <div class="col-md-4 ftco-animate">
    <div class="project-wrap">
     <a href="#" class="img" style="background-image: url(${o.image});">
      <span class="price">${o.type}</span>
    </a>
    <div class="text p-4">
      <h3><a href="#">${o.name}</a></h3>
      <p class="advisor">Giảng viên <span> ${o.tname}</span></p>
      <ul class="d-flex justify-content-between">
    
       <li class="price"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${o.price}" /> VND</li>
     </ul>
   </div>
 </div>
</div>
      </c:forEach>
  
</div>
</div>
</section>

<footer class="ftco-footer ftco-no-pt">
  <div class="container">
    <div class="row mb-5">
      <div class="col-md pt-5">
        <div class="ftco-footer-widget pt-md-5 mb-4">
          <h2 class="ftco-heading-2">About</h2>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
          <ul class="ftco-footer-social list-unstyled float-md-left float-lft">
            <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
            <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
            <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
          </ul>
        </div>
      </div>
      <div class="col-md pt-5">
        <div class="ftco-footer-widget pt-md-5 mb-4 ml-md-5">
          <h2 class="ftco-heading-2">Help Desk</h2>
          <ul class="list-unstyled">
            <li><a href="#" class="py-2 d-block">Customer Care</a></li>
            <li><a href="#" class="py-2 d-block">Legal Help</a></li>
            <li><a href="#" class="py-2 d-block">Services</a></li>
            <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
            <li><a href="#" class="py-2 d-block">Refund Policy</a></li>
            <li><a href="#" class="py-2 d-block">Call Us</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md pt-5">
       <div class="ftco-footer-widget pt-md-5 mb-4">
        <h2 class="ftco-heading-2">Recent Courses</h2>
        <ul class="list-unstyled">
          <li><a href="#" class="py-2 d-block">Computer Engineering</a></li>
          <li><a href="#" class="py-2 d-block">Web Design</a></li>
          <li><a href="#" class="py-2 d-block">Business Studies</a></li>
          <li><a href="#" class="py-2 d-block">Civil Engineering</a></li>
          <li><a href="#" class="py-2 d-block">Computer Technician</a></li>
          <li><a href="#" class="py-2 d-block">Web Developer</a></li>
        </ul>
      </div>
    </div>
    <div class="col-md pt-5">
      <div class="ftco-footer-widget pt-md-5 mb-4">
       <h2 class="ftco-heading-2">Have a Questions?</h2>
       <div class="block-23 mb-3">
         <ul>
           <li><span class="icon fa fa-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
           <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+2 392 3929 210</span></a></li>
           <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">info@yourdomain.com</span></a></li>
         </ul>
       </div>
     </div>
   </div>
 </div>
 <div class="row">
  <div class="col-md-12 text-center">

    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
      Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
      <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
    </div>
  </div>
</div>
</footer>

  <div class="modal">
        <div class="modal-container">
            <div class="modal-close">
                <i class="ti-close"></i>
            </div>
            <form action="login" method="POST">
            <header class="modal-header">
                <i class="modal-icon ti-bag"></i>
               
                Đăng nhập
            </header>
                <input type="hidden" name="url" value="${url}" />
            <div class="modal-body">
                <label for="qty" class="modal-label">
                    <i class="ti-shopping-cart"></i>
                    Tài khoản
                </label>
                <input id=qty type="text" class="modal-input" name="username" required>
        
                <label for="password" class="modal-label">
                    <i class="ti-user"></i>
                    Mật khẩu
                </label>
            <input id=email type="password" class="modal-input" name="password" required>

                <button id="pay-ticket" >    
                   Đăng nhập<i class="ti-check"></i>
                </button>
            </div>

            <footer class="modal-footer">
                <p class="modal-help">Đăng kí <a href="signup">tài khoản</a> </p>
            </footer>
            </form>
        </div>
    </div>
            
            

<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

<script>
        const buyBtns = document.querySelectorAll('.js-buy-ticket')
        const modal = document.querySelector('.modal')
        const close = document.querySelector('.ti-close')
        const modalContainer = document.querySelector('.modal-container')
        function showBuyTickets(){
            modal.classList.add('open')
        }
        function closedBuyTickets(){
            modal.classList.remove('open')
        }
        for(const buyBtn of buyBtns){
            buyBtn.addEventListener('click',showBuyTickets)
        }
        close.addEventListener('click',closedBuyTickets)
        modal.addEventListener('click',closedBuyTickets)
        modalContainer.addEventListener('click',function(event){
            event.stopPropagation()
        })
    </script>

</body>
</html>