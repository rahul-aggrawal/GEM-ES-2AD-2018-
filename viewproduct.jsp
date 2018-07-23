<html>
<head>
    <title>Products | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
</head>
<body>
<%
        if(session.getAttribute("userid")==null)
        {
            response.sendRedirect("login.jsp");
        } 
%>
    <jsp:useBean   id="connobj"  class="dboperation.dbconnect"/>
    <jsp:include page="headerbuyer.jsp"/>
<br><br>
<div id="product-category" class="container">
<div class="row">
    <div class="col-md-3"><br /><br />
    <ul class="nav nav-pills nav-stacked">
        <li class="active"><a data-toggle="tab" href="#b1"><strong>Audio And Visual Devices</strong></a></li>
        <li><a data-toggle="tab" href="#b2"><strong>Cameras</strong></a></li>
        <li><a data-toggle="tab" href="#b3"><strong>Desktop</strong></a></li>
        <li><a data-toggle="tab" href="#b4"><strong>Hardware and fitting</strong></a></li>
        <li><a data-toggle="tab" href="#b5"><strong>Welding Machinery</strong></a></li>
    </ul>
    </div>
    <div id="content" class="col-md-9">
    <div class="tab-content">
        
        <div id="b1" class="tab-pane fade in active">
            <h3 style="text-align:left"><strong><u>Audio And Visual Devices</u></strong></h3><br /><br />
            <!--<div class="row">         
			<div class="col-md-2"><img src="https://static.gem.gov.in/resources//images/logo1.jpg" style="max-width:160px; margin-top:-12px;" alt="Gem"></div>
            </div>-->
            <!--<//jsp:include page="viewoptions.jsp"/>--->
            <jsp:include page="view1.jsp"/>         
        </div>
        
        <div id="b2" class="tab-pane fade">
            <h3 style="text-align:left"><strong><u>Cameras</u></strong></h3><br /><br />
            <!--<div class="row">         
		<div class="col-md-2"><img src="https://static.gem.gov.in/resources//images/logo1.jpg" style="max-width:160px; margin-top:-12px;" alt="Gem"></div>
            </div>-->
                <jsp:include page="view2.jsp"/>      
        </div>
        
        <div id="b3" class="tab-pane fade">
            <h3 style="text-align:left"><strong><u>Desktop</u></strong></h3><br /><br />
            <!--<div class="row">         
                <div class="col-md-2"><img src="https://static.gem.gov.in/resources//images/logo1.jpg" style="max-width:160px; margin-top:-12px;" alt="Gem"></div>
            </div>-->  
	</div>
        
        <div id="b4" class="tab-pane fade">
            <h3 style="text-align:left"><strong><u>Hardware and fitting</u></strong></h3><br /><br />
            <!--<div class="row">         
                <div class="col-md-2"><img src="https://static.gem.gov.in/resources//images/logo1.jpg" style="max-width:160px; margin-top:-12px;" alt="Gem"></div>
            </div>-->    
	</div>
        
        <div id="b5" class="tab-pane fade">
            <h3 style="text-align:left"><strong><u>Welding Machinery</u></strong></h3><br /><br />
            <!--<div class="row">         
                <div class="col-md-2"><img src="https://static.gem.gov.in/resources//images/logo1.jpg" style="max-width:160px; margin-top:-12px;" alt="Gem"></div>
            </div>-->  
	</div>        
    </div>
    </div>
</div>
</div> 
<br><br>  
    <jsp:include page="footer.jsp"/>
</body>
</html>