<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
<jsp:include page="Css.jsp" />
</head>
<body>
<div class="container">

      <h3>Product Of ShoppingCart</h3>
        
      <div class="row">   <div class="main"> 
      
      <form action="saveproduct" method="post">
      <div class="form-group">
          <label for="inputProductid">ID</label>
          <input type="text" name="id" value="${values.id}" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputName">Product Name</label>
          <input type="text" name="name" value="${values.name}" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputDescription">Description</label>
          <input type="text" name="description" value="${values.description}" class="form-control">
        </div> 
        <div class="form-group">
          <label for="inputPrice">Price</label>
          <input type="text" name="price" value="${values.price}"  class="form-control">
        </div>  
        <div class="form-group">
          <label for="inputQuantity"> Quantity</label>
          <input type="text" name="quantity" value="${values.quantity}" class="form-control">
        </div> 
<select name="category_id">        
<option value=category>Category List</option>
<c:forEach var="category" items="${category_dropdown}"> 
<option  value="${category.id}">${category.name} </option>
</c:forEach>
</select>
<br>
 <select name="supplier_id">
<option value=supplier>Supplier List</option>
<c:forEach var="supplier" items="${supplier_dropdown}"> 
<option value="${supplier.id}">${supplier.name}</option>
 </c:forEach>
</select>   
              
  <button type="submit" class="btn btn btn-primary">
          Save
        </button>     
        </form>  
       </div>
       </div>
    </div>            
    <div align="center"><h3>Product List</h3> 
   		<table border="2" width="70%" cellpadding="2">  
  			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Category</th>
				<th>Supplier</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
   <c:forEach var="product" items="${productList}">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
					<td>${product.quantity}</td>
					<td>${product.category_id}</td>				
					<td>${product.supplier_id}</td>				
					
					<td><a href="editproduct?productId=${product.id}">Edit</a></td>
					
					<td><a href="deleteproduct?productId=${product.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
    </div> 
     </body>
</html>