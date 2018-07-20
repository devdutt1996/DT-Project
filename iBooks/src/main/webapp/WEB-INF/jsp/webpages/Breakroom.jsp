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
<title>Breakroom</title>
<style>
.container {
  margin-top: 20px;
}


/* Carousel Styles */

.carousel-indicators .active {
  background-color: #2980b9;
}

.carousel-inner img {
  width: 300%;
  max-height: 500px
}

.carousel-control {
  width: 0;
}

.carousel-control.left,
.carousel-control.right {
  opacity: 1;
  filter: alpha(opacity=100);
  background-image: none;
  background-repeat: no-repeat;
  text-shadow: none;
}

.carousel-control.left span {
  padding: 55px;
}

.carousel-control.right span {
  padding: 55px;
}

.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right,
.carousel-control .icon-prev,
.carousel-control .icon-next {
  position: absolute;
  top: 45%;
  z-index: 5;
  display: inline-block;
}

.carousel-control .glyphicon-chevron-left,
.carousel-control .icon-prev {
  left: 0;
}

.carousel-control .glyphicon-chevron-right,
.carousel-control .icon-next {
  right: 0;
}

.carousel-control.left span,
.carousel-control.right span {
  background-color: #000;
}

.carousel-control.left span:hover,
.carousel-control.right span:hover {
  opacity: .7;
  filter: alpha(opacity=70);
}


/* Carousel Header Styles */

.header-text {
  position: absolute;
  top: 20%;
  left: 1.8%;
  right: auto;
  width: 96.66666666666666%;
  color: #fff;
}

.header-text h2 {
  font-size: 40px;
}

.header-text h2 span {
  background-color: #2980b9;
  padding: 10px;
}

.header-text h3 span {
  background-color: #000;
  padding: 15px;
}

.btn-min-block {
  min-width: 170px;
  line-height: 26px;
}

.btn-theme {
  color: #fff;
  background-color: transparent;
  border: 2px solid #fff;
  margin-right: 15px;
}

.btn-theme:hover {
  color: #000;
  background-color: #fff;
  border-color: #fff;
}





</style>

</head>

<body>
<jsp:include page="header.jsp"/>

<div class="container">
	<div class="row">
		<!-- Carousel -->
    	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
			  	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
			    <div class="item active">
			    	<img src="/resources/images/images(1).jpg" alt="First slide">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                            	<span>Welcome to <strong>Book liberary</strong></span>
                            </h2>
                            <br>
                            <h3>
                            	<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span>
                            </h3>
                            <br>
                            </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
			    	<img src="/resources/images/images(2).jpg" alt="Second slide">
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                                <span>Welcome to Liberary</span>
                            </h2>
                            <br>
                            <h3>
                            	<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span>
                            </h3>
                            <br>
                            </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
			    	<img src="/resources/images/images(3).jpg" alt="Third slide">
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                                <span>Welcome to Liberay</span>
                            </h2>
                            <br>
                            <h3>
                            	<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span>
                            </h3>
                            <br>
                            </div>
                    </div><!-- /header-text -->
			    </div>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    	<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    	<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div><!-- /carousel -->
	</div>
</div>
</body>
</html>