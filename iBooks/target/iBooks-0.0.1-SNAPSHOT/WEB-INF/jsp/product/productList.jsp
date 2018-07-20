<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Products</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<br>
<br>

<h2 style="font-family:Concert One; margin: auto; color: black; text-align:center;"> <ul>View Product </ul> </h2>

<br>
<br>
<spring:url value="/admin/product/add" var = "addUrl"/>

<table style="font-family:Concert One; margin: auto; border-style: solid; border-width: 5px; border-color:white; width:100%; text-align: center;" class="table table-striped">

            <thead style="color:black; background-color: white;">
              <tr>
              <td colspan = "2"><a href = "${addUrl }">Add Product</a></td>
              </tr>
              <tr>
                 <td style="border-left: solid 1px black;">ID</td>
                 <td style="border-left: solid 1px black;">BOOK COVER</td>
                 <td style="border-left: solid 1px black;">NAME</td>
                 <td style="border-left: solid 1px black;">CATEGORY</td>
                 <td style="border-left: solid 1px black;">DISCRIPTION</td>
                 <td style="border-left: solid 1px black;">PRICE</td>
                 <td style="border-left: solid 1px black;">BRAND</td>
                 <td style="border-left: solid 1px black;">QUANTITY</td>
                 <td style="border-left: solid 1px black;">UPDATE</td>
                 <td style="border-left: solid 1px black;">DELETE</td>
             </tr>
         </thead>
         
          <c:forEach items="${list }" var="Product">
              
              <tbody>
	              <tr>
	                 <td style="border-left: solid 1px black;">${Product.pid}</td>
	                 <td style="border-left: solid 1px black;"><img class = "img img-thumbnail" style = "width:200px;" src = "${pageContext.request.contextPath }/resources/${Product.imageUrl}"></img></td>
	                 <td style="border-left: solid 1px black;">${Product.pname}</td>
	                 <td style="border-left: solid 1px black;">${Product.category.name}</td>
	                 <td style="border-left: solid 1px black;">${Product.description}</td>
	                 <td style="border-left: solid 1px black;">${Product.price}</td>
	                 <td style="border-left: solid 1px black;">${Product.brand}</td>
	                 <td style="border-left: solid 1px black;">${Product.quantity}</td>
	    
	                 
	                 <td style="border-left: solid 1px black;">
	                    <spring:url value="/admin/product/update/${Product.pid }" var = "updateUrl"/>
						<a class="btn btn-success" href="${updateUrl}">Update</a>
					 </td>
	                 
	                 <td style="border-left: solid 1px black;">
	                  <spring:url value="/admin/product/delete/${Product.pid }" var = "deleteUrl"/>
						<a class="btn btn-danger" href="${deleteUrl}">Delete</a>
					 </td>

	                 
	                 
	             </tr>
	         </tbody>
           </c:forEach>
        </tbody>          
        
        
        </br>
        
       
       
      
      
      
      </table>

</body>
</html>