<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Buyer Cart | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
</head>
<body>
    <jsp:useBean id="connobj" class="dboperation.dbconnect"/>
    <jsp:include page="headerbuyer.jsp"/>
<br><br>    
<%
    if(session.getAttribute("added")!=null){
        out.println("<script>alert('Product Added Successfully')</script>");
        session.setAttribute("added",null);
    }
%>
<div class="container-fluid">
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
<table class="table table-bordered table-striped">
    <tr>
        <th>Product Name</th><th>Quantity</th><th>Value/Unit</th><th>Total Amount</th><th>Purchase Mode</th><th></th>
    </tr>
    <tbody id="myTable">
<%
     Connection con=null;
    Statement st;
    ResultSet rs;
    try{
        con=connobj.getConnect();
        st=con.createStatement();
        String userid=(String)session.getAttribute("userid");
        String run="select * from cart where buyeruserid='"+userid+"'";
        rs=st.executeQuery(run);
        while(rs.next()){
            int id=rs.getInt(3);
            String pname=rs.getString(4);
%>
    <tr>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getInt(5)%></td>
        <td><%=rs.getInt(6)%></td>
        <td><%=rs.getInt(7)%></td>
        <td><%=rs.getString(8)%></td>
        <td><a href="removefromcart.jsp?id=<%=id%>&pname=<%=pname%>"><span class="glyphicon glyphicon glyphicon-remove" aria-hidden="true" ></span></a></td>
    </tr>
<%
        }
    }catch(Exception e){
        out.println(e.toString());
    }
%>
    </tbody>           
</table>
<br />
    </div>
    <div class="col-md-2"></div>
    <div class="col-md-12">
        <div class="col-md-10" align="right">
            <a href="paymentoption.jsp" align="right"><button type="button" class="btn btn-success">Proceed To Checkout</button></a>      
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
</div>
<br><br>  
    <jsp:include page="footer.jsp"/>
</body>
</html>