<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Log Out | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
<style>
    #logouttab{background-color:whitesmoke; border:1px solid white; border-radius:15px;}
</style>
</head>
 <body>
    <jsp:include page="header.jsp"/>
<br><br>
<%
    session.removeAttribute("userid");
    session.invalidate();
%>
<div class="container-fluid">
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6" id="logouttab"><br /><br />
        <h2 style="text-align:center"><strong>You Have Successfully Logged Out</strong></h2><br />
        <p style="text-align:center"><strong>Click here to login again&nbsp;<a href="login.jsp" style="color:orange; text-decoration:none;">Login</a></strong></p>
        <br /><br />
    </div>
    <div class="col-md-3"></div>
</div>
</div>
<br><br>  
    <jsp:include page="footer.jsp"/>
</body>

</html>