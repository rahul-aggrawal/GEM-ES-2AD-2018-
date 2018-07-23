<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Seller Orders | GeM </title>
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
	<jsp:include page="headerseller.jsp"/>
<br><br>
<div class="container-fluid">
<div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <h3 style="text-align:center"><strong><u>Your Orders</u></strong></h3><br /><br />
                                            <%
                                                Connection con=null;
                                                Statement st,lt,pt,ut;
                                                ResultSet rs;
                                                try
                                                {
                                                    con=connobj.getConnect();
                                                    st=con.createStatement();
                                                    String userid=(String)session.getAttribute("userid");
                                                    String run="select * from orders where selleruserid='"+userid+"'";
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
                    <tr><td><strong>Product Name: </strong></td><td><%=rs.getString(5)%></td></tr>
                    <tr><td><strong>Quantity: </strong></td><td><%=rs.getString(6)%></td></tr>
                    <tr><td><strong>Value/Unit: </strong></td><td><%=rs.getString(7)%></td></tr>
                    <tr><td><strong>Total Amount: </strong></td><td><%=rs.getString(8)%></td></tr>
                    <tr><td><strong>Purchase Mode: </strong></td><td><%=rs.getString(9)%></td></tr>
                </table>
            </div>
                                                            
                                                        <%
                                                         }
                                                         else
                                                        {
                                                        %>
            </div><br /><br />
                                                                <%
                                                                    pt=con.createStatement();
                                                                    int payid=rs.getInt(11);
                                                                    ResultSet pt1=pt.executeQuery("select paymentmode from payment where paymentid="+payid+"");
                                                                    if(pt1.next())
                                                                    {
                                                                        %>
                                                                        <br /><h3 style="text-align:left"><u><strong>Payment Mode: </strong><%=pt1.getString(1)%></u></h3><br />
                                                                     
                                                                        <%
                                                                    }
                                                                %>
                                                         
                                                                <%
                                                                    ut=con.createStatement();
                                                                    int locid=rs.getInt(10);
                                                                    ResultSet pt2=ut.executeQuery("select * from location where locationid="+locid+"");
                                                                    if(pt2.next())
                                                                    {
                                                                        %>
        <div class="card">
            <div class="col-md-12" style="background-color:whitesmoke;">
                <table class="table">
                    <tr><td><strong>Street Address: </strong></td><td><%=pt2.getString(5)%></td></tr>
                    <tr><td><strong>District: </strong></td><td><%=pt2.getString(3)%></td></tr>
                    <tr><td><strong>State: </strong></td><td><%=pt2.getString(2)%></td></tr>
                    <tr><td><strong>Pincode: </strong></td><td><%=pt2.getString(4)%></td></tr>
                    <tr><td><strong>Contact No(office): </strong></td><td><%=pt2.getString(6)%></td></tr>
                </table>
            </div>
                                                                        <%
                                                                    }
                                                                %>
        </div><br>
        <div class="card">
            <br /><h3 style="text-align:left"><u><strong>Order Number: </strong><%=rs.getString(1)%></u></h3><br />
            <div class="col-md-12" style="background-color:whitesmoke;">
                <table class="table">
                    <tr><td><strong>Product Name: </strong></td><td><%=rs.getString(5)%></td></tr>
                    <tr><td><strong>Quantity: </strong></td><td><%=rs.getString(6)%></td></tr>
                    <tr><td><strong>Value/Unit: </strong></td><td><%=rs.getString(7)%></td></tr>
                    <tr><td><strong>Total Amount: </strong></td><td><%=rs.getString(8)%></td></tr>
                    <tr><td><strong>Purchase Mode: </strong></td><td><%=rs.getString(9)%></td></tr>
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
        <div class="col-md-2"></div>
    </div>
</div>
</div>
</div>
<br><br>
    <jsp:include page="footer.jsp"/>
</body>
</html>