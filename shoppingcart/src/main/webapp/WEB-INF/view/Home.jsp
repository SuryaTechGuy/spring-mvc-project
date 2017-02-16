<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Home">ShoppingCart</a>
    </div>
    <ul class="nav navbar-nav">
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Electronics<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Mobiles</a></li>
          <li><a href="#">Laptops</a></li>
          <li><a href="#">Accessories</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Appliances<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Mobiles</a></li>
          <li><a href="#">Laptops</a></li>
          <li><a href="#">Accessories</a></li>
    </ul>
    </li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Men<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Footwear</a></li>
          <li><a href="#">Clothing</a></li>
          <li><a href="#">Watches</a></li>
    </ul>
    </li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Women<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Clothing</a></li>
          <li><a href="#">Beauty & Grooming</a></li>
          <li><a href="#">Jewellery</a></li>
    </ul>
    </li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Baby & Kids<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Clothing</a></li>
          <li><a href="#">Toys</a></li>
          <li><a href="#">BabyCare</a></li>
    </ul>
    </li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Home & Furniture<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Kitchen & Dining</a></li>
          <li><a href="#">Furniture</a></li>
          <li><a href="#">HouseKeeping</a></li>
    </ul>
    </li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">More<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Books</a></li>
          <li><a href="#">Gaming</a></li>
          <li><a href="#">Stationary</a></li>
    </ul>
    </li>     
      <ul class="nav navbar-nav navbar-right">
      <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul></div></nav> 
 </head>
<body>
<center> ${msg} </center>
<br>
<center>${loginMessage}</center>
<br>
<center>${loginError}</center>
<hr>
<br>
</body>
</html>