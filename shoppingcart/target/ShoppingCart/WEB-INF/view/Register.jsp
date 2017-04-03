<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register_ShoppingCart</title>
<jsp:include page="Css.jsp" />
</head>
<body>
<div class="container">

      <h3>SignUp To Enjoy Shopping Cart</h3>
        
      <div class="row">   <div class="main"> 
      <form action="register" method="post">
      <div class="form-group">
          <label for="inputFirstname">First Name</label>
          <input type="text" name="firstname" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputLastname">Last Name</label>
          <input type="text" name="lastname" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputUsername">User Name</label>
          <input type="text" name="username" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputPassword">Password</label>
          <input type="password" name="password" class="form-control">
          </div>   
          <div class="form-group">
          <label for="inputEmail">E-Mail</label>
          <input type="text" name="email" class="form-control">
          </div>
          <div class="form-group">
          <label for="inputEmail">Mobile Number</label>
          <input type="text" name="mobilenumber" class="form-control">
          </div>
          <div class="form-group">
          <label for="inputAddress">Address</label>
          <input type="text" name="address" class="form-control">
          </div>             
       
        <button type="submit" class="btn btn btn-primary">
          Register
        </button>  </form> 
       </div>
   </div>    
</div> 
</body>
</html>