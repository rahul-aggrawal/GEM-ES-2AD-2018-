<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Buyer Orders | GeM </title>
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
    <jsp:useBean id="connobj" class="dboperation.dbconnect"/>
    <jsp:include page="headerbuyer.jsp"/>
<br><br>
<div class="container-fluid">
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h3 style="text-align:center"><strong><u>Your Orders</u></strong></h3><br /><br />
<%
                                                Connection con=null;
                                                Statement st;
                                                ResultSet rs;
                                                try
                                                {
                                                    con=connobj.getConnect();
                                                    st=con.createStatement();
                                                    String userid=(String)session.getAttribute("userid");
                                                    String run="select * from orders where buyeruserid='"+userid+"'";
                                                    rs=st.executeQuery(run);
                                                    int tempid=0;
                                                    while(rs.next())
                                                    {
                                                        if(tempid==0)
                                                        {
                                                            tempid=rs.getInt(1);
                                                            %>
        <div class="card">
            <h3 style="text-align:left"><u><strong>Order Number: </strong><%=rs.getString(1)%></u></h3><br />
<%
                                                        }    
                                                        if(rs.getInt(1)==tempid)
                                                        {
                                                        %>
            <div class="col-md-12" style="background-color:whitesmoke;">
                <table class="table">
                    <tr><td><strong>Product Name: </strong></td><td><%=rs.getString(4)%></td></tr>
                    <tr><td><strong>Quantity: </strong></td><td><%=rs.getString(5)%></td></tr>
                    <tr><td><strong>Value/Unit: </strong></td><td><%=rs.getString(6)%></td></tr>
                    <tr><td><strong>Total Amount: </strong></td><td><%=rs.getString(7)%></td></tr>
                    <tr><td><strong>Purchase Mode: </strong></td><td><%=rs.getString(8)%></td></tr>
                </table>
            </div>
<%
                                                         }
                                                         else
                                                        {%>
        </div>
        <div class="card">
            <br /><h3 style="text-align:left"><u><strong>Order Number: </strong><%=rs.getString(1)%></u></h3><br />
            <div class="col-md-12" style="background-color:whitesmoke;">
                <table class="table">
                    <tr><td><strong>Product Name: </strong></td><td><%=rs.getString(4)%></td></tr>
                    <tr><td><strong>Quantity: </strong></td><td><%=rs.getString(5)%></td></tr>
                    <tr><td><strong>Value/Unit: </strong></td><td><%=rs.getString(6)%></td></tr>
                    <tr><td><strong>Total Amount: </strong></td><td><%=rs.getString(7)%></td></tr>
                    <tr><td><strong>Purchase Mode: </strong></td><td><%=rs.getString(8)%></td></tr>
                </table>
            </div>
<%
                                                             tempid=rs.getInt(1);
                                                             continue;
                                                        }
                                                    }
                                                }catch(Exception e)
                                                {
                                                    out.println(e.toString());
                                                }
                                            %>
        </div>
    </div>
    <div class="col-md-2"></div>
</div>
</div>
<br><br>
    <jsp:include page="footer.jsp"/>
</body>
</html>