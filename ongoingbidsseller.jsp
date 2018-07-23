<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Government e-Marketplace | GeM </title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
<style type="text/css">
body{text-decoration:none;}

.card {box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);transition: 0.3s;width: 100%;}
.card:hover {box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);}
</style>
</head>

<body data-spy="scroll">
    <jsp:include page="headerseller.jsp"/>
<!-----start 1st body part---------------->
<div class="container-fluid">
<!--start carousel & submit button-->
<div class="row content">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <div class="col-md-8" align="left">
	<ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#Bids">Bids</a></li>
            <li><a data-toggle="tab" href="#ServiceBids">Service Bids</a></li>
            <li><a data-toggle="tab" href="#BunchBids">Bunch Bids</a></li>
            <li><a data-toggle="tab" href="#ServiceBunchBids">Service Bunch Bids</a></li>
            <li><a data-toggle="tab" href="#RA">RA</a></li>
	</ul>
        </div>
        <div class="col-md-4">
<form class="navbar-form navbar-right" action="">
<div class="input-group">
    <div class="input-group-btn">
        <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">FILTER BY <span class="caret"></span></button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="#">Bid Number</a></li>
            <li><a href="#">Item</a></li>
        </ul>
    </div>
    <input type="text" class="form-control" placeholder="Search term..." />
    <div class="input-group-btn">
        <button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i></button>
    </div>
</div>
</form>
        </div>
        <div class="col-md-12">
        <div class="tab-content">
            
            <div id="Bids" class="tab-pane fade in active"  style="border-top:5px solid lightskyblue">  
            <div class="card">
		<p align="left" style="background-color:gainsboro;"><button type="button" class="btn btn-info">BID NO: GEM/2018/B/31404</button></p>
		<div class="container">
                    <div class="col-md-3">
                        <p><strong>Item(S): </strong>Desktop</p>
                        <p><strong>Quantity Required: </strong>15</p>
                    </div>
                    <div class="col-md-4">
                        <p><strong>Department Name And Address: </strong></p>
                        <p>Ministry Of Communications O218_IT-Project-Circle-Office-BSNL Department Of Telecommunications (DOT)</p>
                    </div>
                    <div class="col-md-5">
                        <p><strong>Start Date: </strong>20-06-2018 12:14 PM</p>
                        <p><strong>End Date: </strong>28-06-2018 03:00 PM</p>
                    </div>
                    <a href="sellerbid.jsp"><p align="center"><button type="button" class="btn btn-info">&nbsp;&nbsp;Place Bid&nbsp;&nbsp;</button></p></a>		
		</div>
            </div>
            </div><br />
            
            <div id="ServiceBids" class="tab-pane fade">
            <div class="card">
		
            </div>
            </div><br />
            
            <div id="BunchBids" class="tab-pane fade">
            <div class="card">
		
            </div>
            </div><br />
	
            <div id="ServiceBunchBids" class="tab-pane fade">
            <div class="card">
		
            </div>
            </div><br />
	
            <div id="RA" class="tab-pane fade">
            <div class="card">
		
            </div>
            </div><br />
        </div>
        </div>

    </div>
    <div class="col-md-1"></div>
</div>
</div>
</body>
</html>