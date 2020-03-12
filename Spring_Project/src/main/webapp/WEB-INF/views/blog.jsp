<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">


  <title>Modern Business - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <!-- Custom styles for this template -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>    
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="resources/css/blog.css" rel='stylesheet' type='text/css' media="all">

  <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resources/css/modern-business.css" rel="stylesheet">

 <!--booststrap-->
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="resources/css/fonts/font-awesome.min.css" rel="stylesheet">
      <!-- //font-awesome icons -->
 
<!-- //font-awesome icons -->
      <!--stylesheets-->
      <link href="resources/css/style.css" rel='stylesheet' type='text/css' media="all">
     
</head>

<body>
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
<!--  nav -->




  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
  
    <ol class="breadcrumb">
   
      <li class="breadcrumb-item active">BLOG</li>
    </ol>

    <!-- Project One -->
    
   
    
    <div class="row">
      <div class="col-md-7">
        <a href="#">
          
          <img src="resources/images/seoul.jpg" width="620px" height="250px">
        </a>
      </div>
      <div class="col-md-5">
     
     <h3>Seoul</h3>
       <!--   <td><h3><a href=project1>Project One ${detail.subject}  </a></h3></td> -->

        <p>Seoul, officially the Seoul Special City, is the capital and largest metropolis of South Korea.</p><p> With the surrounding Incheon metropolis and Gyeonggi province, Seoul forms the heart of the Seoul Capital Area.</p>
      <!--  like 이미지파일  
      <img src="resources/images/like.png" width="50px" height="50px" >-->
      <a class="btn btn-primary" href="#">View
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Project Two -->
    <div class="row">
      <div class="col-md-7">
        <a href="#">
          <img src="resources/images/dubai.jpg" width="620px" height="250px">
        </a>
      </div>
      <div class="col-md-5">
      <h3>Dubai</h3>
        <p> Dubai is the most populous city in the United Arab Emirates (UAE) and the capital of the Emirate of Dubai.</p><p> Located in the eastern part of the Arabian Peninsula on the coast of the Persian Gulf, Dubai aims to be the business hub of Western Asia.</p>
        <a class="btn btn-primary" href="#">View
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Project Three -->
    <div class="row">
      <div class="col-md-7">
        <a href="#">
           <img src="resources/images/hcm.jpg" width="620px" height="250px">
        </a>
      </div>
      <div class="col-md-5">
        <h3>Ho Chi Minh City</h3>
        <p>Ho Chi Minh also known by Khmer name Prey Nokor, and its former name of Saigon, is the most populous city in Vietnam with a population of 8.4 million as of 2017.</p><p> Located in southeastern Vietnam, the metropolis surrounds the Saigon River and covers about 2,061 square kilometres (796 square miles).</p>
        <a class="btn btn-primary" href="#">View
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Project Four -->
    <div class="row">

      <div class="col-md-7">
        <a href="#">
          <img src="resources/images/hongkong.jpg" width="620px" height="250px">
        </a>
      </div>
      <div class="col-md-5">
        <h3>Hong Kong</h3>
        <p>Hong Kong is officially the Hong Kong Special Administrative Region of the People's Republic of China (HKSAR), is a city and special administrative region on the eastern side of the Pearl River estuary in southern China.</p><p> With over 7.4 million people of various nationalities[d] in a 1,104-square-kilometre (426 sq mi) territory, Hong Kong is one of the most densely populated places in the world.</p>
        <a class="btn btn-primary" href="#">View 
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Pagination -->
    <ul class="pagination justify-content-center">
      <li class="page-item">
        <a class="page-link" href="#" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
          <span class="sr-only">Previous</span>
        </a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">1</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">2</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">3</a>
      </li>
          
      
      <li class="page-item">
        <a class="page-link" href="#" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
          <span class="sr-only">Next</span>
        </a>
        
    </li>
    </ul>

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

</body>
</html>