<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Ragistration form</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  
  body{
	background-image:url(https://wallpapertag.com/wallpaper/full/c/a/a/157415-simplistic-wallpapers-1920x1080-lockscreen.jpg)
}
#login-name{
font-size: 65px;
font-family: arabic typesetting;
border-bottom-style: ridge;
color:white;

}
#login{
background-color:rgba(13,13,13,0.2);
min-height:700px;
padding: 40px 80px 40px 80px;
box-shadow: -10px -10px 9px #33cc33;

}
.user{
font-size: 29px;

font-family: arabic typesetting;

color: white;





}

#iconn{

background-color: #5cb85c;
border-color: #4cae4c;
color: white;

}
#iconn1{

background-color: #5cb85c;
border-color: #4cae4c;
color: white;

}

#text1{

	border-radius: 0;
	height: 40px;
}
#text2{

	border-radius: 0;
	height: 40px;
}

.btn{
	width: 50%;
	float: left;
	height: 40px;
	font-size: 18px;
}

.label_001{

	font-size: 18px;
	color: white;
	font-style: italic;
}
  
  
  </style>
</head>
<body>

<%@ include file="header.jsp" %>
<spring:url value="/customer/save" var="saveURL"  />



 <form:form action="${saveURL }" method="post" modelAttribute="customer" style="text-align:center;">
   <form:hidden path="id"/>
   <div class="container">
<br/>
<br/>
<br/>
<br/>

<center> <b id="login-name">SIGN-UP Here </b> </center>>
	
	<div class="row">
		
<div class="col-md-6 col-md-offset-3" id="login">  
<h1 style = "color:white;">Customer Credentials</h1>
	
<div class="form-group">
<label class="user">Firstname:  </label>	
<form:input type="text" class="form-control" id="text1" name="tl" placeholder="Enter Firstname" path = "firstname"/>
</div>
<div class = "form-group">
<label class = "user">Lastname: </label>
<form:input type = "text" class = "form-control" id = "text1" placeholder = "Enter Lastname" path = "lastname"/>
</div>

<div class="form-group">
<label class="user"> Email ID: </label>

<form:input type="email" class="form-control" id="text2" path="user.email" placeholder=" Enter EmailID"/>

</div>
<div class="form-group">
<label class="user"> Mobile No: </label>
<form:input type="text" class="form-control" id="text2" path = "phonenumber" placeholder=" Enter your mobile Number"/>

</div>

<div class="form-group">
<label class="user"> Password: </label>
<form:input type="password" class="form-control" id="text2" path="user.password" placeholder=" Enter Password"/>
</div>
<hr>
<h1 class = "user"><b>ShippingAddress</b></h1>
<div class="form-group">
<label class="user">Apartmentnumber:  </label>	
<form:input type="text" class="form-control" id="text1" name="tl" placeholder="Enter Apartmentnumber" path = "shippingaddress.apartmentnumber"/>
</div>
<div class = "form-group">
<label class = "user">Streetname: </label>
<form:input type = "text" class = "form-control" id = "text1" placeholder = "Enter Streetname" path = "shippingaddress.streetname"/>
</div>
<div class="form-group">
<label class="user"> City: </label>
<form:input type="text" class="form-control" id="text2" path = "shippingaddress.city" placeholder=" Enter City"/>
</div>
<div class="form-group">                  
<label class="user">State: </label>
<form:input type="text" class="form-control" id="text2"  placeholder=" Enter State" path="shippingaddress.state"/>
</div>
<div class="form-group">
<label class="user">Country: </label>
<form:input type="text" class="form-control" id="text2"  placeholder=" Enter Country" path="shippingaddress.country"/>
</div>
<div class="form-group">
<label class="user">Zipcode:  </label>	
<form:input type="text" class="form-control" id="text1" name="tl" placeholder="Enter Zipcode" path = "shippingaddress.zipcode"/>
</div>
<hr>
<h1 class = "user"><b>BillingAddress</b></h1>
<div class="form-group">
<label class="user">Apartmentnumber:  </label>	
<form:input type="text" class="form-control" id="text1" name="tl" placeholder="Enter Apartmentnumber" path = "billingaddress.apartmentnumber"/>
</div>
<div class = "form-group">
<label class = "user">Streetname: </label>
<form:input type = "text" class = "form-control" id = "text1" placeholder = "Enter Streetname" path = "billingaddress.streetname"/>
</div>
<div class="form-group">
<label class="user"> City: </label>
<form:input type="text" class="form-control" id="text2" path = "billingaddress.city" placeholder=" Enter City"/>
</div>
<div class="form-group">                  
<label class="user">State: </label>
<form:input type="text" class="form-control" id="text2"  placeholder=" Enter State" path="billingaddress.state"/>
</div>
<div class="form-group">
<label class="user">Country: </label>
<form:input type="text" class="form-control" id="text2"  placeholder=" Enter Country" path="billingaddress.country"/>
</div>
<div class="form-group">
<label class="user">Zipcode:  </label>	
<form:input type="text" class="form-control" id="text1" name="tl" placeholder="Enter Zipcode" path = "billingaddress.zipcode"/>
</div>
<div style = "margin-top:50px;" class="form-group">
<form:button type="submit" class="btn btn-success" style="border-radius:0px;">Register</form:button>
<form:button type="reset" class="btn btn-danger " value="Reset" style="border-radius:0px;">Reset</form:button>

    </div>
    <br/><br/><br/>

   
  </div>
	</div>
</div>
   </form:form>
</body>
</html>