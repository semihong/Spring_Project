<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>

<meta charset="UTF-8">

<head>
<link rel="stylesheet" href="resources/css/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="resources/js/jquery-ui.min.js"></script>

<script src="resources/js/datepicker-ko.js"></script>
<script type="text/javascript">
$(function(){
	$("#date1").datepicker({
		showOn: "button",
        buttonImage: "resources/images/calendar.gif",
        showMonthAfterYear: true,
        changeMonth: true,
        changeYear: true,
        buttonImageOnly: true,
		buttonText: "Select date"
				
	});

});
</script>




  <title>Ice milk Hotel Category Bootstrap Responsive Web Template | Home :: w3layouts</title>
      <!--meta tags -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Ice milk Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
      <!--booststrap-->
      <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="resources/css/fonts/font-awesome.min.css" rel="stylesheet">
      <!-- //font-awesome icons -->
      <!--stylesheets-->
      <link href="resources/css/style.css" rel='stylesheet' type='text/css' media="all">
            <link href="resources/css/product.css" rel='stylesheet' type='text/css' media="all">
      
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Muli:300,400,600" rel="stylesheet">
  
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
            <a class="nav-link " ="blog"  >
 blog
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
                    
            
              <a class="dropdown-item" href="board/list?member=${member.id}">FAQ</a>
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



  

         <!-- //header -->
         <!-- banner -->
         
         <div class="slider-img one-img">
         <input type="hidden"  id="images" name="images" value="resources/images/Vietnam.jpg">
         
         <input type="hidden" id="id" name="id" value="${member.id}">
        <img src="resources/images/Vietnam.jpg" width="2000px" height="700px">
                <div class="binner-mid">
                           <h4 id="gdsName"><center>Vietnam Ha Giang</center></h4>
                        
                        </div>
                    
            
     
                     </div>
            
            
            
            <div class="container">
               <div  class="slider-info">
                  <div class="row">
                     <div class="col-lg-7 txt-caption">
                    
                     <div class="col-lg-5 register">
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="body-art-cost">
         <div class="use-info-matter">
            <div class="sub-header text-center">
           <!--  <input type="text" name="gdsNum"> -->Goods Number: <h5 id="gdsNum">1</h5>
               <p>Select your available date
               </p>
            </div>
            <div class="two-cols mt-md-4 mt-3 text-center">
               <div class="cols-left">
                  <h5>Special Price</h5>
                  <!--  <input type="text" name=price>"price">99</h6>-->
                  <h6 id="price">99</h6>
               </div>

               <div>
