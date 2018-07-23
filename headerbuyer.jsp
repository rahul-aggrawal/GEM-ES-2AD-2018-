<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<div class="container-fluid">
<!--start top content-->
    <div class="row content" id="top"><br />
    <div class="col-md-6 col-sm-6">
        <ul class="list-unstyled list-inline">
            <li><a href="index.jsp" id="aboutcn">&nbsp;&nbsp;<span class="glyphicon glyphicon-home"></span></a></li>&nbsp;&nbsp;
            <li><a href="#" id="aboutcn"><span class="glyphicon glyphicon-earphone"></span>&nbsp;1-800-419-3436&nbsp;/&nbsp;1-800-102-3436</a></li> &nbsp;&nbsp;
            <li><a href="#" id="aboutcn"><span class="glyphicon glyphicon-headphones"></span>&nbsp;Support Desk</a></li>  
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
            <a class="navbar-brand" href="index.jsp"><img src="https://static.gem.gov.in/resources//images/logo1.jpg" style="max-width:160px; margin-top:-12px;" alt="Gem"></a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span> 
            </button>
	</div>
        <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
            <li class="nav-item"><a class="nav-link" href="buyerhomepage.jsp?dashboard" id="aboutcn">Dashboard</a></li>
            <li class="nav-item"><a class="nav-link" href="yourordersbuyer.jsp?orders" id="aboutcn">Your Orders</a></li>
            <li class="nav-item"><a class="nav-link" href="viewproduct.jsp?products" id="aboutcn">Products</a></li>
            <li class="nav-item"><a class="nav-link" href="cart.jsp?cart" id="aboutcn">Cart</a></li>
            <li class="nav-item"><a class="nav-link" href="bidviewbuyer.jsp" id="aboutcn">Your Bids</a></li>
            <li class="nav-item"><a class="nav-link" href="logout.jsp?logout" id="aboutcn">Logout</a></li>
        </ul>
        </div>
  </div>
    </nav>
    </div>
</div>