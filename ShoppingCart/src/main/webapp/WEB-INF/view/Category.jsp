<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
      
      <form action="category" method="post">
      <div class="form-group">
          <label for="inputCategoryid">ID</label>
          <input type="text" name="id" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputName">Category Name</label>
          <input type="text" name="name" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputDescription">Category Description</label>
          <input type="text" name="description" class="form-control">
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