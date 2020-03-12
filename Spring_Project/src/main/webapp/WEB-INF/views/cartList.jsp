<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link href="../resources/css/all.min.css" rel="stylesheet" type="text/css">

  <title>Modern Business - Start Bootstrap Template</title>


  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Bootstrap core CSS -->
      <link href="resources/css/style.css" rel='stylesheet' type='text/css' media="all">

  <!-- Custom styles for this template -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>    
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/modern-business.css" rel="stylesheet">
  
<link href="resources/css/shop.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="resources/js/shop.js?ver=1.1"></script>
      <link href="resources/css/fonts/font-awesome.min.css" rel="stylesheet">
 <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <link href="resources/css/cart.css" rel="stylesheet">
  
  
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

<center><h3>Cart List</h3></center>
<form action="form" method="POST">

<div id="content">
 <div class="row">
 <ul>
  <c:forEach items="${cartList}" var="CartVO">
  <li>
   <div class="thumb">
    <img src="${CartVO.images}" width="500px"height="350px"/>
   
   <div class="gdsInfo">
    <p>
     <span>Number</span> &nbsp; ${CartVO.gdsNum}<br />
    </p>
    <p>
     <span>Product</span> &nbsp; ${CartVO.gdsName}<br />
    </p>
<p>
     <span>Date</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${CartVO.date}<br />
    </p>
   
    
<p>
<span id="inputdis" onclick="onclick()" id="">Price</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${CartVO.price}$ US Dollar<br />   

 
 
<input id ="rno" type="hidden" value="${CartVO.rno}">

<div class="delete">
     <button type="button" id="delete" value="${CartVO.rno}" onclick="del(${CartVO.rno})">Delete</button>
    </div>
   </div>
     </div>
  </li>
  </c:forEach>
 </ul>
 </div>
 </section>

 <c:set var="sum" value="0"/>

 <c:forEach items="${cartList}" var="CartVO">


<c:set var="sum" value="${sum +CartVO.price}" />


 
</c:forEach> 

 <div class="sum">

<right><h3>Sum : ${sum} US Dollar</h3> </right>

 </div>

 <div class="orderOpne">
<center>  <button type="button" onclick="bttn()">Payment</button></center>

 </div>
</div>



 <input id ="id" type="hidden" name="id"  value="${member.id}">




</section>
 <!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
     

    </div>




<script type="text/javascript" src="resources/js/shop.js"></script>

</form>


</body>
</html>