<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Review | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
<style>
    #hoverbutton{background-color:navy; color:white; font-family: "proxima nova"; font-weight:100; font-size:15px; border-radius:8px; -webkit-transition-duration:100ms; -moz-transition-duration:100ms; transition-duration:100ms;}
    #hoverbutton:hover{text-decoration:none; background-color:orange; color:white;}
</style>
</head>
<body>
    <jsp:useBean   id="connobj"  class="dboperation.dbconnect"/>
    <jsp:include page="headerbuyer.jsp"/>
<br><br>
<div class="container-fluid">
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <h3 style="text-align:center"><strong><u>Review Order</u></strong></h3><br /><br />
<%
    Connection con=null;
    Statement st;
    int locid=Integer.parseInt(request.getParameter("locid"));
    try{
        con=connobj.getConnect();
        st=con.createStatement();
        String userid=(String)session.getAttribute("userid");
        String run="select * from cart where buyeruserid='"+userid+"'";
        ResultSet rs=st.executeQuery(run);
        while(rs.next()){
%>
        <div class="row">
            <table class="table" style="background-color:whitesmoke;">
                <tr><td><strong>Product Name: </strong></td><td><%=rs.getString(4)%></td></tr>
                <tr><td><strong>Quantity: </strong></td><td><%=rs.getString(5)%></td></tr>
                <tr><td><strong>Value/Unit: </strong></td><td><%=rs.getString(6)%></td></tr>
                <tr><td><strong>Total Amount: </strong></td><td><%=rs.getString(7)%></td></tr>
                <tr><td><strong>Purchase Mode: </strong></td><td><%=rs.getString(8)%></td></tr>
            </table><br />
        </div>
<%
        }
        int payid=Integer.parseInt((String)session.getAttribute("payid"));
        ResultSet ps=st.executeQuery("select paymentmode from payment where paymentid="+payid+"");
        if(ps.next()){
%>

<h3 style="text-align:center"><u><strong>Payment Mode: </strong><%=ps.getString(1)%></u></h3><br><br>
<%
        }
        ResultSet ts=st.executeQuery("select * from location where locationid="+locid+"");
        if(ts.next()){
%>
        <div class="row">
            <table class="table" style="background-color:whitesmoke;">
                <tr><td><strong>Street Address: </strong></td><td><%=ts.getString(5)%></td></tr>
                <tr><td><strong>District: </strong></td><td><%=ts.getString(3)%></td></tr>
                <tr><td><strong>State: </strong></td><td><%=ts.getString(2)%></td></tr>
                <tr><td><strong>Pincode: </strong></td><td><%=ts.getString(4)%></td></tr>
                <tr><td><strong>Contact No(office): </strong></td><td><%=ts.getString(6)%></td></tr>
            </table><br />
        </div>
<%
        }
    }catch(Exception e){
        out.println(e.toString());
    }               
%>
<br /><br />
<a href="checkout.jsp?locid=<%=locid%>" style="text-decoration:none"><button type="btn" class="btn btn-block" id="hoverbutton"><strong>Place Order</strong></button></a>
    </div>
    <div class="col-md-3"></div>
</div>
</div>
<br><br><br>
    <jsp:include page="footer.jsp"/>
</body>
</html>