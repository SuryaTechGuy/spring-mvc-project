<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category_ShoppingCart</title>
<jsp:include page="Css.jsp" />
</head>
<body>
<div class="container">

      <h3>Category Of ShoppingCart</h3>
        
      <div class="row">   <div class="main"> 
      
      <form action=save method=POST>
      <div class="form-group">
          <label for="inputCategoryid">ID</label>
          <input type="text" name="id" value="${values.id}" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputName">Category Name</label>
          <input type="text" name="name" value="${values.name}" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputDescription">Category Description</label>
          <input type="text" name="description"  value="${values.description}" class="form-control">
        </div>  
             
  <button type="submit" class="btn btn btn-primary">
          Save
        </button>
         </form>  
      </div>
       </div>
    </div>        
    <div align="center"><h3>Category List</h3> 
   		<table border="2" width="70%" cellpadding="2">  
  			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Description</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
   <c:forEach var="category" items="${categoryList}">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="editcategory?categoryId=${category.id}">Edit</a></td>
					
					<td><a href="deletecategory?categoryId=${category.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
    </div>           
</body>
</html>