<input type="text" name="date1" id="date1" />
</div>

             
               <!-- 
               <div class="cols-right">
                  <h5>Special Offers</h5>
                  <h6>89 $/-</h6>
               </div> -->
            


            
         
            
            
            
            </div>
            
            
            
            
            <div class="outs_more-buttn mt-md-4 mt-3 text-center">
               <input type="submit" name="addCart_btn" class="addCart_btn" value="cart">
            </div>
         </div>
      </div>
      <div class="banner-main">
         <div class="banner-bottom">
            <div class="container">
               <div class="row w3layout-abt-info text-center">
                  <div class="col-lg-3 col-md-6 col-sm-6 abut-list-w3layouts p-0 color-four">
                     <div class="abtr-inner-sub">
                        <span class="fa fa-star-o" aria-hidden="true"></span>
                        <div class="abt-icon-list-wls mt-3">
                           <h4>Hà Giang Province, Vietnam</h4>
        
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6 abut-list-w3layouts p-0 color-one">
                     <div class="abtr-inner-sub">
                        <span class="fa fa-smile-o" aria-hidden="true"></span>
                        <div class="abt-icon-list-wls mt-3">
                           <h4>3 days Ha Giang Loop </h4>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6 abut-list-w3layouts p-0 color-two">
                     <div class="abtr-inner-sub">
                        <span class="fa fa-thumbs-o-up" aria-hidden="true"></span>
                        <div class="abt-icon-list-wls mt-3">
                           <h4>Kayaking on Nho Que River<h4>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6 abut-list-w3layouts p-0 color-three">
                     <div class="abtr-inner-sub">
                        <span class="fa fa-diamond" aria-hidden="true"></span>
                        <div class="abt-icon-list-wls mt-3">
                           <h4>Enjoy the Sky walking</h4>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- //banner -->
      
     
      <!--About -->
      <section class="about py-lg-4 py-md-3 py-sm-3 py-3 mt-lg-5" id="about">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3 mt-lg-3">
            <h3 class="title text-center mb-2">Ha Giang 3days Tour</h3>
            <div class="line-w3ls-title text-center mb-md-5 mb-sm-4 mb-3">
               <p>Ha Giang Loop Tour 2 Nights and 3Days Tour <br>Food, Accomodation, Guide, Gear, Motor and more is included</p>
            </div>
            <div class="row">
               <div class="col-lg-3 col-md-6 col-sm-6 about-right">
                  <img src="resources/images/hagiang2.JPG"  alt="" class="img-fluid2">
                  <div class="about-four-wthree mt-3">
                     <h4>Enjoy the rice Field</h4>
			 <p class="mt-3">Hà Giang is a province in the Northeast region of Vietnam where boarder with China.</p>
                     
                  </div>
                  <div class="outs_more-buttn mt-md-4 mt-3">
                     <a href="#blog">Read More</a>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 about-right">
                  <img src="resources/images/moto.jpg" alt="" class="img-fluid2">
                  <div class="about-four-wthree mt-3">
                     <h4>Motorbike tour at the Loop</h4>
              <p class="mt-2">Unique motorbike experience, limestone, river and rice field.</p>
                     
                  </div>
                  <div class="outs_more-buttn mt-md-4 mt-3">
                     <a href="#blog">Read More</a>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 about-right">
                  <img src="resources/images/haging 4.jpg" alt="" class="img-fluid2">
                  <div class="about-four-wthree mt-3">
                     <h4>Enjoy the Sky walking</h4>
                     <p class="mt-2">Ma Pi Leng Pass is well known for its abrupt cliffs and breath-taking views, with its highest point at an altitude of 2,000 meters.</p>
                  </div>
                  <div class="outs_more-buttn mt-md-4 mt-3">
                     <a href="#blog">Read More</a>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 about-right">
                  <img src="resources/images/hagiang5.jpg" alt="" class="img-fluid2">
                  <div class="about-four-wthree mt-3">
                     <h4>Kayaking on Nho Que river</h4>
                     <p class="mt-2">Enjoy Kayaking on Nho Que River before Ma Pi Leng Pass </p>
                  </div>
                  <div class="outs_more-buttn mt-md-4 mt-3">
                     <a href="#blog">Read More</a>
                     
                  
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--//About -->
      <!-- service -->
      <section class="service py-lg-4 py-md-3 py-sm-3 py-3" id="service">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title text-center mb-2">What We Offer</h3>
            <div class="line-w3ls-title text-center mb-md-5 mb-sm-4 mb-3">
            </div>
            <div class="serv-left-model">
               <div class="service-w3layouts-img">
                  <img src="resources/images/culture.JPG" alt=" " class="img-fluid2">
               </div>
               <div class="service-w3layouts-two row">
                  <div class="col-lg-6 col-md-6 ">
                     <img src="resources/images/house.jpg" alt=" " class="img-fluid3">
                  </div>
                  <div class="col-lg-6 col-md-6 serice-inn-two">
                     <div class="mb-2 service-two-top">
                        <h5>
                           Ha Giang Homestay
                        </h5>
                     </div>
                     <div class="mb-lg-4 mb-md-3 mb-3 ser-two-txt">
                        <p>Stay with locals
                     </div>
                     <div class="mb-2 service-two-top">
                        <h5>
                          Visit the Sà Phìn H'Mông Palace    
                        </h5>
                     </div>
                     <div class="mb-lg-4 mb-md-3 mb-3 ser-two-txt">
                        <p>High up near the border with China stands a H'Mông King Palace in the village of Sà Phìn.
                     </div>
                     <div class="mb-2 service-two-top">
                        <h5>
                          Drive Mã Pí Lèng Pass
                        </h5>
                     </div>
                     <div class="mb-lg-4 mb-md-3 mb-3 ser-two-txt">
                        <p>Road snakes past a deep gorge carved by the Nho Quế River at around 1,500m.
                     </div>
                     <div class="outs_more-buttn mt-md-4 mt-3">
                        <a href="#blog">Read More</a>
                     </div>
                  </div>
               </div>
               <div class="service-w3layouts-left">
                  <img src="resources/images/hagiang6.jpg" alt=" " class="img-fluid4">
               </div>
            </div>
            <div class="serv-left-model">
               <div class="service-bottom row mt-lg-5 mt-md-4 mt-sm-3 mt-3">
                  <div class="col-lg-6 abt-inn-two about-top">
                     <div class="mb-2 service-two-top">
                        <h5>
                           See the king of flagpoles

                        </h5>
                     </div>
                     <div class="mb-lg-4 mb-md-3 mb-3 ser-two-txt">
                        <p>Make time in your Hà Giang trip to journey north to Lũng Cú, 
                        where a gigantic Vietnamese flag blows proudly at the border with China.
                     </div>
                     <div class="mb-2 service-two-top">
                        <h5>
                         Get lost in the hills
                        </h5>
                     </div>
                     <div class="mb-lg-4 mb-md-3 mb-3 ser-two-txt">
                        <p>Quản Bạ is also the gateway to the UNESCO recognised Đồng Văn Karst Plateau Geopark
                     </div>
                     <div class="mb-2 service-two-top">
                        <h5>
                           Dong Van Karst Plateau Geopark
                        </h5>
                     </div>
                     <div class="mb-lg-4 mb-md-3 mb-3 ser-two-txt">
                        <p>Listed as a member of UNESCO Geopark Network, Dong Van features a vast area of limestone 
                        which covers most of the four provinces of Ha Giang.
                     </div>
       
                     
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6 service-w3layouts-img">
                     <img src="resources/images/haj12.jpg" alt=" " class="img-fluid2">
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6 service-w3layouts-img">
                     <img src="resources/images/haj10.jpg" alt=" " class="img-fluid2">
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--//service -->
	  <!-- gallery -->
      <section class="gallery pt-lg-4 pt-md-3 pt-sm-3 pt-3" Id="gallery">
         <div class="container-fluid pt-lg-5 pt-md-5 pt-sm-4 pt-3">
            <h3 class="title text-center mb-2">Ha Giang Travel Gallery</h3>
            <div class="line-w3ls-title text-center mb-md-5 mb-sm-4 mb-3">
            </div>
            <div class="row gallery-info">
               <div class="col-lg-6 col-md-6 col-sm-6 gallery-img-grid gallery-mid-two p-0">
                  <div class="gallery-grids">
                     <a href="#gal1"><img src="resources/images/haj8.jpg" alt="news image" class="img-fluid5"></a>
                  </div>
               </div>
               <div class="col-lg-6 col-md-6 col-sm-6 gallery-img-grid gallery-mid-two p-0">
                  <div class="gallery-grids">
                     <a href="#gal2"><img src="resources/images/haj1.jpg" alt="news image" class="img-fluid5"></a>
                  </div>
               </div>
               <div class="col-lg-3 col-md-3 col-sm-6 gallery-img-grid p-0">
                  <div class="gallery-grids">
                     <a href="#gal3"><img src="resources/images/hagiang2.JPG" alt="news image" class="img-fluid7"></a>
                  </div>
               </div>
               <div class="col-lg-3 col-md-3 col-sm-6 gallery-img-grid p-0">
                  <div class="gallery-grids">
                     <a href="#gal4"><img src="resources/images/haj12.jpg" alt="news image" class="img-fluid7"></a>
                  </div>
               </div>
               <div class="col-lg-3 col-md-3 col-sm-6 gallery-img-grid p-0">
                  <div class="gallery-grids">
                     <a href="#gal5"><img src="resources/images/hagiang5.jpg" alt="news image" class="img-fluid7"></a>
                  </div>
                  
                  
               </div>
               <div class="col-lg-3 col-md-3 col-sm-6 gallery-img-grid p-0">
                  <div class="gallery-grids p-0">
                     <a href="#gal6"><img src="resources/images/hagiang6.jpg" alt="news image" class="img-fluid7"></a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--// gallery-main -->
      <!-- popup-->
      <div id="gal1" class="popup-effect">
         <div class="popup">
            <img src="resources/images/haj8.jpg" alt="Popup Image" class="img-fluid" />
            <a class="close" href="#gallery">&times;</a>
         </div>
      </div>
      <!-- //popup -->
      <!-- popup-->
      <div id="gal2" class="popup-effect">
         <div class="popup">
            <img src="resources/images/haging 4.jpg" alt="Popup Image" class="img-fluid" />
            <a class="close" href="#gallery">&times;</a>
         </div>
      </div>
                         
      
      <!-- //popup -->
      <!-- popup-->
      <div id="gal3" class="popup-effect">
         <div class="popup">
            <img src="resources/images/hagiang2.JPG" alt="Popup Image" class="img-fluid" />
            <a class="close" href="#gallery">&times;</a>
         </div>
      </div>
      <!-- //popup -->
      <!-- popup-->
      <div id="gal4" class="popup-effect">
         <div class="popup">
            <img src="resources/images/haj12.jpg" alt="Popup Image" class="img-fluid" />
            <a class="close" href="#gallery">&times;</a>
         </div>
      </div>
      <!-- //popup -->
      <!-- popup-->
      <div id="gal5" class="popup-effect">
         <div class="popup">
            <img src="resources/images/hagiang5.jpg" alt="Popup Image" class="img-fluid" />
            <a class="close" href="#gallery">&times;</a>
         </div>
      </div>
      <!-- //popup -->
      <!-- popup-->
      <div id="gal6" class="popup-effect">
         <div class="popup">
            <img src="resources/images/hagiang6.jpg" alt="Popup Image" class="img-fluid" />
            <a class="close" href="#gallery">&times;</a>
         </div>
      </div>
      <!-- //popup -->
	    <!--//gallery -->
      
      <!--team  -->
      <section class="team py-lg-4 py-md-3 py-sm-3 py-3" id="team">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title text-center mb-2">Another Destinations in Vietnam</h3>
            <div class="line-w3ls-title text-center mb-md-5 mb-sm-4 mb-3">
            </div>
            <div class="row">
               <div class="col-lg-3 col-md-6 col-sm-6 team-list-team">
                  <div class="team-member">
                     <div class="team-img">
                        <img src="resources/images/hanoi.jpg" alt="" class="img-fluid8">
                     </div>
                     <div class="team-hover">
                        <div class="desk text-center">
                           <h4 class="mb-2">Ninh Binh</h4>
                        </div>
                        <div class="s-link">
                           <ul>
                              <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                              <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                              <li><a href="#"><span class="fa fa-rss"></span></a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="team-title">
                     <h5>Ninh Binh</h5>
                     <span>Northern Vietnam</span>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 team-list-team">
                  <div class="team-member">
                     <div class="team-img">
                        <img src="resources/images/halo.jpg" alt="" class="img-fluid8">
                     </div>
                     <div class="team-hover">
                        <div class="desk text-center">
                           <h4 class="mb-2">Halong Bay</h4>
                        </div>
                        <div class="s-link">
                           <ul>
                              <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                              <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                              <li><a href="#"><span class="fa fa-rss"></span></a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="team-title">
                     <h5>Halong Bay</h5>
                     <span>Northern Vietnam</span>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 team-list-team">
                  <div class="team-member">
                     <div class="team-img">
                        <img src="resources/images/hcm.jpg" alt="" class="img-fluid8">
                     </div>
                     <div class="team-hover">
                        <div class="desk text-center">
                           <h4 class="mb-2">Northern Vietnam</h4>
                        </div>
                        <div class="s-link">
                           <ul>
                              <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                              <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                              <li><a href="#"><span class="fa fa-rss"></span></a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="team-title">
                     <h5>Ho Chi Minh City</h5>
                     <span>Southern Vietnam</span>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 team-list-team">
                  <div class="team-member">
                     <div class="team-img">
                        <img src="resources/images/danang.jpg" alt="" class="img-fluid8">
                     </div>
                     <div class="team-hover">
                        <div class="desk text-center">
                           <h4 class="mb-2">Da Nanag</h4>
                        </div>
                        <div class="s-link">
                           <ul>
                              <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                              <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                              <li><a href="#"><span class="fa fa-rss"></span></a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="team-title">
                     <h5>Danang</h5>
                     <span>Centre Vietnam</span>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--//team -->
      <!-- clients -->
      <section class="clients py-lg-4 py-md-3 py-sm-3 py-3" id="clients">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title text-center mb-2">Our Customers Words</h3>
            <div class="line-w3ls-title text-center mb-md-5 mb-sm-4 mb-3">
            </div>
            <div class="row">
               <div class="col-md-3 col-sm-4 news-img text-center">
                  <img src="resources/images/like.png" alt="" class="img-fluid">
               </div>
               <div class="col-md-9 col-sm-8 news-wthree-text text-left">
                  <p>A fun activity for family with young children!
                  </p>
                  <h4 class="mt-3 ">Lilly Deo</h4>
               </div>
            </div>
            <div class="row mt-lg-5 mt-md-4 mt-3">
               <div class="col-md-9 col-sm-8 news-wthree-text text-right">
                  <p>Somewhat authentic experience of a homestay.
