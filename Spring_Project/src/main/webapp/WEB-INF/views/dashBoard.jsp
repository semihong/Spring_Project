<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>

 <head>
    <title>Vacation </title>
    <meta charset="utf-8">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>    
  <script src="resources//js/button.js"></script>



 <script type="text/javascript" src="../resources/plugins/jQuery/jquery-3.4.1.js"></script>
    
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Modern Trip- Start Booking Here</title>

  <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resources/css/modern-business.css" rel="stylesheet">

 <!--booststrap-->
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="resources/css/fonts/font-awesome.min.css" rel="stylesheet">
      <!-- //font-awesome icons -->
      <!--stylesheets-->
<!-- //font-awesome icons -->
      <!--stylesheets-->
      <link href="resources/css/style.css" rel='stylesheet' type='text/css' media="all">
     
      <link href="resources/css/dashboard.css" rel='stylesheet' type='text/css' media="all">


</head>
<style>


</style>


<body>
<form>
  <!-- Navigation -->
  
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark  fixed-top" style="background-color: #FF5E00">
    <div class="container">
      <a class="navbar-brand" a href="http://localhost:8080/test/"><img src="resources/images/logo2.png" height="100px" width="100px"></a> 
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="about.html">About</a>
          </li>

          
          <li class="nav-item">
            <a class="nav-link" href="mail?id=${member.id}">FAQ</a>
          </li>
          
   <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             Journey
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
             <!-- 넘기는법 --> <a class="dropdown-item" href="project1?id=${member.id}">ASIA</a>

            </div>
            </li>
          
          <li class="nav-item">
            <a class="nav-link " href="blog" >blog

            </a>
    
          </li>
                   <li class="nav-item">
            <a class="nav-link " href="member"  >
Signup
            </a>
</li>
  <li class="nav-item">
            <a class="nav-link" href="log/login">login</a>
          </li>

  
  <c:if test="${member!=null}">
  <li class="nav-item">
            <a class="nav-link" href="">${member.id} Welcome</a>
 </li>
</c:if>    
      
        <c:if test="${member!=null}">
<li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             My Page
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
         
              <a class="dropdown-item" href="log/logout">Logout</a>
                    
            
              <a class="dropdown-item" href="board/list?member=${member.id}">Review</a>
 </div>
 </li>
 </c:if>

 <c:if test="${member!=null}">
<div class="cart">
<a href="cartList?id=${member.id}"><img src="resources/images/cart.png"   height="45px" width="45px" onclick="showPopup()"></a>
</div>
</c:if>

        </ul>
      </div>
       <div class="brand">
      
<a href="https://www.instagram.com/vacayy_v/"> <img src="resources/images/insta.png" height="35px" width="35px"></a>
<a href="https://www.facebook.com/vacayy.vacayy.5"><img src="resources/images/facebook.png" height="35px" width="40px"></a>
</div> 
    </div>

  </nav>

  <header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="carousel-item active" style="background-image:url('resources/images/dub.jpg') ">
     
     
          <div class="carousel-caption d-none d-md-block">

          </div>
        </div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('resources/images/vacay.jpg')">
          <div class="carousel-caption d-none d-md-block">

          </div>
        </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('resources/images/alps.jpg')">
          <div class="carousel-caption d-none d-md-block">

          </div>
        </div>        
      </div>
      <a class="carousel-control-prev" 




="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </header>


  <!-- Page Content -->
  <div class="container">
   <!-- //blog -->
   
    <!-- Portfolio Section -->
    <!--blog -->
      <section class="blog py-lg-4 py-md-3 py-sm-3 py-3" id="blog">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title text-center mb-2">Package Trips</h3>
       
            <div class="row">
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex">
                  <div class="blog-txt-color">
                     <img src="resources/images/Vietnam.jpg" class="img-thumbnail" alt="" height="300px">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><a href="product1">Ha Giang Loop Tour </a></h4>
                        <div class="news-date my-3">
                        
                        </div>
                        <p>Ha Giang Loop tour with Motorbike with a guide </p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex">
                  <div class="blog-txt-color">
                     <img src="resources/images/london.jpg" height="400px" width="350px" class="img-thumbnail" alt="" >
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><a href="#about">London night tour </a></h4>
                        <div class="news-date my-3">
                        
                        </div>
                        <p>Enjoy the historical bars& clubs in London </p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex">
                  <div class="blog-txt-color">
                     <img src="resources/images/vn.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><a href="#about">Hanoi Food trip</a></h4>
                        <div class="news-date my-3">
                          
                        </div>
                        <p>Taste Vietnamese Food in Hanoi. There will be few street food & bars will be provided in this tour</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex mt-lg-5 mt-md-4 mt-3">
                  <div class="blog-txt-color">
                     <img src="resources/images/dub.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><a href="#about">Game of throne Tour </a></h4>
                        <div class="news-date my-3">
                         
                        </div>
                        <p>Croatia Game of Thrones tour: Split, Dubvronik and more</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex mt-lg-5 mt-md-4 mt-3">
                  <div class="blog-txt-color">
                     <img src="resources/images/Aus.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><a href="#about">Austrailia Nature tour </a></h4>
                        <div class="news-date my-3">
                         
                        </div>
                        <p>From Sydney to Brisbane, you can find lots of animals &Farms and beach </p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex mt-lg-5 mt-md-4 mt-3" >
                  <div class="blog-txt-color">
                     <img src="resources/images/brazil.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><a href="#about">Latin Music& Culture tour </a></h4>
                        <div class="news-date my-3">
                        
                        </div>
                        <p>Latin music & dance tour - Brazil Samba, Argentina Tango </p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- //blog -->
