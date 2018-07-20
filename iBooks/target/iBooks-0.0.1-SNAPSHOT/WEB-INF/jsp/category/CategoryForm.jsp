<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Category</title>
</head>
<body style="margin:auto; width:50%; text-align:center">
   
   
   <h1>ADD Category</h1>
  <spring:url value="/admin/category/save" var="saveURL"/>
  
 
  <div class="contanier" style = "width:750px;">
  
 <form:form action="${saveURL }" method="post" modelAttribute="categoryForm" style="text-align:center;">
   <form:hidden path="id"/>
   
   <div class="form-group">
   
   <div class ="form-group">
   <lable for="name">category Name: </lable>
     <form:input type="text" class="form-control" id="pname" placeholder=" enter pname" path="name"/>
     </div>
     
    
   </div>
      
      <div class="form-group">
   
   
   <lable for="Description">Discription:</lable>
     <form:input type="text" class="form-control" id="pDiscrption" placeholder=" enter discrption" path="description"/>
    
   </div>

        
       
              
              <form:button type="submit" class="btn btn-default">save</form:button>
             
   
  
     
   </form:form>
   
    </div>

</body>
</html>