It is located a little off the main town and surrounded by fields. The view in the morning is great. 
                  </p>
                  <h4 class="mt-3 ">Rose Will 
                  </h4>
               </div>
               <div class="col-md-3 col-sm-4 news-img text-center">
                  <img src="resources/images/like.png" alt="" class="img-fluid">
               </div>
            </div>
            <div class="row mt-lg-5 mt-md-4 mt-3">
               <div class="col-md-3 col-sm-4 news-img text-center">
                  <img src="resources/images/like.png" alt="" class="img-fluid">
               </div>
               <div class="col-md-9 col-sm-8 news-wthree-text text-left">
                  <p>The staff was extremely friendly, caring and helpful in any way. 
                  </p>
                  <h4 class="mt-3 ">Lilly Deo</h4>
               </div>
            </div>
            <div class="row mt-lg-5 mt-md-4 mt-3">
               <div class="col-md-9 col-sm-8 news-wthree-text text-right">
                  <p>This is one of the most beautiful mountain ranges with some of the most scenic scenery ever. 
                  Beautiful little towns along your drive with the perfect picture opportunities ever.
                  </p>
                  <h4 class="mt-3 ">Rose Will 
                  </h4>
               </div>
               <div class="col-md-3 col-sm-4 news-img text-center">
                  <img src="resources/images/like.png" alt="" class="img-fluid">
               </div>
            </div>
         </div>
      </section>
      <!--//clients -->
      <div class="address_mail_footer_grids">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d117721.53204495324!2d104.92900172690761!3d22.772881155648598!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x36cc79b180b4239d%3A0xb7a373a73bc23544!2z67Kg7Yq464KoIO2VmOyepQ!5e0!3m2!1sko!2skr!4v1579679838698!5m2!1sko!2skr" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>      </div>


      <!-- footer -->
  <!-- Footer -->

<footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
      
      </footer>
      
  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <script src="resources/js/shop.js"></script>
  

  
  
<!--             </form>
 -->   </body>

</html>