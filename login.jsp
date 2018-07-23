<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Government e-Marketplace | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
<style>
    body{text-decoration:none;}
    #overall{border:1px solid black; border-radius:10px;}
    #but6left{background-image:url(img/login.jpg); background-size:cover}
    #but:hover{color:orange; font-weight:lighter; word-wrap:break-word;}
    
    #hoverbuttonp{background-color:navy; color:white; font-family: "proxima nova"; font-weight:100; font-size:15px; border-radius:8px; -webkit-transition-duration:100ms; -moz-transition-duration:100ms; transition-duration:100ms;}
    #hoverbuttonp:hover{text-decoration:none; background-color:orange; color:white;}
</style>      
</head>
<body>
<%
    if(session.getAttribute("active")!=null){
        out.print("<script>alert('Account created Successfully')</script>");
         session.setAttribute("active",null);
    }
%>
    <jsp:include page="header.jsp"/> 
<br><br>
<div class="container-fluid">
<div class="row content">
<div class="col-md-12">
    <div class="col-md-3"></div>
    <div class="col-md-6" id="overall">
        <div class="col-md-6" id="but6left"><br />
            <h4 style="text-align:left"><strong>Not registered with GeM?</strong></h4>
            <p style="text-align:left">Sign up to experience the <br />Marketplace</p><br>
            <a href="buyersignup1.jsp"><p style="text-align:center" id="but"><u>Register as Buyer</u></p></a>
            <a href="sellersignup1.jsp"><p style="text-align:center" id="but"><u>Register as Seller</u></p></a>
        <br /><br /><br /><br /><br /><br /><br /><br />
        </div>
        <div class="col-md-6">
<form action="" method="post">
    <h1><strong>Login</strong></h1><br /><br />
    <div class="form-group">
        <label>User id</label>&nbsp;<strong>*&nbsp;<span class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="bottom" title="User Id is Case Sensitive"></span></strong>
        <input type="text" class="form-control" name="InputUserid">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>&nbsp;<strong>*</strong>
        <input type="password" class="form-control" name="InputPassword">
    </div><br />
    <button type="submit" name="b1" class="btn btn-link btn-block" id="hoverbuttonp">Submit</button>
<%
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    ResultSet ps=null;
    int temp=1;
    try{
        if(request.getParameter("b1")!=null){
            String userid,password;
            userid=request.getParameter("InputUserid");
            password=request.getParameter("InputPassword");
            Class.forName("com.mysql.jdbc.Driver");	
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");
            st=con.createStatement();
            rs=st.executeQuery("select password from seller where userid='"+userid+"'");
            if(rs.next()){
                String c=rs.getString(1);
                if(c.equals(password)){
                    session.setAttribute("userid",userid);
                    response.sendRedirect("sellerhomepage.jsp");
                }else{
                    out.println("<script>alert('Enter correct Password')</script>");
                }
            }else if(temp==1){
                out.println("<script>alert('Enter correct Password')</script>");
                ps=st.executeQuery("select password from buyer where userid='"+userid+"'");
                if(ps.next()){
                String c=ps.getString(1);
                if(c.equals(password)){
                    session.setAttribute("userid",userid);
                    response.sendRedirect("buyerhomepage.jsp");
                }else{
                    out.println("<script>alert('Enter correct Password')</script>");
                }
                }
            }else{
                out.print("<script>alert('Enter valid User id')</script>");
            }
        }    
    }catch(Exception e){
        out.println(e.toString());
    }
 %>
</form>
        </div>
    </div>
    <div class="col-md-3"></div>
</div>
</div>
</div>
<br><br>  
    <jsp:include page="footer.jsp"/>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});
</script>
</body>
</html>