<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Seller Registration | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
<style>
    body{text-decoration:none;}
    #backimg{background-image:url(img/backimgbuyer2.jpg); background-size:cover}
    #sellersignupleft{text-decoration:none; color:white; text-align:center;}
    #sellersignup{background-color:white; border: 1px solid white; border-radius:10px;}
    
    #hoverbutton{color:black; font-family: "proxima nova"; font-weight:100; font-size:15px; border-radius:8px; -webkit-transition-duration:100ms; -moz-transition-duration:100ms; transition-duration:100ms;}
    #hoverbutton:hover{text-decoration:none; background-color:orange; color:white;}
</style>
<script language="javascript">
            function func(cpass)
            {
                if(document.f.pa.value!=document.f.cpa.value)
                {
                    alert("Password and ConfirmPassword field do not match");
                    
                }    
            }
        </script>    
</head>
<body> 
<%    
    if(session.getAttribute("aadhaarnum")==null||session.getAttribute("mobilenum")==null)
    {
        response.sendRedirect("sellersignup1.jsp");
    }
 %>
    <jsp:include page="header.jsp"/>    
    <jsp:useBean   id="connobj"  class="dboperation.dbconnect"/>
<div class="container-fluid" id="backimg"><br /><br />
<div class="row content">
    <div class="col-md-1"></div>
    <div class="col-md-4" id="sellersignupleft"><br /><br /><br /><br />
        <h2 style="text-align:center"><strong>Looking For Products and Service To Sell On GeM, Sign Up Now !</strong></h2><br>
        <p>Please read the document before Sign Up, Need help <span class="glyphicon glyphicon-question-sign"></span></p>
    </div>
    <div class="col-md-6" id="sellersignup">
        <h3 style="text-align:center"><strong>CREATE YOUR ORGANIZATION SELLER ACCOUNT</strong></h3>
	<p style="text-align:center">We don't share your personal and official details with anyone.</p><br>
<form name="f" action="" method="post">
<table class="table table-borderless">
<tbody>
    <tr>
        <td colspan="2">Aadhaar Number *</td><td><input type="text" readonly="readonly" name="ar" value="<%=session.getAttribute("aadhaarnum")%>"class="form-control" /></td>
    </tr>
    <tr>
        <td colspan="2">Mobile Number *</td><td><input type="text" readonly="readonly" name="mi"value="<%=session.getAttribute("mobilenum") %>"class="form-control" /></td>
    </tr>
    <tr>
        <td colspan="2">First Name *</td><td><input type="text" name="fn"readonly="readonly" class="form-control" value="<%=session.getAttribute("firstname") %>"/></td>
    </tr>
    <tr>
        <td colspan="2">Last Name *</td><td><input type="text" name="ln"readonly="readonly" class="form-control" value="<%=session.getAttribute("lastname") %>"/></td>
    </tr>
    <tr>
        <td colspan="2">User id *</td><td><input type="text" name="ui"placeholder="User id" class="form-control"required/></td>
    </tr>
    <tr>
        <td colspan="2">Password *</td><td><input type="password" name="pa" placeholder="Password" class="form-control"required/></td>
    </tr>
    <tr>
        <td colspan="2">Confirm Password *</td><td><input type="password" name="cpa" placeholder="Confirm Password" class="form-control"required value=""onchange="func(this.value)"/></td>
    </tr>
    <tr>
        <td colspan="2"></td><td><button type="submit" class="btn btn-block" name="b2" id="hoverbutton">Create Account</button></td>
    </tr>
    <tr>
        <td colspan="3">    
<%
                                            Connection con=null;
                                            Statement st=null;
                                            try
                                            {
                                                if(request.getParameter("b2")!=null)
                                                {
                                                    int aadhaarnum=Integer.parseInt((String)session.getAttribute("aadhaarnum"));
                                                    int mobilenum=Integer.parseInt((String)session.getAttribute("mobilenum"));
                                                    String fn=(String)session.getAttribute("firstname");
                                                    String ln=(String)session.getAttribute("lastname");
                                                    Class.forName("com.mysql.jdbc.Driver");	
                                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");
                                                    st=con.createStatement();
                                                    String userid=request.getParameter("ui");
                                                    ResultSet rs1=st.executeQuery("select * from buyer where userid='"+userid+"'");
                                                    Statement ut=con.createStatement();
                                                    ResultSet rs2=ut.executeQuery("select * from seller where userid='"+userid+"'");
                                                    if(rs1.next()||rs2.next())
                                                    {
                                                        out.println("<script>alert('This userid is already in use. Try something else')</script>");
                                                    }
                                                    else
                                                    {    
                                                        String pa=request.getParameter("pa");
                                                        String run="insert into seller (aadhaar,mobile,firstname,lastname,userid,password) values("+aadhaarnum+","+mobilenum+",'"+fn+"','"+ln+"','"+userid+"','"+pa+"')";
                                                        int res=st.executeUpdate(run);
                                                        if(res!=0)
                                                        {
                                                            out.print("<script>alert('Account created Successfully')</script>");
                                                            session.setAttribute("active",true);
                                                            session.setAttribute("aadhaarnum",null);
                                                            session.setAttribute("mobile",null);
                                                            response.sendRedirect("login.jsp");
                                                        }
                                                        else
                                                        {
                                                            out.print("<script>alert('Enter valid data')</script>");    
                                                        }
                                                    }    
                                                }    
                                            }catch(Exception e)
                                            {
                                                out.println(e.toString());
                                            }
                                        %>
        </td>
    </tr>
</tbody>
</table>
</form>
    </div>
    <div class="col-md-1"></div>
</div><br /><br />
</div>
<div class="container-fluid">
<div class="row content">
<div class="col-md-12 col-xs-12 text-center">
<br />
<h3><strong>Why Sell On GeM?</strong></h3>

    <img src="img/why-sell-on-gem.jpg" class="img-responsive" alt="why buy on gem" />

</div>
</div>
</div><br><br>
    <jsp:include page="footer.jsp"/>
</body>
</html>