<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Category</title>
</head>
<body>
<h1>Edit Category</h1>
       <form:form method="POST" action="editsave">  
      	<table >  
      	<tr>
      	<td>Id:</td>  
         <td><form:input  path="id" /></td>
         </tr> 
         <tr>  
          <td>Name : </td> 
          <td><form:input path="name"  /></td>
         </tr>  
         <tr>  
          <td>Description:</td>  
          <td><form:input path="description" /></td>
         </tr> 
         
         <tr>  
          <td><input type="submit" value="Edit" /></td>  
         </tr>  
        </table>  
       </form:form>  
</body>
</html>