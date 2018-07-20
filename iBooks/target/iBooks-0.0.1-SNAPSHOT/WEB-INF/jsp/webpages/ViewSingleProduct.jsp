<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add to cart</title>
</head>
<body>
<jsp:include page = "header.jsp"/>
<div class="container" style = "width:450px;">
 
  
    <div id="products" class="row list-group" >
    <%--  <c:forEach items = "${product }" var = "product"> --%>
   
            <div class="thumbnail"  style = "padding:25px;">
               <img class = "img img-thumbnail" style = "width:200px; height:200px;" src = "${pageContext.request.contextPath }/resources/${product.imageUrl}"></img>
                <div class="row">
                    <h4 class="group inner list-group-item-heading">Name: ${product.pname }</h4>
                    
             
                         <h4 class="group inner list-group-item-heading">Brand:   ${product.brand }</h4>
                         
                    <p class="group inner list-group-item-text">
                         <p class="lead">Price: $${product.price }</p>
                         <div class = "form-group">
                         <c:url value="/cart/addToCart/${product.pid }" var = "addUrl"></c:url>
                         <form action = " ${addUrl }" method = "POST">
                         <label>Add Quantity (Quantity left: ${product.quantity })</label> 
                         <input class = "form-control" type = "number" min = "0" max  = "${product.quantity }" name = "requestedQuantity" placeholder = "Enter quantity"/>
                         
                         <div class = "form-group">
                         <br>
                         <button class="btn btn-success" type = "submit">Add to cart</button>
                         </div>
                         </form>
                        </div>
                    </div>
                
            </div>
        
       <%--  </c:forEach>--%>
    </div>
    
</div>
</body>
</html>