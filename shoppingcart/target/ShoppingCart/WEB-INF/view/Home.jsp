<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>ShoppingCart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Home">ShoppingCart</a>
       </div>
       <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Category">Category</a>
       </div>
       <div class="navbar-header">
      <a class="navbar-brand" href="Supplier">Supplier</a>
       </div>
    <div class="navbar-header">
      <a class="navbar-brand" href="Product">Product</a>
       </div>
     <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Electronics<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Mobiles</a></li>
          <li><a href="#">Laptops</a></li>
          <li><a href="#">Accessories</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Fashion<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Men</a></li>
          <li><a href="#">Women</a></li>
           <li><a href="#">Clothing</a></li>
          <li><a href="#">Watches</a></li>
    </ul></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Home Furniture<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Kitchen Dining</a></li>
          <li><a href="#">Furniture</a></li>
          <li><a href="#">HouseKeeping</a></li>
    </ul></li>   
        <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
    </ul>
    <ul class="nav navbar-nav">
       <c:if test="${ Loggedin != true }">
<li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
<li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
     
	   </c:if>
<c:if test="${ Loggedin == true }">
<li><a href="userpage?username=${Customer }"><span class="glyphicon glyphicon-user"></span> ${Customer}'s Account</a></li>
<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
<li><a href="Logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
       </c:if>
       
       
       	</ul>
      </div></div>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
   <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
<!-- Wrapper for slides -->
    <div class="carousel-inner">
    <div class="item">
        <img src="http://g-ecx.images-amazon.com/images/G/31/img16/Wireless/Mobiles/iPhone6/28999/GW/4500x900_28999._UX1500_SX1500_.jpg" height="500px" width="1500px">
      </div>
      
       <div class="item">
        <img src="http://g-ecx.images-amazon.com/images/G/31/img17/PC/Jan/SamsungGearS3/launch/01_GW_PC_Hero_samsung_just_launched._UX1500_SX1500_.jpg" height="500px" width="1500px">
       </div>

      <div class="item">
        <img src="http://g-ecx.images-amazon.com/images/G/31/img16/Home-SA/Bunks/Summer/Summer-NEW-Hero._UX1500_SX1500_.jpg" height="500px" width="1500px">
      </div>
    
      <div class="item active">
        <img src="http://g-ecx.images-amazon.com/images/G/31/img17/Beauty/GW/woman-day-final-bunk._UX1500_SX1500_.jpg" height="500px" width="1500px">
      </div>    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
        </div>
</nav>
    </head>
<body>
<br>
<div align="center"><h3>${msg}</h3></div>
<br>
<div align="center"><h3>${loginmessage}</h3></div>
<hr>
</body>
</html>