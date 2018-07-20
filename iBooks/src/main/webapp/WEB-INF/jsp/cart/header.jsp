<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<c:if test="${pageContext.request.userPrincipal == null}">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Learning page </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home"><h4>Home</h4></a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><h4>what we do</h4><span class="caret"></span></a>
        
      </li>
      <li><a href="${pageContext.request.contextPath }/gallery"><h4>products</h4></a></li>
      <li><a href="Breakroom"><h4>Breakroom</h4></a></li>
      <li><a href="#"><h4>about us</h4></a></li>
      <li><a href="contectus2"><h4>contactus</h4></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">

      

      <li><a href="customer/register"><span class="glyphicon glyphicon-user"></span><h4>SignUp</h4></a></li>
      <li><a href="customer/login"><span class="glyphicon glyphicon-log-in"></span><h4>Login</h4></a></li>
    </ul>
  </div>
</nav>
</c:if>

<c:if test = "${pageContext.request.userPrincipal !=null }">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Learning page </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home"><h4>Home</h4></a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><h4>what we do</h4><span class="caret"></span></a>
       
       
      </li>
      <li><a href="#"><h4>products</h4></a></li>
      <li><a href="#"><h4>Breakroom</h4></a></li>
      <li><a href="#"><h4>about us</h4></a></li>
      <li><a href="contectus2"><h4>contactus</h4></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">

      

      <li><a href="#"><span class="glyphicon glyphicon-user"></span><h3>hello ${pageContext.request.userPrincipal.name }</h3></a></li>
      <li><a href="${pageContext.request.contextPath }/logout"><span class="glyphicon glyphicon-log-in"></span><h3>Logout</h3></a></li>
    </ul>
  </div>
</nav>
</c:if>
