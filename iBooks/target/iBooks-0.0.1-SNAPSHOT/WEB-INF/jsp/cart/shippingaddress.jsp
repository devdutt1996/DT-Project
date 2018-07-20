<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ShippingAddress</title>
</head>
<body>
<jsp:include page = "header.jsp"/>
<div class = "container" style = "width:450px; heigth:auto;">
 <form:form action = "${pageContext.request.contextPath }/cart/createorder"  modelAttribute="shippingaddress">
<form:hidden path="id"/>
<div class = "form-group">
 <label>Apartmentnumber: </label>
 <form:input class = "form-control" type = "text" path = "apartmentnumber" value = "${shippingaddress.apartmentnumber }"/>
</div>
<div class = "form-group">
 <label>Streetname: </label>
 <form:input class = "form-control" type = "text" path = "streetname"/>
</div>
<div class = "form-group">
 <label>City: </label>
 <form:input class = "form-control" type = "text" path = "city"/>
</div>
<div class = "form-group">
 <label>State: </label>
 <form:input class = "form-control" type = "text" path = "state"/>
</div>
<div class = "form-group">
 <label>Country: </label>
 <form:input class = "form-control" type = "text" path = "country"/>
</div>
<div class = "form-group">
 <label>Zipcode: </label>
 <form:input class = "form-control" type = "text" path = "zipcode"/>
</div>
<div class = "form-group">
 <form:button type = "submit" class = "btn btn-success">Place Order</form:button>
</div>
</form:form>
</div>
</body>
</html>