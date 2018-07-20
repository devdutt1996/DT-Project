<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Details</title>
</head>
<body>
<spring:url value="/admin/category/add" var = "addUrl"/>
<a href = "${addUrl }">Add category</a>
 <table border = "1" width = "100%" >
  <tr>
   <th>Id</th>
   <th>Category Name: </th>
   <th>Description</th>
   <th colspan = "2">Action</th>
  </tr>
  
   <c:forEach items = "${list }" var = "category">
    <tr>
     <td>${category.id }</td>
     <td>${category.name }</td>
     <td>${category.description }</td>
    
   <spring:url value="/admin/category/update/${category.id }" var = "updateUrl"/>
    <td><a href = "${updateUrl }">Update</a>
   <spring:url value="/admin/category/delete/${category.id }" var = "deleteUrl"/>
   <td><a href = "${deleteUrl }">Delete</a></td>
   </tr>
   </c:forEach>
 </table>
</body>
</html>