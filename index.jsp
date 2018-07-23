<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Government e-Marketplace | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
<style type="text/css">
body{text-decoration:none;}
#top{background-color:whitesmoke; color:black; text-decoration:none;}

#about{background-color:whitesmoke;}

#counting{border:1px solid orange; border-radius:10px; padding:5px 10px}

#hoverbuttonp{background-color:navy; color:white; font-family: "proxima nova"; font-weight:100; font-size:15px; border-radius:8px; -webkit-transition-duration:100ms; -moz-transition-duration:100ms; transition-duration:100ms;}
#hoverbuttonp:hover{text-decoration:none; background-color:orange; color:white;}
#hoverbuttons{background-color:orange; color:white; font-family: "proxima nova"; font-weight:100; font-size:15px; border-radius:8px; -webkit-transition-duration:100ms; -moz-transition-duration:100ms; transition-duration:100ms;}
#hoverbuttons:hover{text-decoration:none; background-color:navy; color:white;}

#carouselcircle{background-color:orange;}
#newnoti{height:470px;}
</style>
</head>

<body data-spy="scroll">
    <jsp:include page="header.jsp"/> 
<!-----start 1st body part---------------->
<div class="container-fluid">
<!--start carousel & submit button-->
<div class="row content" id="top">
<marquee scrolldelay="5">RFP for Selection of Agency for Catalogue creation and Management    |     GeM sets up special Walk-In HelpDesk for Services Buyers. Please read notification for further details.</marquee>
<!--start carousel-->
<div id="imagecarousel" class="carousel slide" data-wrap="true" data-interval="2000" data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#imagecarousel" data-slide-to="0" id="carouselcircle" class="active"></li>
		<li data-target="#imagecarousel" data-slide-to="1" id="carouselcircle"></li>
		<li data-target="#imagecarousel" data-slide-to="2" id="carouselcircle"></li>
		<li data-target="#imagecarousel" data-slide-to="3" id="carouselcircle"></li>
		<!--<li data-target="#imagecarousel" data-slide-to="4" id="carouselcircle"></li>-->
	</ol>
	<div class="carousel-inner"> 
		<div class="item active"><img src="img/gem-film-1.jpg" class="img-responsive" alt="gem-film-1" /></div>
		<div class="item"><img src="img/categories-v50.jpg" class="img-responsive" alt="categories-v50" /></div>
		<div class="item"><img src="img/swachh-bharat.jpg" class="img-responsive" alt="swachh-bharat" /></div>
		<div class="item"><img src="img/bid-creation1.jpg" class="img-responsive" alt="bid-creation1" /></div>
		<!--<div class="item"><img src="img/yoga-min.jpg" class="img-responsive" alt="yoga-min" /></div>-->
	</div>
</div>
<!--end carousel-->
<br />
<!--start submit button-->
<div class="col-md-4"></div>
<div class="col-md-4 col-sm-12">
	<form action="#">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Looking for something on GeM?" name="search">
        <div class="input-group-btn">
          <button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i></button>
        </div>
      </div>
    </form><br />
</div>
<div class="col-md-4"></div>
<!--end submit button-->
</div>
<!--end carousel & submit button-->

