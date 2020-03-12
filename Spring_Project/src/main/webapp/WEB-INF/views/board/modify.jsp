<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../resources/js/button.js"></script>
      <link href="../resources/css/style.css" rel='stylesheet' type='text/css' media="all">
  <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../resources/css/modern-business.css" rel="stylesheet">
<link href="../resources/css/board.css" rel="stylesheet">

</head>
<style>


</style>



<body>
<!-- Navigation -->
  
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark  fixed-top" style="background-color: #FF5E00">
    <div class="container">
      <a class="navbar-brand" a href="http://localhost:8080/test/"><img src="../resources/images/logo2.png" height="100px" width="100px"></a> 
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
     

          
          <li class="nav-item">
            <a class="nav-link" href="../mail?id=${member.id}">FAQ</a>
          </li>
          
   <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             Journey
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
             <!-- 넘기는법 --> <a class="dropdown-item" href="../project1?id=${member.id}">ASIA</a>

            </div>
            </li>
          
          <li class="nav-item">
            <a class="nav-link " href="../blog" >blog

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
            <a class="nav-link" href="">${member.id} Welcome</a>
 </li>
</c:if>    
      
        <c:if test="${member!=null}">
<li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             My Page
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
         
              <a class="dropdown-item" href="../log/logout">Logout</a>
                    
            
              <a class="dropdown-item" href="../board/list?member=${member.id}">Review</a>
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

<form action="modify" method="post">
<center><table border="1" width="800px" height=500px"></center>

<tr>
<td class="head">No.</td>
<td>
	<input type="text" name="no" value="${modify.no}"  style="width:100px; height:20px; font-size:15px;" readonly>

</td>
</tr>
<tr>
<td class="head" >Title</td>
<td>
<input type="text" name="subject" value="${modify.subject}" "></td>
</tr>
<tr>
<td class="head">Contents</td>
<td>
	<textarea name="contents" style="width:500px; height:50px">${modify.contents} </textarea>
	</td>
	
	</tr>
<tr>
<td class="head"  >Writer</td><td>${modify.writer} </td>
</tr>
<tr>
<td class="head" >Date</td><td>${modify.write_date}</td>
</tr>

<tr>
	<td colspan="2">

<center><input type="submit" class="button" value="Modify" style=width:90px;height:60px;font-size:20px;></center>
	</td>
	</tr>

</table>
 <!-- Footer -->



</form>
<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
     

</div>
  <script src="../resources/vendor/jquery/jquery.min.js"></script>
  <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>