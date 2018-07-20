
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>books store</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
  
  .fade-carousel {
    position: relative;
    height: 100vh;
}
.fade-carousel .carousel-inner .item {
    height: 100vh;
}
.fade-carousel .carousel-indicators > li {
    margin: 0 2px;
    background-color: #f39c12;
    border-color: #f39c12;
    opacity: .7;
}
.fade-carousel .carousel-indicators > li.active {
  width: 10px;
  height: 10px;
  opacity: 1;
}

/********************************/
/*          Hero Headers        */
/********************************/
.hero {
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: 3;
    color: #fff;
    text-align: center;
    text-transform: uppercase;
    text-shadow: 1px 1px 0 rgba(0,0,0,.75);
      -webkit-transform: translate3d(-50%,-50%,0);
         -moz-transform: translate3d(-50%,-50%,0);
          -ms-transform: translate3d(-50%,-50%,0);
           -o-transform: translate3d(-50%,-50%,0);
              transform: translate3d(-50%,-50%,0);
}
.hero h1 {
    font-size: 6em;    
    font-weight: bold;
    margin: 0;
    padding: 0;
}

.fade-carousel .carousel-inner .item .hero {
    opacity: 0;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s; 
}
.fade-carousel .carousel-inner .item.active .hero {
    opacity: 1;
    -webkit-transition: 2s all ease-in-out .1s;
       -moz-transition: 2s all ease-in-out .1s; 
        -ms-transition: 2s all ease-in-out .1s; 
         -o-transition: 2s all ease-in-out .1s; 
            transition: 2s all ease-in-out .1s;    
}


}

/********************************/
/*          Custom Buttons      */
/********************************/
.btn.btn-lg {padding: 5px 20px;}
.btn.btn-hero,
.btn.btn-hero:hover,
.btn.btn-hero:focus {
    color: #f5f5f5;
    background-color: #1abc9c;
    border-color: #1abc9c;
    outline: none;
    margin: 20px auto;
}