<!--start body part-->
<div class="row content">
<!-----start 1st section------------------------>
<div class="col-md-2"></div>
<div class="col-md-8">
<br /><br />
<a href="#"><img src="img/pm-modi.png" class="img-responsive" alt="pm-modi" /></a>
<img src="img/minister.png" class="img-responsive" alt="minister" />
<br /><br />
</div>
<div class="col-md-2"></div>
<!-----end 1st section------------------------>
<div class="col-md-12 text-center" id="top">
<div class="col-md-1"></div>
<div class="col-md-10 col-xs-12">
<h3>What's new on GeM 3.0?</h3><br />
<div id="imagecarousel2" class="carousel slide" data-wrap="true" data-interval="5000" data-ride="carousel">						
<div class="carousel-inner">
	<div class="item active">		
		<div id="platform-item" class="col-sm-3">
		<img src="img/whats-new-on-gem/buyer_reg.jpg" class="img-rounded" alt="Buyer Registration" />
		<div class="platform-item-button"><a href="#" id="aboutcn">Buyer Registration</a></div>
		</div>		
		<div id="platform-item" class="col-sm-3">
		<img src="img/whats-new-on-gem/seller-registration.jpg" class="img-rounded" alt="Seller & Service Provider Registration" />
		<div class="platform-item-button"><a href="#" id="aboutcn">Seller & Service Provider Registration</a></div>
		</div>	
		<div id="platform-item" class="col-sm-3">
		<img src="img/whats-new-on-gem/Buyer_rating.jpg" class="img-rounded" alt="Buyer Rating" />
		<div class="platform-item-button"><a href="#" id="aboutcn">Buyer Rating</a></div>
		</div>
		<div id="platform-item" class="col-sm-3">
		<img src="img/whats-new-on-gem/vendor-rating1.jpg" class="img-rounded" alt="Vendor Rating" />
		<div class="platform-item-button"><a href="#" id="aboutcn">Vendor Rating</a></div>
		</div>		
	</div>
	<div class="item">		
		<div id="platform-item" class="col-sm-3">
		<img src="img/whats-new-on-gem/vendor-rating1.jpg" class="img-rounded" alt="Vendor Rating" />
		<div class="platform-item-button"><a href="#" id="aboutcn">Vendor Rating</a></div>
		</div>		
		<div id="platform-item" class="col-sm-3">
		<img src="img/whats-new-on-gem/catalogue_mgmt.jpg" class="img-rounded" alt="Catalogue Management" />
		<div class="platform-item-button"><a href="#" id="aboutcn">Catalogue Management</a></div><br />
		</div>		
		<div id="platform-item" class="col-sm-3">
		<img src="img/whats-new-on-gem/analytics1.jpg" class="img-rounded" alt="BI / Analytic" />
		<div class="platform-item-button"><a href="#" id="aboutcn">BI / Analytic</a></div>
		</div>		
		<div id="platform-item" class="col-sm-3">
		<img src="img/whats-new-on-gem/product-service-listing.jpg" class="img-rounded" alt="Product / Service Listing" />
		<div class="platform-item-button"><a href="#" id="aboutcn">Product / Service Listing</a></div>
		</div>		
	</div>
</div><br /><br /><br /><br />
	<ol class="carousel-indicators">
		<li data-target="#imagecarousel2" data-slide-to="0" id="carouselcircle" class="active"></li>
		<li data-target="#imagecarousel2" data-slide-to="1" id="carouselcircle"></li>
	</ol>
</div>
</div>
<div class="col-md-1"></div>
</div>
<!-----end 2nd section------------------------>
<div class="col-md-12 text-center">
	<h3>Key Highlights</h3><br />
	<div class="col-md-4">
	<div id="counting">
		<h3><strong>24,041</strong><br />Buyer Organisations</h3>
	</div>
	</div>
	<div class="col-md-4">
	<div id="counting">
		<h3><strong>118,758</strong><br />Sellers & Service Providers</h3>
	</div>
	</div>
	<div class="col-md-4">
	<div id="counting">
		<h3><strong>299,989</strong><br />Products</h3>
	</div><br /><br />
	</div>
