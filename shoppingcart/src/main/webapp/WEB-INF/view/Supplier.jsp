<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>
<jsp:include page="Css.jsp" />
</head>
<body>
<div class="container">

      <h3>Supplier Of ShoppingCart</h3>
        
      <div class="row">   <div class="main"> 
      
      <form action="supplier" method="post">
      <div class="form-group">
          <label for="inputSupplierid">ID</label>
          <input type="text" name="Id" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputName">Supplier Name</label>
          <input type="text" name="SupplierName" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputEmail">E-Mail</label>
          <input type="text" name="Email" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputMobileNumber">MobileNumber</label>
          <input type="text" name="MobileNumber" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputAddress">Address</label>
          <input type="text" name="Address" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputProduct">Product</label>
          <input type="text" name="ProductName" class="form-control">
        </div> 
        <div class="form-group">
          <label for="inputQuantity"> Quantity</label>
          <input type="text" name="Quantity" class="form-control">
        </div> 
        <div class="form-group">
          <label for="inputDescription"> Category</label>
          <input type="text" name="Category" class="form-control">
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