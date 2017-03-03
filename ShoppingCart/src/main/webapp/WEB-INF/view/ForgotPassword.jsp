<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ForgotPassword</title>
<jsp:include page="Css.jsp" />
</head>
<body>
<div class="container">

      <h3>Change Your Password</h3>
        
      <div class="row">   <div class="main"> 

<form  action="forgot" method="get">
        <div class="form-group">
          <label for="inputUsernameEmail">UserName Or Email</label>
          <input type="text" name="user" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputMobilenumber">Mobile Number</label>
          <input type="text" name="number" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputPassword">Password</label>
          <input type="password"  class="form-control">
          </div>
          <div class="form-group">
          <label for="inputConfirmPassword">Confirm Password</label>
          <input type="password" name="password" class="form-control">
          </div>
        <br>
        <button type="submit" class="btn btn btn-primary">
          Change Password
        </button>
        <div class="button pull-right">   
        <button type="reset" class="btn btn btn-primary">
          Reset
        </button> 
        </div>
        </form>
        </div>
        </div></div>
        ${fgmsg}
        
</body>
</html>