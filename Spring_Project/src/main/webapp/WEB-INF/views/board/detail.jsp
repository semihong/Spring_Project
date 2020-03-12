<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.11.3.js?v="></script>
<script src="../resources/js/button.js"></script>
<link href="../resources/css/board.css" rel="stylesheet">
  <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../resources/css/modern-business.css" rel="stylesheet">
      <link href="../resources/css/style.css" rel='stylesheet' type='text/css' media="all">
<link href="../resources/css/all.min.css" rel="stylesheet" type="text/css">




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
<!--  nav -->
  <!-- Page Content--> 
  <div class="container" id="container2">


    
<table border="1" >
<tr>
<td class="head">No.</td>
<td>
<input type="text" value="${detail.no}" name="no"></td>
</tr>
<tr>
<td class="head">Title</td><td>${detail.subject}</td>
</tr>
<tr>
<td class="head" height="300px">Contents</td><td>${detail.contents}</td>
</tr>
<tr>
<td class="head">Writer</td><td>${detail.writer}</td>
</tr>
<tr>
<td class="head">Date</td><td>${detail.write_date}</td>
</tr>


<tr>
	<td colspan="2">
	<!--  
	<input type="submit" value="수정" id="modify">
		<input type="submit" value="삭제" id="delete">
	-->

	<c:if test="${(member.id==detail.writer) or (member.verify==9)}">
	<center><a href="modify?no=${detail.no}">Modify</a>
	<a href="delete?no=${detail.no}">Delete</a></center>
	</c:if>
	</td>
	</tr>
	
</table>
<ul id="replies">

</ul>

<div class="comment" >
<div class="Table">
<h2 >Comments</h2>

	<div class="commentheader" >
	No. <input type="text" value="${detail.no}" name="bno" id="newBno" style="border:none;width:1000px; height:20px; font-size:15px;" readonly>
	</div>
	<div class="commenter">
	Writer <input type="text" name="replyer" id="newReplyWriter" value="${member.id}" style="border:none;">
	</div>
	<div class="commentcontents">
	Contents <textarea name="replytext" id="newReplyText" style="width:500px; height:50px" ></textarea>
	
	
	<input type="button" id="replyAddBtn" value="Add Comments">
</div>
</div>

<div id="modDiv">

	<div class="modal-title"></div>

<c:if test="${(member.id==detail.writer) or (member.verify==9)}">		<!-- <input type="text" id="replytext"> -->

	<div>
	
		<!-- <input type="text" id="replytext"> -->
	<textarea id="replytext" style="width:500px; height:50px" placeholder="Please Click Edit Button to delete or edit after writing"></textarea>
	</div>
	
	<div class="btn2">
	<button type="button" id="replyModBtn" class="button2" >Edit</button>
	<button type="button" id="replyDelBtn" class="button2">Delete</button>
	<button type="button" id="closeBtn" class="button2">Close</button>
	
	</div>
	</c:if>
</div>
</div>


</div>


  <!-- Footer -->

<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>






<!-- <script src="https://code.jquery.com/jquery-3.4.1.js"></script>  -->
<script src="../resources/js/reply.js"></script>
  <script src="../resources/vendor/jquery/jquery.min.js"></script>
  <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>
</html>