/********************************/
/*       Slides backgrounds     */
/********************************/
.fade-carousel .slides .slide-1, 
.fade-carousel .slides .slide-2,
.fade-carousel .slides .slide-3 {
  height: 80vh;
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
}
.fade-carousel .slides .slide-1 {
  background-image: url(https://ununsplash.imgix.net/photo-1416339134316-0e91dc9ded92?q=75&fm=jpg&s=883a422e10fc4149893984019f63c818); 
}
.fade-carousel .slides .slide-2 {
  background-image: url(https://ununsplash.imgix.net/photo-1416339684178-3a239570f315?q=75&fm=jpg&s=c39d9a3bf66d6566b9608a9f1f3765af);
}
.fade-carousel .slides .slide-3 {
  background-image: url(https://ununsplash.imgix.net/photo-1416339276121-ba1dfa199912?q=75&fm=jpg&s=9bf9f2ef5be5cb5eee5255e7765cb327);
}

/********************************/
/*          Media Queries       */
/********************************/
@media screen and (min-width: 980px){
    .hero { width: 980px; }    
}
@media screen and (max-width: 640px){
    .hero h1 { font-size: 4em; }    
}
</style>
</head>
<body>
<jsp:include page="header.jsp"/>
  
<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
  <!-- Overlay -->
  <div class="overlay"></div>

  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
    <li data-target="#bs-carousel" data-slide-to="1"></li>
    <li data-target="#bs-carousel" data-slide-to="2"></li>
  </ol>
  
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item slides active">
      <div class="slide-1"></div>
      <div class="hero">
        <hgroup>
            <h1>We are creative</h1>        
            <h3>Get start your next awesome project</h3>
        </hgroup>
        <button class="btn btn-hero btn-lg" role="button">See all features</button>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-2"></div>
      <div class="hero">        
        <hgroup>
            <h1>We are smart</h1>        
            <h3>Get start your next awesome project</h3>
        </hgroup>       
        <button class="btn btn-hero btn-lg" role="button">See all features</button>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-3"></div>
      <div class="hero">        
        <hgroup>
            <h1>We are amazing</h1>        
            <h3>Get start your next awesome project</h3>
        </hgroup>
        <button class="btn btn-hero btn-lg" role="button">See all features</button>
      </div>
    </div>
  </div> 
</div>

<div class="divide50"></div>

 <div class="container">

        <div class="slide-caption">

 
	<h3>Learning A-Z is an education technology company dedicated to expanding literacy through thoughtfully designed resources.</h3>
	<div class=" center"><p>
	<a href="/site/what-we-do/" class="nowrap"><h4>See how we do it</h4> <i class="fa fa-caret-right"></i></a></p>
        </div>
       
 <!-- Grey Banner -->
    <div class="home _collout-banner">
	
        <div class="container-fluid" style="background-color:#F44336;color:#fff;height:400px;width:1400px;">
            <div class="banner-row">
	<div class="banner-row_content">
		<img src="resources/images/blueCalloutImage.png" alt="Learning A-Z product trial">
		<div class="banner-row_description">
			<h3>Free Product Trials</h3>
			<p>
				Get complete access to the products of your choice free for 14 days.
			</p>
		</div>
		</div>
	<div class="banner-row_button;">
		<a href="https://accounts.learninga-z.com/accountsweb/marketing/allInOne.do?campaign=LAZHOMEtile" class="rect-btn btn-red">
		Start Free Trials
		</a>
	</div>
	</div>
	<div class="banner-row">
	<div class="banner-row_content">
		<img src="images/blueCalloutImage.png" alt="learning A-Z Free Samples">
		<div class="banner-row_description">
			<h3>Free Product Samples</h3>
			<p>
				Get instant access to free product samples to try out with your students.
			</p>
		</div>
		</div>
	<div class="banner-row_button">
		<a href="https://accounts.learninga-z.com/accountsweb/marketing/allInOne.do?campaign=freesamples" class="rect-btn btn-blue">
		Download Samples
		</a>
	</div>
	</div>
	<div class="banner-row">
	<div class="banner-row_content">
		<img src="images/redCalloutImage.png" alt="Order our Products">
		<div class="banner-row_description">
			<h3>Order Our Products</h3>
			<p>
Visit the Learning A-Z web store to purchase our products and collections.
			</p>
		</div>
		</div>
	<div class="banner-row_button">
		<a href="/site/store/" class="rect-btn btn-gray">
		Shop Now!
		</a>
	</div>
	</div>
        </div>
    </div>

<div class="new-noteworthy container">

    <div class="title">
        <h3 class="animate textUp">New & Noteworthy</h3>

        <a href="/site/new-and-noteworthy.aspx">View All &nbsp;<i class="fa fa-caret-right"></i></a>
    </div>

    <div class="clear"></div>
    <div class="row">
        
        <div class="post-item col-md-6 berry clickable">
            
            <div class="image-container">
                <img src="NN_RPTrialAdventure_tile.jpg?w=600&h=350&scale=both&mode=crop" class="post-item_image desaturate" alt="Raz-Plus combines Reading A-Z and Raz-Kids, providing teachers with thousands of leveled books and teaching resources." />
                <div class="opaque-colored-overlay berry"></div>
                <div class="logo-overlay">
                    <img src="Raz-Pluswhite.png?w=135&scale=both" alt="Raz-Plus combines Reading A-Z and Raz-Kids, providing teachers with thousands of leveled books and teaching resources." />
                </div>
            </div>
            
            
            <div class="content">
                
                <h2>Raz-Plus combines Reading A-Z and Raz-Kids, providing teachers with thousands of leveled books and teaching resources.</h2>
                <a href="/site/products/raz-plus/overview" target="_self" class="fa fa-chevron-right"><span class="sr-only">Raz-Plus combines Reading A-Z and Raz-Kids, providing teachers with thousands of leveled books and teaching resources.</span></a>
            </div>

        </div>
        
        <div class="post-item col-md-6  clickable">
            
            <div class="image-container">
                <img src="nn_breakroom.jpg?w=600&h=350&scale=both&mode=crop" alt="Back-to-School 2018 Updates" class="post-item_image" />
            </div>
            
            
            <div class="content">
                
                <h2>Explore the exciting new product features and instructional resources launching for Back-to-School 2018!</h2>
                <a href="/site/lp2/back-to-school-2018" target="_self" class="fa fa-chevron-right"><span class="sr-only">Explore the exciting new product features and instructional resources launching for Back-to-School 2018!</span></a>
            </div>

        </div>
        
        <div class="post-item col-md-6  clickable">
            
            <div class="image-container">
                <img src="nn_bts-updates-2018.jpg?w=600&h=350&scale=both&mode=crop" alt="Breakroom" class="post-item_image" />
            </div>
            
            
            <div class="content">
                
                <h2>You deserve a break. Enjoy our Breakroom blog and find helpful tips and inspiration for using our products in your classroom.</h2>
                <a href="/site/breakroom/" target="_self" class="fa fa-chevron-right"><span class="sr-only">You deserve a break. Enjoy our Breakroom blog and find helpful tips and inspiration for using our products in your classroom.</span></a>
            </div>

        </div>
        
        <div class="post-item col-md-6  clickable">
            
            <div class="image-container">
                <img src="/resonn_raz-plus-launch.jpg?w=600&h=350&scale=both&mode=crop" alt="Raz-Plus Trial Adventure" class="post-item_image" />
            </div>
            
            
            <div class="content">
                
                <h2>Let your classroom adventure begin … introducing our new Raz-Plus Trial Adventure.</h2>
                <a href="/site/lp1/info-rp-trial-adventure" target="_self" class="fa fa-chevron-right"><span class="sr-only">Let your classroom adventure begin … introducing our new Raz-Plus Trial Adventure.</span></a>
            </div>

        </div>
        
    </div>


</body>
</html>