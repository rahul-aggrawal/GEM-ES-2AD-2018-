<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Buyer bids View | GeM </title>
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
<div class="container-fluid">
<div class="row content">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class="col-md-12">
        <h3 style="text-align:center"><strong><u>Your Bids</u></strong></h3><br /><br />
<%
    Connection con=null;
    Statement st,lt,pt,ut;
    ResultSet rs;
    try {
        con=connobj.getConnect();
        st=con.createStatement();
        String userid=(String)session.getAttribute("userid");
        String run="select * from bidsbuyer where userid='"+userid+"'";
        rs=st.executeQuery(run);
        int tempid=0;
        while(rs.next()){
            if(tempid==0){
                tempid=rs.getInt(2);
%>
        <div class="card">
            <h3 style="text-align:left"><u><strong>Bid Number: </strong><%=rs.getInt(2)%></u></h3><br />
        </div>
<%        
            }else{
                tempid=rs.getInt(2);
%>
                <div class="card">
                    <h3 style="text-align:left"><u><strong>Bid Number: </strong><%=rs.getInt(2)%></u></h3><br /> 
                </div>
        </div>
<%
            }
            if(rs.getInt(2)==tempid){
%>
                <div class="col-md-12" style="background-color:whitesmoke;">
                <table class="table">
                    <tr><td><strong>Item Name: </strong></td><td><%=rs.getString(3)%></td></tr>
                    <tr><td><strong>Quantity Required: </strong></td><td><%=rs.getString(4)%></td></tr>
                    <tr><td><strong>Start Date: </strong></td><td><%=rs.getString(5)%></td></tr>
                    <tr><td><strong>End Date: </strong></td><td><%=rs.getString(6)%></td></tr>
                </table>
                </div>
                 

                <div class="card">
<%
                pt=con.createStatement();
                int bidid=rs.getInt(2);
                ResultSet pt1=pt.executeQuery("select * from bidsseller where bidid="+bidid+" order by quantityoffered DESC");
%>
                    <table class="table table-bordered">
                        <th>Seller</th><th>Quantity Offered</th><th>Value/Unit</th><th>Total</th><th>Date of  Bid</th>
<%
                while(pt1.next()){
%>
                        <tr>
                            <td><%=pt1.getString(3)%></td><td><%=pt1.getString(4)%></td><td><%=pt1.getString(5)%></td><td><%=pt1.getString(6)%></td><td><%=pt1.getString(7)%></td>
                        </tr>
                                               
<%
                }
%>
                    </table>
<%
            }
                                
        }
    }catch(Exception e){
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