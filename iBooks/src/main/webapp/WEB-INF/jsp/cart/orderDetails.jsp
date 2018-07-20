<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OrderDetails</title>
<style>

#main{
    padding:12px;
    
}
.offset-margin{
    margin-top:-10px;
}
td{
    padding-left:10px;
}
.description{
    min-height:120px;
    margin-bottom:90px;
}
.blank{
    border-top:solid 1px #eee;
    border-left:solid 1px #eee;
    min-height:120px;
    padding:0px !important;
}
.panel-body{
    padding-bottom:0 !important;
}
.content{
   margin-top:40px; 
   padding-bottom:20px !important;
}
.table{
    margin-bottom: 0px !important;
}



</style>

</head>
<body>
<jsp:include page = "header.jsp"></jsp:include>



<div class="row">
	<div class="col-lg-8 col-md-8 col-sm-8 col-lg-offset-2">
		<div class="panel panel-default main">

		    <div class="panel-body">
		        
		        <div class="row">
		            <div class="col-lg-9 col-md-9 col-sm-9">
		                <h3>Shipping Address </h3>
		                <p class="offset-margin">Apartmentnumber: ${customerorder.user.customer.shippingaddress.apartmentnumber }</p>
		                <p class="offset-margin">Streetname ${customerorder.user.customer.shippingaddress.streetname}</p>
		                <p class="offset-margin">City ${customerorder.user.customer.shippingaddress.city}</p>
		                <p class="offset-margin">State ${customerorder.user.customer.shippingaddress.state}</p>
                        <p class="offset-margin">Country ${customerorder.user.customer.shippingaddress.country}</p> 
		                <p class="offset-margin">Zipcode ${customerorder.user.customer.shippingaddress.zipcode}</p>
		                
		                 <h3>Billing Address </h3>
		                <p class="offset-margin">Apartmentnumber: ${customerorder.user.customer.billingaddress.apartmentnumber }</p>
		                <p class="offset-margin">Streetname ${customerorder.user.customer.billingaddress.streetname}</p>
		                <p class="offset-margin">City ${customerorder.user.customer.billingaddress.city}</p>
		                <p class="offset-margin">State ${customerorder.user.customer.billingaddress.state}</p>
                        <p class="offset-margin">Country ${customerorder.user.customer.billingaddress.country}</p> 
		                <p class="offset-margin">Zipcode ${customerorder.user.customer.billingaddress.zipcode}</p> 
		            </div>
		            
		           
		            
		            <div class="col-lg-3 col-md-3 col-sm-3">
		                <h1>Invoice</h1>
		            </div>
		        </div>
		        <!--row-->
		        
		        <hr>
		  
		    <div class="col-lg-3 col-md-3 col-sm-3">
		                <p><label>Invoice#:</label> ${customerorder.orderId }</p>
		               
		            </div>      
		        
		        <div class="row">
		            <div class="col-lg-10 col-md-10 col-sm-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 content">
		                <div class="panel panel-default">
		                    <!--<div class="panel-heading">-->
                		    <!--    <h1 class="panel-title">Invoice Details</h1>-->
                		    <!--</div>-->
		                    <div class="panel-body">
		                        <div class="row">
    		                        <div class=" col-lg-12 col-md-12 col-sm-12 description">
            		              <table class="table">
                                    <thead>
                                      <tr>
                                        <th>Icon</th>
                                        <th>Product</th>
                                         <th>Qty</th>
                                        <th>Price</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items = "${cartItems }" var = "cartItems"> 
                                      <tr>
                                        <td><img class = "img img-thumbnail" style = "width:100px; height:100px;" src = "${pageContext.request.contextPath}/resources/${cartItems.product.imageUrl }"/></td>
                                        <td>${cartItems.product.pname }</td>
                                        <td>${cartItems.quantity}</td>
                                        <td>${cartItems.product.price }</td>
                                      </tr>
                                   </c:forEach>
    
                                    </tbody>
                                  </table>
    		                            
    		                         
    		                       </div>
    		                       
    		                       <div class="col-lg-8 pull-left" style="border-top:solid #ddd 1px;"></div>
    		                        
        		                        <div class="col-lg-4 col-md-4 col-sm-4 pull-right blank">
        		                            
        		                  <table class="table table bordered">
        		                      <tbody>
        		                       
		                                <tr>
		                                    <td><label>Total: ${customerorder.grandTotal }</label><span class="pull-right"></span></td>
		                                </tr>
		                               
        		                      </tbody>

		                            </table>
        		                        </div>
    		                        </div>
		                        <!--row-->
		                    </div>
		                    
		                </div>
		            </div>
		        </div>
		        
		        
		    </div>
		    
		</div>
	</div>
</div>


</body>
</html>