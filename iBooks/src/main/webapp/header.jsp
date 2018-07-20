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
      <li class="active"><a href="home"><h3>Home</h3></a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><h3>what we do</h3><span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">educater</a></li>
          <li><a href="#">bland learning</a></li>
          <li><a href="#">store</a></li>
          <li><a href="breakroom">breakroom</a></li>
          <li><a href="#">online study</a></li>
          <li><a href="#">spacial education</a></li>
        </ul>
      </li>
      <li><a href="${pageContext.request.contextPath }/gallery"><h3>products</h3></a></li>
      <li><a href="#"><h3>store</h3></a></li>
      <li><a href="#"><h3>about us</h3></a></li>
      <li><a href="contectus2"><h3>contactus</h3></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">

      

      <li><a href="form"><span class="glyphicon glyphicon-user"></span><h3>SignUp</h3></a></li>
      <li><a href="login1"><span class="glyphicon glyphicon-log-in"></span><h3>Login</h3></a></li>
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
      <li class="active"><a href="home"><h3>Home</h3></a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><h3>what we do</h3><span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">educater</a></li>
          <li><a href="#">bland learning</a></li>
          <li><a href="#">store</a></li>
          <li><a href="#">breakroom</a></li>
          <li><a href="#">online study</a></li>
          <li><a href="#">spacial education</a></li>
        </ul>
      </li>
      <li><a href="#"><h3>products</h3></a></li>
      <li><a href="#"><h3>store</h3></a></li>
      <li><a href="#"><h3>about us</h3></a></li>
      <li><a href="contectus2"><h3>contactus</h3></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">

      

      <li><a href="#"><span class="glyphicon glyphicon-user"></span><h3>hello ${pageContext.request.userPrincipal.name }</h3></a></li>
      <li><a href="${pageContext.request.contextPath }/logout"><span class="glyphicon glyphicon-log-in"></span><h3>Logout</h3></a></li>
    </ul>
  </div>
</nav>
</c:if>
