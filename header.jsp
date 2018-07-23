<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
<style type="text/css">
    body{text-decoration:none;}
    #top{background-color:whitesmoke; color:black; text-decoration:none;}

    #aboutcn{color:black;}
    #aboutcn:hover{color:orange;text-decoration:none;}
    #aboutt{color:white; background-color:dimgray; border-radius:50px; padding:5px 9px}
    #aboutt:hover{text-decoration:none;}	
</style>
</head>
<body>
<div class="container-fluid">
<!--start top content-->
<div class="row content" id="top"><br />
<div class="col-md-6 col-sm-12">
    <ul class="list-unstyled list-inline">
        <li><a href="index.jsp" id="aboutcn">&nbsp;&nbsp;<span class="glyphicon glyphicon-home"></span></a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutcn"><span class="glyphicon glyphicon-earphone"></span>&nbsp;1-800-419-3436&nbsp;/&nbsp;1-800-102-3436</a></li> &nbsp;&nbsp;
        <li><a href="#" id="aboutcn"><span class="glyphicon glyphicon-headphones"></span>&nbsp;Support Desk</a></li>  
    </ul>
</div>
<div class="col-md-6 col-sm-12">
    <ul class="list-unstyled list-inline text-right">
        <li><a href="#" id="aboutcn">A-</a></li>
        <li><a href="#" id="aboutcn">A</a></li>
        <li><a href="#" id="aboutcn">A+</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutt">T</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="btn-group">
            <button type="button" class="btn btn-link btn-sm dropdown-toggle" id="aboutcn" data-toggle="dropdown">English&nbsp;<span class="caret"></span></button>
            <ul class="dropdown-menu" role="menu">
                <li><a href="#" id="aboutcn">English</a></li>
                <li><a href="#" id="aboutcn">??????</a></li>
            </ul>
        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </ul>
</div>
</div>
<!--end top content-->
<!--start navbar & carousel-->
<div class="row content" id="top">
<!--------------Bootstrap 3 not sticky in top----------------------------->
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="index.jsp"><img src="gem-logo.svg" style="max-width:160px; margin-top:-10px;" alt="Gem"></a>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span> 
        </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      <li class="nav-item"><a class="nav-link" href="#" id="aboutcn">New on GeM</a></li>
      <li class="nav-item"><a class="nav-link" href="#" id="aboutcn">Ongoing Bids</a></li>
      <li class="nav-item"><a class="nav-link" href="#" id="aboutcn">Analytic</a></li>
	  <li class="nav-item"><a class="nav-link" href="login.jsp" id="aboutcn">Login</a></li>
	  <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="aboutcn">Sign Up&nbsp;<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="buyersignup1.jsp" id="aboutcn">Buyers</a></li>
          <li><a href="sellersignup1.jsp" id="aboutcn">Sellers</a></li>
        </ul>
      </li>
      </ul>
    </div>
  </div>
</nav>
</div>
<!--end navbar & carousel-->
</div>
</body>
</html>