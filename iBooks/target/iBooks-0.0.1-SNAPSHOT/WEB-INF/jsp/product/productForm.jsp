<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>products</title>

<style>
.error{
color:red;
}
</style>


</head>
<body>
  
  
	<jsp:include page="header.jsp"></jsp:include>
 <h1 style=" margin:auto; width:80%; text-align:center;">Add product</h1>
<spring:url value="/admin/product/save" var="saveURL"  />

<div class="container">

 <form:form action="${saveURL }" method="post" modelAttribute="productForm" style="text-align:center;" enctype = "multipart/form-data">
   <form:hidden path="pid"/>
   
   <div class="form-group">
   
   
   <lable for="pname">pname:</lable>
     <form:input type="text" class="form-control" id="pname" placeholder=" enter pname" path="pname"/>
     <form:errors path = "pname" class = "error"/>
    
   </div>
   <div class = "form-group">
    <label>Select Category</label>
    <form:select class = "form-control" path="category.id">
     <c:forEach items = "${category}" var = "c">
      <form:option value="${c.id }">${c.name }</form:option>
     </c:forEach>
    </form:select>
   </div>
   
   <div class="form-group">
   
   
   <lable for="brand">brand:</lable>
     <form:input type="text" class="form-control" id="brand" placeholder=" enter brand" path="brand"/>
     <form:errors path = "brand" class = "error"/>
    
   </div>
      
      <div class="form-group">
   
   
   <lable for="pDescription">Discription:</lable>
     <form:input type="text" class="form-control" id="pDiscrption" placeholder=" enter discrption" path="description"/>
     <form:errors path = "description" class = "error"/>
     
    
   </div>
  
   <div class="form-group">
   
   
   <lable for="quantity">Quantity:</lable>
     <form:input type="text" class="form-control" id="quantity" placeholder=" enter quantity" path="quantity"/>
    <form:errors path = "quantity" class = "error"/>
   </div>

   <div class="form-group">
   
   
   <lable for="price">Price:</lable>
     <form:input type="text" class="form-control" id="price" placeholder=" enter price" path="price"/>
     <form:errors path = "price" class = "error"/>
     
    
   </div>
   <div class = "form-group">
   <label>Upload Image: </label>
   <form:input path="file" type = "file" class = "form-control"/>
   </div>
       
              
              <form:button type="submit" class="btn btn-default">save</form:button>
             
   
  
     
   </form:form>
   
   </div>
                           

</body>
</html>