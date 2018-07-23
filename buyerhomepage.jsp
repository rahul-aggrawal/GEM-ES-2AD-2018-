<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Buyer Profile | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
</head>
<body>
<%
           response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");   //for http 1.1
           response.setHeader("Pragma", "no-cache");  //for http 1.0
           response.setHeader("Expires", "0");   //for proxies
            if(session.getAttribute("userid")==null)
            {
                response.sendRedirect("login.jsp");
            } 
            if(request.getAttribute("locadd")!=null)
            {
                out.println("<script>alert('Location Added Successfully')</script>");
                session.setAttribute("locadd",null);
            }    
            
            if(session.getAttribute("ordered")!=null)
            {
                out.println("<script>alert('Product Ordered Successfully')</script>");
                session.setAttribute("ordered",null);
            }
            
%>
    <jsp:include page="headerbuyer.jsp"/>
    <jsp:useBean id="connobj" class="dboperation.dbconnect"/>
<br><br>
<div class="container-fluid">
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-2"><br /><br />
    <ul class="nav nav-pills nav-stacked">
        <li class="active"><a data-toggle="tab" href="#b1"><strong>Buyer Profile</strong></a></li>
        <li><a data-toggle="tab" href="#b2"><strong>Add Location</strong></a></li>
        <li><a data-toggle="tab" href="#b3"><strong>Place Bid</strong></a></li>
    </ul>
    </div>
    <div class="col-md-1"></div>
    <div class="col-md-6">
    <div class="tab-content">
        <div id="b1" class="tab-pane fade in active">
            <jsp:include page="accountdetailsbuyer.jsp"/>
        </div>
        <div id="b2" class="tab-pane fade">
            <jsp:include page="locationdetails.jsp"/>
        </div>
        <div id="b3" class="tab-pane fade">
            <jsp:include page="buyerbid.jsp"/>
        </div>
    </div>            
    </div>
    <div class="col-md-2"></div>            
</div>	
</div>
<br><br>  
    <jsp:include page="footer.jsp"/>
</body>
</html>