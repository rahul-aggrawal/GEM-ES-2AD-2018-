<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Choose Location | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
    <jsp:include page="headerbuyer.jsp"/>
<br><br>
<div class="container-fluid">
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">        
<form action="" method="post">
<table class="table table-bordered table-striped">
    <tr>
        <th colspan="2">Street Address</th><th>District</th><th>State</th><th>Pin Code</th><th>Contact No (Office)</th><th></th>
    </tr>
<%
    Connection con=null;
    Statement st;
    ResultSet rs;
    String sql="";
    try{
        Class.forName("com.mysql.jdbc.Driver");	
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");
        st=con.createStatement();
        String userid=(String)session.getAttribute("userid");
        //String userid="yas276";
        sql="select * from location where userid='"+userid+"'";
        rs=st.executeQuery(sql);
        while(rs.next()){
            int id=rs.getInt(7);
%>
    <tr>
        <td colspan="2"><%=rs.getString(5)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(6)%></td>
        <td><a href="revieworder.jsp?locid=<%=id%>"><span class="glyphicon glyphicon glyphicon-ok" aria-hidden="true"></span></a></td>
    </tr>
<%
        }
    }catch(Exception e){
        out.println(e.toString());
    }
%>
</table>
</form>
    </div>
    <div class="col-md-2"></div>    
</div>
</div>
<br><br>  
    <jsp:include page="footer.jsp"/>
</body>
</html>