</div>
<!-----end 3rd section------------------------>
<div class="col-md-12 text-center" id="top">
<div class="col-md-12 col-xs-12">
<div id="imagecarousel3" class="carousel slide" data-wrap="true" data-interval="5000" data-ride="carousel">						
<div class="carousel-inner">
	<div class="item active">
		<h3>New on GeM</h3><br />
		<div id="platform-item" class="col-sm-1"></div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/new-on-gem/solar-lamp1.jpg" height="190" width="190" class="img-rounded" alt="Solar Lamps" />
		<div class="platform-item-button">Solar Lamps</div>
		</div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/new-on-gem/credenzas1.jpg" height="190" width="190" class="img-rounded" alt="Credenzas" />
		<div class="platform-item-button">Credenzas</div>
		</div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/new-on-gem/tc-pacing1.jpg" height="190" width="190" class="img-rounded" alt="Defibrillator With Cpr Monitoring and Tc Pacing" />
		<div class="platform-item-button">Defibrillator With Cpr Monitoring and Tc Pacing</div>
		</div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/new-on-gem/fire-extinguisher1.jpg" height="190" width="190" class="img-rounded" alt="Manual Aerosol Fire-Extinguisher" />
		<div class="platform-item-button">Manual Aerosol <br />Fire-Extinguisher</div>
		</div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/new-on-gem/fixed-aeroso1.jpg" height="190" width="190" class="img-rounded" alt="Fixed Aerosol Fire-Extinguishing System" />
		<div class="platform-item-button">Fixed Aerosol Fire-Extinguishing System</div>
		</div>
		<div id="platform-item" class="col-sm-1"></div>
	</div>
	<div class="item">
	<h3>Top 5 Product Categories</h3><br />
		<div id="platform-item" class="col-sm-1"></div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/product/automobile.jpg" height="190" width="190" class="img-rounded" alt="Automobile" />
		<div class="platform-item-button">Automobile</div><br />
		</div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/product/computers.jpg" height="190" width="190" class="img-rounded" alt="Computers" />
		<div class="platform-item-button">Computers</div>
		</div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/product/bath-body.jpg" height="190" width="190" class="img-rounded" alt="Bath and Body" />
		<div class="platform-item-button">Bath and Body</div>
		</div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/product/office-furniture1.jpg" height="190" width="190" class="img-rounded" alt="Office Furniture" />
		<div class="platform-item-button">Office Furniture</div>
		</div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/product/printer.jpg" height="190" width="190" class="img-rounded" alt="Duplicating Machines" />
		<div class="platform-item-button">Duplicating Machines</div>
		</div>
		<div id="platform-item" class="col-sm-1"></div>
	</div>
	<div class="item">
	<h3>Top 5 Service Categories</h3><br />
		<div id="platform-item" class="col-sm-1"></div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/service/hr-services1.jpg" height="190" width="190" class="img-rounded" alt="Human Resource" />
		<div class="platform-item-button">Human Resource</div>
		</div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/service/transport-services1.jpg" height="190" width="190" class="img-rounded" alt="Transport" />
		<div class="platform-item-button">Transport</div>
		</div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/service/security-services1.jpg" height="190" width="190" class="img-rounded" alt="Security" />
		<div class="platform-item-button">Security</div>
		</div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/service/scanning1.jpg" height="190" width="190" class="img-rounded" alt="Scanning and Digitisation" />
		<div class="platform-item-button">Scanning and Digitisation</div><br />
		</div>
		<div id="platform-item" class="col-sm-2">
		<img src="img/service/cleaning-&-sanatization.jpg" height="190" width="190" class="img-rounded" alt="Cleaning and Sanitation Maintenance" />
		<div class="platform-item-button">Cleaning and Sanitation Maintenance</div>
		</div>
		<div id="platform-item" class="col-sm-1"></div>
	</div>
</div>
<br /><br /><br /><br />
	<ol class="carousel-indicators">
		<li data-target="#imagecarousel3" data-slide-to="0" id="carouselcircle" class="active"></li>
		<li data-target="#imagecarousel3" data-slide-to="1" id="carouselcircle"></li>
		<li data-target="#imagecarousel3" data-slide-to="2" id="carouselcircle"></li>
	</ol>
</div>
<ul class="list-unstyled list-inline">
    <li><a href="#" id="hoverbuttonp" style="padding:8px 15px;">View All Products</a></li>&nbsp;&nbsp;
    <li><a href="#" id="hoverbuttons" style="padding:8px 15px;">View All Services</a></li>&nbsp;&nbsp;
</ul>
<br />
</div>
</div>
<!-----end 4th section------------------------>
<div class="col-md-12 col-xs-12 text-center">
    <h3><strong>Why buy on GeM?</strong></h3>

    <img src="img/why-buy-on-gem.jpg" class="img-responsive" alt="why buy on gem" />

