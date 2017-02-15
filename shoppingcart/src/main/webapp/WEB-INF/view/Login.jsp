<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginPage</title>
</head>
<body>
<center><h2>Shopping Cart</h2></center>
<center> ${loginMessege} </center>
<hr>
<form action="validate">
<table>
      <tr>
             <td><label>User Name:</label></td>
             <td><input type="text" name="user"></input></td>
      </tr>
            
      <tr>
                <td><label>Password:</label></td>
                <td><input type="password" name="password"></input></td>
      </tr>
 </table>
<input type="submit" value="Login">

<input type="reset" value="Reset">
</form>
<br>
New To ShoppingCart?<a href="Register"><input type="submit" value="Register"></a>
</body>
</html>