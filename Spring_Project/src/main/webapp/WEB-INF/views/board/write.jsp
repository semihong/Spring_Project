<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script type="text/javascript" src="../resources/plugins/jQuery/jquery-3.4.1.js"></script>
<script type="../resources/js/uploadwrite.js"></script>
<link rel= "stylesheet" type="text/css" href="../resources/css/upload.css"></link>
<script src="//cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
<script src="../resources/ckeditor/ckeditor.js"></script>

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

      <link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">
      
       <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../resources/css/modern-business.css" rel="stylesheet">
  <script src="../resources/vendor/jquery/jquery.min.js"></script>
  <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
     <!-- font-awesome icons -->
      <link href="../resources/css/fonts/font-awesome.min.css" rel="stylesheet">
      <link href="../resources/css/style.css" rel='stylesheet' type='text/css' media="all">
<link href="../resources/css/board.css" rel="stylesheet">


</head>
<style>
body{
margin-top:130px;

text-align:center;
}


</style>

<body>
<!--  nav -->
<body id="page-top">
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
         
              <a class="dropdown-item" href="../log/logout">Logout</a>
                    
            
              <a class="dropdown-item" href="board/list?member=${member.id}">FREE BOARD</a>
 </div>
 </li>
 </c:if>

 <c:if test="${member!=null}">
<div class="cart">
<a href="../cartList?id=${member.id}"><img src="../resources/images/cart.png"   height="45px" width="45px" onclick="showPopup()"></a>
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



<h1 class="h1title">Write the Review</h1>
<form action="register" method="post">
	Title : <input type="text" name="subject" style="width:300px">
	

	Writer : <input type="text" name="writer" value="${member.id}" readonly>

	<input type="submit" class="button" value="Submit">
	
	
	
	<div class="inputArea">
	<label for="gdsDes"> </label>
	
	<textarea rows="5" cols="50" id="gdsDes" name="contents"></textarea>	
	
	<script>
 var ckeditor_config = {
   resize_enaleb : false,
   enterMode : CKEDITOR.ENTER_BR,
   shiftEnterMode : CKEDITOR.ENTER_P,
   filebrowserUploadUrl : "../C://images"
 };
 
 CKEDITOR.replace("gdsDes", ckeditor_config);
 
</script>
</div>


</form>
<!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>
</body>
</html>




<!-- BoardVo랑 name일치. Boradcontroll이 자동으로 수집) (BoardVo) -->