<br /><br />
</div>
<!-----end 5th section------------------------>
</div>
</div>
<!--end 1nd body part-->
<!--<div class="embed-responsive embed-responsive-16by9">
	<iframe src="https://www.youtube.com/embed/d5Eg08W0_I4?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
</div>-->
<!-----end 6th section------------------------>
<!-----start 2st body part---------------->
<div class="container-fluid">
<div class="row content" id="top">
<div class="col-md-12 col-xs-12" id="top">
<br /><br />
<!---------1st part------------>
<div class="col-md-4 col-xs-12">
<h3>Notifications</h3><br />
<div class="panel panel-default" id="newnoti">
  <div class="panel-body">
  <h6 style="color:orange;">23/06/2018</h6>
  <h5><a href="#" style="text-decoration:none;"><strong>Bid Extension...</a></strong><h5>
  <h6>On account of some technical reasons on GeM portal, all Bids ending...<h6>
  <p><a href="#" style="text-decoration:none;">Read More</a><p>
  <hr />
  <h6 style="color:orange;">23/06/2018</h6>
  <h5><a href="#" style="text-decoration:none;"><strong>Intermittent Issue in Bids...</a></strong><h5>
  <h6>We are facing intermittent issue in Bids. We expect it to be resolv...<h6>
  <p><a href="#" style="text-decoration:none;">Read More</a><p>
  <hr />
  <h6 style="color:orange;">21/06/2018</h6>
  <h5><a href="#" style="text-decoration:none;"><strong>Technical Issue in Invoice Generation...</strong></a><h5>
  <h6>We have identified some technical issue because of which few S...<h6>
  <p><a href="#" style="text-decoration:none;">Read More</a><p>
  <hr />
  <p style="text-align:center"><a href="#" style="text-decoration:none;"><strong>View All</strong></a><p>
  </div>
</div>
</div>
<!--------2nd part-------------->
<div class="col-md-4 col-xs-12">
<h3>Newsroom</h3><br />
<div class="panel panel-default" id="newnoti">
  <div class="panel-body">
  <h6 style="color:orange;">30/05/2018</h6>
  <h5><a href="#" style="text-decoration:none;"><strong>Universities to make purchases through govt’s e-marketplace</strong></a><h5>
  <h6><strong>Publication</strong> : Times of India<h6>
  <p><a href="#" style="text-decoration:none;">Read More<p>
  <hr />
  <h6 style="color:orange;">25/05/2018</h6>
  <h5><a href="#" style="text-decoration:none;"><strong>To cut corruption, Kerala logs on to e-Market</strong></a><h5>
  <h6><strong>Publication</strong> : Indian Express<h6>
  <p><a href="#" style="text-decoration:none;">Read More<p>
  <hr />
  <h6 style="color:orange;">23/04/2018</h6>
  <h5><a href="#" style="text-decoration:none;"><strong>States get 'wallet' for timely GeM payments</strong></a><h5>
  <h6><strong>Publication</strong> : Economics Times<h6>
  <p><a href="#" style="text-decoration:none;">Read More</a><p>
  <br /><hr />
  <p style="text-align:center"><a href="#" style="text-decoration:none;"><strong>View All</strong></a><p>
  </div>
</div>
</div>
<!------3rd part-------->
<div class="col-md-4 col-xs-12">
<h3>GeM Connect</h3><br />
<!--------Social Media---------->
<ul class="nav nav-tabs">
	<li class="active"><a data-toggle="tab" href="#home">Twitter</a></li>
	<li><a data-toggle="tab" href="#menu1">Facebook</a></li>
</ul>
<div class="tab-content">
	<div id="home" class="tab-pane fade in active">
	<br /><p><a href="https://twitter.com/GeM_India?ref_src=twsrc%5Etfw" id="aboutcn" target="_blank">GeM_India</a></p><hr />
	</div>
	<div id="menu1" class="tab-pane fade">
		<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FgovGeM%2F&tabs=timeline&width=380&height=425&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="380" height="425" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
	</div>
</div>
<!------------------------>
</div>
</div>
<!-----end 7th section------------------------>
</div>
</div>
<!--end 2nd body part-->
    <jsp:include page="footer.jsp"/>
</body>
</html>