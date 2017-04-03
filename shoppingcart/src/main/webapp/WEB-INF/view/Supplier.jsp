<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
    
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
      
      
      
    <%--   <form:form action="" commandName="supplierobj">
      <form:input path="id"></form:input>
      <form:input path="name"></form:input>
      <form:input path="email"></form:input>
      <form:input path="mobilenumber"></form:input>
      <form:input path="address"></form:input>
      </form:form>
     --%>  
      
      
      <form action="suppliersave" method="post">
      
      <div class="form-group">
          <label for="inputSupplierid">ID</label>
          <input type="text" name="id" value="${value.id}" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputName">Supplier Name</label>
          <input type="text" name="name" value="${value.name}" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputEmail">E-Mail</label>
          <input type="text" name="email" value="${value.email}" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputMobileNumber">MobileNumber</label>
          <input type="text" name="mobilenumber" value="${value.mobilenumber}" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputAddress">Address</label>
          <input type="text" name="address" value="${value.address}" class="form-control">
        </div>
        <button type="submit" class="btn btn btn-primary">
          Save
        </button> 
         </form>  
       </div>
       </div>
    </div>
        <br>
    <div align="center"><h3>Supplier List</h3> 
   		<table border="2" width="70%" cellpadding="2">  
  			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>E-Mail</th>
				<th>Mobile Number</th>
				<th>Address</th>
				<th>Edit</th>	           	
	           	<th>Delete</th>
	           	
	           	</tr>
           <c:forEach var="supplier" items="${supplierList}">
				<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.email}</td>
					<td>${supplier.mobilenumber}</td>
					<td>${supplier.address}</td>
					
					<td><a href="editsupplier?supplierId=${supplier.id}">Edit</a></td>
					
					<td><a href="deletesupplier?supplierId=${supplier.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
    </div> 
    </body>
</html>