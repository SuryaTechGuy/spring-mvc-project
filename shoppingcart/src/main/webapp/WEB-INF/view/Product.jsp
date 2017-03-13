<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
      
      <form action="product" method="post">
      <div class="form-group">
          <label for="inputProductid">ID</label>
          <input type="text" name="Id" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputName">Product Name</label>
          <input type="text" name="Name" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputDescription">Description</label>
          <input type="text" name="Description" class="form-control">
        </div> 
        <div class="form-group">
          <label for="inputDescription"> Quantity</label>
          <input type="text" name="Quantity" class="form-control">
        </div> 
        <div class="form-group">
          <label for="inputDescription"> Category</label>
          <input type="text" name="Category" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputDescription">Price</label>
          <input type="text" name="price" class="form-control">
        </div>  
             
  <button type="submit" class="btn btn btn-primary">
          Save
        </button> 
         </form>  
       </div>
       </div>
    </div>

</body>
</html>