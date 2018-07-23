<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
<style>
    #hoverbutton{color:black; font-family: "proxima nova"; font-weight:100; font-size:15px; border-radius:8px; -webkit-transition-duration:100ms; -moz-transition-duration:100ms; transition-duration:100ms;}
    #hoverbutton:hover{text-decoration:none; background-color:orange; color:white;}
</style>
</head>
<body>
    <h3 style="text-align:left"><strong><u>Place Bid</u></strong></h3><br /><br />
<form action="" method="post">
<table class="table">
    <tr>
        <td colspan="2">Product Name</td><td><input type="text" name="t1" class="form-control"required/></td>
    </tr>
    <tr>
        <td colspan="2">Quantity</td><td><input type="number" name="t2" required class="form-control"/></td>
    </tr>
    <tr>
        <td colspan="2">End Date</td><td><input type="date" name="t3" required class="form-control"/></td>
    </tr>
    <tr>
        <td colspan="2"></td><td><button type="submit" class="btn btn-block" name="b1" id="hoverbutton">Place Bid</button></td>
    </tr>
</table>
<%
    Connection con=null;
    Statement st;
    try{
        if(request.getParameter("b1")!=null){
            String itmnm,edate;
            int qty;
            itmnm=request.getParameter("t1");
            qty=Integer.parseInt(request.getParameter("t2"));
            edate=request.getParameter("t3");
            String userid=(String)session.getAttribute("userid");
            Class.forName("com.mysql.jdbc.Driver");	
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");
            st=con.createStatement();
            String department="";
            String office="";
            ResultSet r2=st.executeQuery("select department from buyer where userid='"+userid+"'");
            if(r2.next()){
                department=r2.getString(1);
            }
            ResultSet r3=st.executeQuery("select office from buyer where userid='"+userid+"'");
            if(r3.next()){
                office=r3.getString(1);
            }
            String sql="insert into bidsbuyer(userid,itemname,quantity,startdate,enddate,department,office) values('"+userid+"','"+itmnm+"',"+qty+",NOW(),'"+edate+"','"+department+"','"+office+"')";
            int res=st.executeUpdate(sql);
            if(res!=0){
                out.println("<script>alert('Bid Inserted')</script>");
            }else{
                out.println("<script>alert('Bid could not be Inserted. Please trt again')</script>");  
            }
        }
    }catch(Exception e){
        out.println(e.toString());   
    }
%>
</form>
</body>
</html>