<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- Navigation -->
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
            <a class="nav-link" href="services.html">Services</a>
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
              <a class="dropdown-item" href="portfolio-2-col.html">Europe</a>
              <a class="dropdown-item" href="portfolio-3-col.html">America</a>
              <a class="dropdown-item" href="portfolio-4-col.html">Africa</a>
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
            <a class="nav-link" href="">${member.id}님</a>
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

  <!-- Page Content--> 
  <div class="container" id="container2">

    <!-- Page Heading/Breadcrumbs -->
    <center><h1 class="mt-4 mb-3">Travelling to Asia
      
    </h1></center>

   
    
    
    
</body>
</html>