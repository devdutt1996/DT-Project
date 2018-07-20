<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>galary</title>
<style>

.glyphicon { margin-right:5px; }
.thumbnail
{
    margin-bottom: 20px;
    padding: 0px;
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
}

.item.list-group-item
{
    float: none;
    width: 100%;
    background-color: #fff;
    margin-bottom: 10px;
}
.item.list-group-item:nth-of-type(odd):hover,.item.list-group-item:hover
{
    background: #428bca;
}

.item.list-group-item .list-group-image
{
    margin-right: 10px;
}
.item.list-group-item .thumbnail
{
    margin-bottom: 0px;
}
.item.list-group-item .caption
{
    padding: 9px 9px 0px 9px;
}
.item.list-group-item:nth-of-type(odd)
{
    background: #eeeeee;
}

.item.list-group-item:before, .item.list-group-item:after
{
    display: table;
    content: " ";
}

.item.list-group-item img
{
    float: left;
}
.item.list-group-item:after
{
    clear: both;
}
.list-group-item-text
{
    margin: 0 0 11px;
}


</style>


</head>
<body>
<jsp:include page="header.jsp" />

<spring:url value="/product/add" var = "addUrl"/>

<div class="container">
    <div class="well well-sm">
        <strong>Books Catalogue</strong>
    </div>
  
    <div id="products" class="row list-group">
      <c:forEach items = "${pro_list }" var = "product">
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
               <img class = "img img-thumbnail" style = "width:200px; height:200px;" src = "${pageContext.request.contextPath }/resources/${product.imageUrl}"></img>
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">Name: ${product.pname }</h4>
                    
             
                         <h4 class="group inner list-group-item-heading">Brand:   ${product.brand }</h4>
                          <h4 class="group inner list-group-item-heading">Quantity:   ${product.quantity }</h4>
                    <p class="group inner list-group-item-text">
                     
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <p class="lead">Price: 
                                $${product.price }</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <a class="btn btn-success" href="${pageContext.request.contextPath }/viewsingleproduct/${product.pid}">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
    
</div>

</body>
</html>