<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
  <link href="../resources/css/dataTables.bootstrap4.min.css" rel="stylesheet">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Modern Business - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
      <link href="resources/css/style.css" rel='stylesheet' type='text/css' media="all">

  <!-- Custom styles for this template -->

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>    
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/css/project.css" rel="stylesheet">

</head>



<body>

<%@include file="nav.jsp" %>
<%@include file="link.jsp"%>
<%@include file="contents2.jsp"%>
<%@include file="footer.jsp" %>


  
   
<!--  link 
        <div class="sidebara">
          <a href="about.html" class="list-group-item">About</a>
          <a href="services.html" class="list-group-item">Services</a>
          <a href="contact.html" class="list-group-item">Contact</a>
          <a href="portfolio-1-col.html" class="list-group-item">1 Column Portfolio</a>
          <a href="portfolio-2-col.html" class="list-group-item">2 Column Portfolio</a>
          <a href="portfolio-3-col.html" class="list-group-item">3 Column Portfolio</a>
          <a href="portfolio-4-col.html" class="list-group-item">4 Column Portfolio</a>
          <a href="portfolio-item.html" class="list-group-item">Single Portfolio Item</a>
          <a href="blog-home-1.html" class="list-group-item">Blog Home 1</a>
          <a href="blog-home-2.html" class="list-group-item">Blog Home 2</a>
          <a href="blog-post.html" class="list-group-item">Blog Post</a>
          <a href="full-width.html" class="list-group-item">Full Width Page</a>
          <a href="sidebar.html" class="list-group-item active">Sidebar Page</a>
          <a href="faq.html" class="list-group-item">FAQ</a>
          <a href="404.html" class="list-group-item">404</a>
          <a href="pricing.html" class="list-group-item">Pricing Table</a>
          
      </div>
      -->
   <!-- Navigation 
  
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark  fixed-top" style="background-color: #FF5E00">
    <div class="container">
      <a class="navbar-brand" href=""><img src="resources/images/logo2.png" height="100px" width="100px"></a> 
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="about.html">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="services.html">Services</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="contact.html">Contact</a>
          </li>
          
   <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Portfolio
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
              <a class="dropdown-item" href="project1">1 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
            </div>
            </li>
          
          <li class="nav-item">
            <a class="nav-link " href="blog"  >
 blog
            </a>
    
          </li>
                   <li class="nav-item">
            <a class="nav-link " href="member"  >
 login
            </a>
</li>



        </ul>
      </div>
       <div class="brand">
      
<a href="https://www.instagram.com/vacayy_v/"> <img src="resources/images/insta.png" height="40px" width="40px"></a>
<img src="resources/images/facebook.png" height="40px" width="50px"  a href="www.facebook.com">
</div> 
    </div>

  </nav>-->
  <!-- Page Content 
  <div class="container" id="container2">

    <!-- Page Heading/Breadcrumbs 
    <h1 class="mt-4 mb-3">Portfolio 4
      <small>Subheading</small>
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.html">Home</a>
      </li>
      <li class="breadcrumb-item active">Portfolio 4</li>
    </ol>
    
    -->
    
    
    
    
 <!--blog
      <section class="blog py-lg-4 py-md-3 py-sm-3 py-3" id="blog">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
      
            <div class="row">
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex">
                  <div class="blog-txt-color">
                     <img src="resources/images/Vietnam.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><a href="product1?id=${member.id}">Quisque a rhoncus </a></h4>
                        <div class="news-date my-3">
                           <ul>
                              <li><span class="fa fa-calendar" aria-hidden="true"></span><a href="#about">12/4/2019</a></li>
                              <li><span class="fa fa-comments" aria-hidden="true"></span><a href="#about">5 Comments</a></li>
                           </ul>
                        </div>
                        <p>Lorem ipsum dolor sit amet, sed do eiusmod tempor consectetur adipiscing elit, sed do eiusmod tempor </p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex">
                  <div class="blog-txt-color">
                     <img src="resources/images/beach.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><a href="#about">Quisque a rhoncus </a></h4>
                        <div class="news-date my-3">
                           <ul>
                              <li><span class="fa fa-calendar" aria-hidden="true"></span><a href="#about">12/4/2019</a></li>
                              <li><span class="fa fa-comments" aria-hidden="true"></span><a href="#about">5 Comments</a></li>
                           </ul>
                        </div>
                        <p>Lorem ipsum dolor sit amet, sed do eiusmod tempor consectetur adipiscing elit, sed do eiusmod tempor </p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex">
                  <div class="blog-txt-color">
                     <img src="resources/image/blg3.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><a href="#about">Quisque a rhoncus </a></h4>
                        <div class="news-date my-3">
                           <ul>
                              <li><span class="fa fa-calendar" aria-hidden="true"></span><a href="#about">12/4/2019</a></li>
                              <li><span class="fa fa-comments" aria-hidden="true"></span><a href="#about">5 Comments</a></li>
                           </ul>
                        </div>
                        <p>Lorem ipsum dolor sit amet, sed do eiusmod tempor consectetur adipiscing elit, sed do eiusmod tempor </p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex mt-lg-5 mt-md-4 mt-3">
                  <div class="blog-txt-color">
                     <img src="resources/image/blg2.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><a href="#about">Quisque a rhoncus </a></h4>
                        <div class="news-date my-3">
                           <ul>
                              <li><span class="fa fa-calendar" aria-hidden="true"></span><a href="#about">12/4/2019</a></li>
                              <li><span class="fa fa-comments" aria-hidden="true"></span><a href="#about">5 Comments</a></li>
                           </ul>
                        </div>
                        <p>Lorem ipsum dolor sit amet, sed do eiusmod tempor consectetur adipiscing elit, sed do eiusmod tempor </p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex mt-lg-5 mt-md-4 mt-3">
                  <div class="blog-txt-color">
                     <img src="resources/image/blg3.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><a href="#about">Quisque a rhoncus </a></h4>
                        <div class="news-date my-3">
                           <ul>
                              <li><span class="fa fa-calendar" aria-hidden="true"></span><a href="#about">12/4/2019</a></li>
                              <li><span class="fa fa-comments" aria-hidden="true"></span><a href="#about">5 Comments</a></li>
                           </ul>
                        </div>
                        <p>Lorem ipsum dolor sit amet, sed do eiusmod tempor consectetur adipiscing elit, sed do eiusmod tempor </p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 blog-grid-flex mt-lg-5 mt-md-4 mt-3" >
                  <div class="blog-txt-color">
                     <img src="resources/image/blg1.jpg" class="img-thumbnail" alt="">
                     <div class="blog-txt-info">
                        <h4 class="mt-2"><a href="#about">Quisque a rhoncus </a></h4>
                        <div class="news-date my-3">
                           <ul>
                              <li><span class="fa fa-calendar" aria-hidden="true"></span><a href="#about">12/4/2019</a></li>
                              <li><span class="fa fa-comments" aria-hidden="true"></span><a href="#about">5 Comments</a></li>
                           </ul>
                        </div>
                        <p>Lorem ipsum dolor sit amet, sed do eiusmod tempor consectetur adipiscing elit, sed do eiusmod tempor </p>
                     </div>
                  </div>
               </div>
            </div>
         </div>

      </section>
      <!-- //blog -->
    
    
 
   
    
    
    
    
    <!-- Pagination 
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

  <!-- Footer 
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container 
  </footer>-->
  
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>

</html>