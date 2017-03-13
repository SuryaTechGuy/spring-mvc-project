<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewCategory</title>
</head>
<body>
<div align="center"><h3>Category List</h3> 
<table border="2" width="70%" cellpadding="2"> 
<tr><th>Id</th><th>Name</th><th>Description</th><th>Edit</th><th>Delete</th></tr>   
   <c:forEach var="category" items="${categoryList}">
   <tr>  
   <td>${category.id}</td>  
   <td>${category.name}</td>  
   <td>${category.description}</td>  
   <td><a href="editcategory/${category.id}">Edit</a></td>  
   <td><a href="deletecategory/${category.id}">Delete</a></td>  
   
  </tr>  
  </c:forEach>
    </table>  
   </div>
   <br>
   </body>
</html>