<img src="resources/images/Holiday.png" height="15%" width="100%" id="Holiday">

    <!--blog -->
    
   
   
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title text-center mb-2" >Hot Destinations</h3>

      <section class="blog py-lg-4 py-md-3 py-sm-3 py-3" id="blog">

            <div class="row">
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex">
                  <div class="blog-txt-color">
                     <img src="resources/images/Banje.JPG" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><center><a href="#about">Dubrovnik</a></center></h4>
                        <div class="news-date my-3">

                        </div>
                        <p>Dubrovnik is a city on the Adriatic Sea in southern Croatia.</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex">
                  <div class="blog-txt-color">
                     <img src="resources/images/seoul.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><center><a href="#about">SEOUL</a></center></h4>
                        <div class="news-date my-3">
                        
                        </div>
                        <p> Seoul is the capital[8] and largest metropolis of South Korea.</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex">
                  <div class="blog-txt-color">
                     <img src="resources/images/beach.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><center><a href="#about">PHILIPPINES</a></center></h4>
                        <div class="news-date my-3">
                         
                        </div>
                        <p>Philippines is an archipelagic country in Southeast Asia. </p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex mt-lg-5 mt-md-4 mt-3">
                  <div class="blog-txt-color">
                     <img src="resources/images/dubai.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <center><h4 class="mt-2"><a href="#about">DUBAI</a></h4></center>
                        <div class="news-date my-3">
                         
                        </div>
                        <p> Dubai is the most populous city in the United Arab Emirates (UAE)</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex mt-lg-5 mt-md-4 mt-3">
                  <div class="blog-txt-color">
                     <img src="resources/images/Ams.JPG" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                       <center> <h4 class="mt-2"><a href="#about">AMSTERDAM</a></h4></center>
                        <div class="news-date my-3">
                      
                        </div>
                        <p>Amsterdam is the capital and most populous city of the Netherlands. </p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex mt-lg-5 mt-md-4 mt-3" >
                  <div class="blog-txt-color">
                     <img src="resources/images/hanoi.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                      <center>  <h4 class="mt-2"><a href="#about">HANOI </a></h4></center>
                        <div class="news-date my-3">
                         
                        </div>
                        <p>Hanoi is the capital of Vietnam and it is the second largest city in Vietnam.</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
     
   
    <!-- /.row -->

 <!--About -->
      <section class="about py-lg-4 py-md-3 py-sm-3 py-3 mt-lg-5" id="about">
 
            <div class="row">
               <div class="col-lg-3 col-md-6 col-sm-6 about-right">
                  <img src="resources/images/farm.png" alt="" class="img-fluid" height="100px">
                  <div class="about-four-wthree mt-3">
                     <h4>Farming &Fishing Tours</h4>
                     <p class="mt-2">Lorem ipsum dolor sit amet, consectetur adipiscing elit </p>
                  </div>
                  <div class="outs_more-buttn mt-md-4 mt-3">
                     <a href="#blog">Read More</a>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 about-right">
                  <img src="resources/images/culture.JPG" alt="" class="img-fluid">
                  <div class="about-four-wthree mt-3">
                     <h4>Local Experience Tours</h4>
                     <p class="mt-2">Lorem ipsum dolor sit amet, consectetur adipiscing elit </p>
                  </div>
                  <div class="outs_more-buttn mt-md-4 mt-3">
                     <a href="#blog">Read More</a>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 about-right">
                  <img src="resources/images/home.png" alt="" class="img-fluid">
                  <div class="about-four-wthree mt-3">
                     <h4>Trekking Tours</h4>
                     <p class="mt-2">Lorem ipsum dolor sit amet, consectetur adipiscing elit </p>
                  </div>
                  <div class="outs_more-buttn mt-md-4 mt-3">
                     <a href="#blog">Read More</a>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 about-right">
                  <img src="resources/images/halo.png" alt="" class="img-fluid">
                  <div class="about-four-wthree mt-3">
                     <h4>Beach&Cruise</h4>
                      <h4>Tour</h4>
                     <p class="mt-2">Lorem ipsum dolor sit amet, consectetur adipiscing elit </p>
                  </div>
                  <div class="outs_more-buttn mt-md-4 mt-3">
                     <a href="#blog">Read More</a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--//About -->



   
   
    <!-- /.row -->

</div>
</div>


  <!-- /.container -->

  <!-- Footer -->

<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
     

    </div>
  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</form>
</html>
   