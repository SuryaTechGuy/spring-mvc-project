<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login_ShoppingCart</title>
<jsp:include page="Css.jsp" />
</head>
<body>
<div class="container">
  <div class="row">
    <div class="main">
      <h3>Please Log In, or <a href="Register">Sign Up</a></h3>
      <div class="row">
        <div class="col-xs-6 col-sm-6 col-md-6">
          <a href="#" class="btn btn-lg btn-primary btn-block">Facebook</a>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-6">
          <a href="#" class="btn btn-lg btn-info btn-block">Google</a>
        </div>
      </div>
      <div class="login-or">
        <hr class="hr-or">
        <span class="span-or">or</span>
      </div>
      
      <form  action="validate" method="post">
        <div class="form-group">
          <label for="inputUsernameEmail">Username Or Email</label>
          <input type="text" name="user" class="form-control" id="inputUsernameEmail">
        </div>
        <div class="form-group">
          <a class="pull-right" href="ForgotPassword">Forgot password?</a>
          <label for="inputPassword">Password</label>
          <input type="password" name="password" class="form-control" id="inputPassword">
                  
        <div class="checkbox pull-right">
          <label>
            <input type="checkbox">
            Remember me </label>
        </div>
        <br>
        <button type="submit" class="btn btn btn-primary">
          Log In
        </button>   
       </div></form>         
    </div>    
  </div>
</div>
</body>
</html>