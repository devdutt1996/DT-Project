<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Cart</title>
</head>
<body>
<jsp:include page = "header.jsp"></jsp:include>
<c:if test= "${!empty (cartItems)}">
<spring:url value="/cart/clearcart" var = "clear"/>
<a class = "btn btn-danger" href = "${clear }">clear</a>

<table class = "table"|>
<thead id = "thead">
<tr>
 <th>Icon</td>
 <th>Book Name</th>
 <th>Category</th>
 <th>Description</th>
 <th>Quantity</th>
 <th>Price</th>
 <th>Action</th>
</tr>

</thead>
<c:forEach items = "${cartItems }" var = "cart">
<tr>
<td><img class = "img img-thumbnail" style = "width:200px; height:200px;" src = "${pageContext.request.contextPath}/resources/${cart.product.imageUrl }"/></td>
<td>${cart.product.pname }</td>
<td>${cart.product.category.name }</td>
<td>${cart.product.description }</td>
<td>${cart.quantity }</td>
<td>${cart.product.price }</td>
<c:set value = "${totalPrice +  cart.totalPrice}" var = "totalPrice"></c:set>
<spring:url value="/deleteItem/${cart.itemId}" var = "deleteUrl"/>
<td><a class = " btn btn-danger" href = "${deleteUrl }">Remove</a></td>
</tr>
</c:forEach>
</table>

<h4>Total Price: </h4>  <b>${totalPrice }</b>
<a href = "<c:url value='/cart/shippingaddress'></c:url>" class = "btn btn-primary">Checkout</a>
</c:if>
<c:if test = "${empty (cartItems)}">
<h1 class = "heading1">Your Cart is Empty</h1>


</c:if>
</body>
</html>