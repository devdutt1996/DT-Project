<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Customer</title>

</head>
<body>

<%@ include file="header.jsp" %>

<br>
<br>

<spring:url value="/customer/add" var="addURL"/>
<h2 style="font-family:Concert One; margin: auto; color: black; text-align: center;">" <a href="${addURL }"> <ul>Add New Customer</ul></a></h2>

<br>
<br>

<table style="font-family:Concert One;margin:auto;border-style:solid; border-width: 5px; border-color:white; width:80%; text-align: center;" class="table table-striped">
   <thead style="color:black; background-color: white;">
         <tr>

    <td style="border-left: solid 1px black;">Id</td>
    <td style="border-left: solid 1px black;">Firstname</td>
    <td style="border-left: solid 1px black;">lastname</td>
    <td style="border-left: solid 1px black;">Gender</td>
    <td style="border-left: solid 1px black;">Address</td>
    <td colspan="2"style="border-left: solid 1px black;">Action</td>

</tr>
</thead>


<c:forEach items="${ list}" var="customer" >

<tbody>
  <tr>
      <td style="border-left: solid 1px black;">${customer.id }</td>
      <td style="border-left: solid 1px black;">${customer.firstname }</td>
      <td style="border-left: solid 1px black;">${customer.lastname }</td>
      <td style="border-left: solid 1px black;">${customer.gender }</td>
      <td style="border-left: solid 1px black;">${customer.address}</td>
      <td>
        <spring:url value="/customer/update/${customer.id }"  var="updateURL"/>
          <a href="${updateURL }">update</a>
        
        </td>
         <td>
        <spring:url value="/customer/delete/${customer.id }"  var="deleteURL"/>
          <a href="${deleteURL }">delete</a>
        
        </td>
  </tr>
</tbody>
</c:forEach>

</tbody>
</br>


</table>
</body>
</html>