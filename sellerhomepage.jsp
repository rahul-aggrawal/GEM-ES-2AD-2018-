<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Seller Profile | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
<style>
    #hoverbutton{color:black; font-family: "proxima nova"; font-weight:100; font-size:15px; border-radius:8px; -webkit-transition-duration:100ms; -moz-transition-duration:100ms; transition-duration:100ms;}
    #hoverbutton:hover{text-decoration:none; background-color:orange; color:white;}
</style>
</head>
<body>
    <jsp:useBean   id="connobj"  class="dboperation.dbconnect"/>
    <jsp:include page="headerseller.jsp"/>
<br><br>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");   //for http 1.1
    response.setHeader("Pragma", "no-cache");  //for http 1.0
    response.setHeader("Expires", "0");   //for proxies
    if(session.getAttribute("userid")==null)
    {
        response.sendRedirect("login.jsp");
    }
    if(request.getAttribute("prodadd")!=null)
    {
        String x=(String)request.getAttribute("prodadd");
        if(x.equals("added")){
            out.println("<script>alert('Product Added Successfully')</script>");
            session.setAttribute("proadd","");
        }
    }
%>
<div class="container-fluid">
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-2"><br /><br />
        <ul class="nav nav-pills nav-stacked">
            <li class="active"><a data-toggle="tab"href="#b1">Seller Profile</a></li>
            <li><a data-toggle="tab"href="#b2">Add Product</a></li> 
        </ul>
    </div>
    <div class="col-md-1"></div>
    <div class="col-md-6">
    <div class="tab-content">
        <div id="b1" class="tab-pane fade in active">
            <jsp:include page="accountdetailsseller.jsp"/>
        </div>
        <div id="b2"class="tab-pane fade">
            <h3 style="text-align:left"><strong><u>Add New Product</u></strong></h3><br /><br />
<form action="addproduct" method="post">
<table class="table">
    <tr>
        <td>Product Category</td>
        <td>
        <select name='category' onchange="showState(this.value)"class="form-control">  
            <option value="none">Select</option>  
<%
    Class.forName("com.mysql.jdbc.Driver").newInstance();  
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");  
    Statement stmt = con.createStatement();  
    ResultSet rs = stmt.executeQuery("Select * from productcategory");
    while(rs.next()){
%>        
            <option value="<%=rs.getString(1)%>"class="form-control"><%=rs.getString(2)%></option>  
<%
    }
%>
        </select>  
        </td>
    </tr>
    <tr>
        <td col-span="2">Product Name</td><td><input type="text" class="form-control" name="pa" required/></td>
    </tr>
    <tr>
        <td col-span="2">Units Available</td><td><input type="number" class="form-control" name="ua" required/></td>
    </tr>
    <tr>
        <td col-span="2">Value/Unit</td><td><input type="number" class="form-control" name="vn"required/></td>
    </tr>
    <tr>
        <td></td><td><button type="submit" class="btn btn-block" id="hoverbutton" name="sa">Add Product</button></td>
    </tr>
</table>                                      
</form>
        </div>   
    </div>
    </div>
</div>
</div>
<br><br>
    <jsp:include page="footer.jsp"/>   
</body>
</html>