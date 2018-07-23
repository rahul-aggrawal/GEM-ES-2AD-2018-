<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Seller Bid View | GeM </title>
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
    <div class="col-md-10"><br />

    <div class="col-md-12">
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
    <div class="tab-content"><br />
        <div id="Bids" class="tab-pane fade in active">
<%
    Connection con=null;
    Statement st;
    try{
        Class.forName("com.mysql.jdbc.Driver");	
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");
        st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from bidsbuyer");
        while(rs.next()){
%>
        <div class="card" style="border-top:5px solid lightskyblue">
            <p align="left" style="background-color:gainsboro;"><button type="button" class="btn btn-info"><strong>&nbsp;&nbsp;BID NO: &nbsp;&nbsp;<%=rs.getString(2)%>&nbsp;&nbsp;&nbsp;</strong></button></p>
            <div class="container">
                <div class="col-md-3">
                    <p><strong>Item(S): </strong><%=rs.getString(3)%></p>
                    <p><strong>Quantity Required: </strong><%=rs.getInt(4)%></p>
                </div>
                <div class="col-md-4">
                    <p><strong>Department:</strong><%=rs.getString(7)%></p>
                    <p><strong>Organisation:</strong><%=rs.getString(8)%></p>
                </div>
                <div class="col-md-5">
                    <p><strong>Start Date: </strong><%=rs.getString(5)%></p>
                    <p><strong>End Date: </strong><%=rs.getString(6)%></p>
                </div>
            </div>
            <p align="right" style="margin-right:40px;"><a href="sellerbid.jsp?bidid=<%=rs.getString(2)%>&pname=<%=rs.getString(3)%>&quantity=<%=rs.getString(4)%>"><button type="submit" class="btn btn-info">&nbsp;&nbsp;Place Bid&nbsp;&nbsp;</button></a></p><br />
        </div><br>
<%
        }    
    }catch(Exception e){
        out.println(e.toString());
    }    
%>	
        </div><br>
        
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

    </div>
    <div class="col-md-1"></div>
</div>
</div>
    <jsp:include page="footer.jsp"/>
</body>
</html>