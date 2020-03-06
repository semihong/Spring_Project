<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">



  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

       <!-- Bootstrap core CSS -->
  <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../resources/css/member3.css" rel="stylesheet">
   
   



<style>
body{
background-image:url('../resources/images/background.jpg');
}

</style>
  
</head>

<body>
 <div id="top">

 
<form action="login" method="post">
  <!--   넣어줌으로서 post 방식  -->
 <nav class="navbar fixed-top navbar-expand-lg navbar-dark  fixed-top" style="background-color: #FF5E00">
    <div class="container">
      <a class="navbar-brand" a href="http://localhost:8080/test/"><img src="../resources/images/logo2.png" height="100px" width="100px"></a> 
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
              <a class="dropdown-item" href="../project1">1 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
              <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
            </div>
            </li>
          
          <li class="nav-item">
            <a class="nav-link " href="../blog" >Blog

            </a>
    
          </li>
                   <li class="nav-item">
            <a class="nav-link " href="../member"  >
Signup
            </a>
</li>
  <li class="nav-item">
            <a class="nav-link" href="../log/login">login</a>
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
                    
            
              <a class="dropdown-item" href="board/list?member=${member.id}">FAQ</a>
 </div>
 </li>
 </c:if>

 <c:if test="${member!=null}">
<div class="cart">
<a href="cartList?id=${member.id}"><img src="../resources/images/cart.png"   height="45px" width="45px" onclick="showPopup()"></a>
</div>
</c:if>

        </ul>
      </div>
       <div class="brand">
      
<a href="https://www.instagram.com/vacayy_v/"> <img src="../resources/images/insta.png" height="35px" width="35px"></a>
<a href="https://www.facebook.com/vacayy.vacayy.5"><img src="../resources/images/facebook.png" height="35px" width="40px"></a>
</div> 
    </div>

  </nav>


      <!-- Divider -->
      <hr class="sidebar-divider">a
  
  

  
  
  
  



<!--  -->

<center><table border="1" class="border" ></center>

<tr> <td colspan="2" class="center" height="70px"><center><h3>Log In</h3></center></td></tr>



<tr>
<td class="title">ID</td>
<td class="textbtn"><input type="text" id="id" name="id" placeholder="ID" onkeyup="idcheck()" style="width:210px; height:25px" required> </label>
</td>

</tr>

<tr>
<td class="title">Password</td>
<td class="textbtn"><input type="password" id="pw" name="pw" onkeyup="pwcheck()" style="width:210px; height:25px" placeholder="PW" ></td>
</tr>



</table>
 <center><button id="btn"  background-color="white">Login</button></center>



<!-- 이메일 인증
<div class="form-group">
<label class="control-label">EMAIL</label>
<input type="text" id="email" name="email" placeholder="이메일을 입력하세요" class="form-control" />
<button type="button" class="btn btn-info" id="emailBtn">이메일 발송</button>
<button type="button" class="btn btn-info" id="emailAuthBtn">이메일 인증</button>
</div>
<input type="hidden" name="random" id="random" value="${random }" /> -->

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>  
<script type="text/javascript" src="resources/js/member.js"></script>


</div>

</form>
<!-- Bootstrap core JavaScript -->
  <script src="../resources/vendor/jquery/jquery.min.js"></script>
  <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>


</html>