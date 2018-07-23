<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Buyer Registration | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
<style>
    body{text-decoration:none;}
    #backimg{background-image:url(img/backimgbuyer1.jpg); background-size:cover}
    #buyersignupleft{text-decoration:none; color:white; text-align:center;}
    #buyersignup{background-color:white; border:1px solid white; border-radius:10px;}
    #bluesignup{color:black; background-color:powderblue; border-radius:10px;}
    
    #hoverbutton{color:black; font-family: "proxima nova"; font-weight:100; font-size:15px; border-radius:8px; -webkit-transition-duration:100ms; -moz-transition-duration:100ms; transition-duration:100ms;}
    #hoverbutton:hover{text-decoration:none; background-color:orange; color:white;}
    
    #bluesignupt{margin:5px;}
</style>
</head>
<body>
    <jsp:include page="header.jsp"/>
<div class="container-fluid" id="backimg">
<div class="row content">
<div class="col-md-12">
<br /><br />
    <div class="col-md-1"></div>
    <div class="col-md-4" id="buyersignupleft">
<br /><br /><br /><br />
        <h2><strong>Government Organization <br />Buyer Sign Up</strong></h2><br>
        <p>Already Have GeM Account ?&nbsp;&nbsp;<a href="login.jsp" style="color:orange; text-decoration:none;">Login Now</a></p>
    </div>
    <div class="col-md-6" id="buyersignup">
        <h3 style="text-align:center"><strong>CREATE YOUR ORGANIZATION BUYER ACCOUNT</strong></h3>
        <p style="text-align:center">We don't share your personal and official details with anyone.</p><hr />
        <div id="bluesignup"><br />
            <p id="bluesignupt">For Primary User registration –<br />&nbsp;&nbsp; you require the following before you can proceed:</p>
            <ul>
                <li>Government email id – preferably designation based</li>
                <li>Aadhaar number</li>
                <li>Active Mobile number to which your Aadhaar is linked – for OTP purpose</li>
            </ul><br />
        </div><br />
<form action="" method="post">
    <table class="table table-borderless">
    <tbody>
        <tr>
            <td colspan="2">Aadhaar Number&nbsp;*</td><td><input type="text" name="aadhaarnum" placeholder="Aadhaar Number" class="form-control"required/></td>
        </tr>
        <tr>
            <td colspan="2">Mobile number linked <br />&nbsp;&nbsp; with AADHAAR&nbsp;*</td><td><input type="text" name="mobilenum" placeholder="Mobile Number" class="form-control"required/></td>
        </tr>
        <tr>
            <td colspan="2"></td><td><button type="submit" class="btn" name="b1" id="hoverbutton">Verify AADHAAR</button></td>
        </tr>                 
        <tr>
            <td colspan="2"></td>
            <td>                       
 <%
                                            Connection con=null;
                                                                Statement st=null;
                                                                Statement pt=null;
                                                                Statement ut=null;
                                                                try
                                                                {
                                                                    if(request.getParameter("b1")!=null)
                                                                    {
                                                                        String aa,mb;
                                                                        aa=request.getParameter("aadhaarnum");
                                                                        mb=request.getParameter("mobilenum");
                                                                        int a,m;
                                                                        a=Integer.parseInt(aa);
                                                                        m=Integer.parseInt(mb);
                                                                        Class.forName("com.mysql.jdbc.Driver");	
                                                                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");
                                                                        st=con.createStatement();
                                                                        ResultSet rs=st.executeQuery("select mobile,firstname,lastname from aadhaartable where aadhaar="+a+"");
                                                                        if(rs.next())
                                                                        {
                                                                            int c=rs.getInt(1);
                                                                            String fn=rs.getString(2);
                                                                            String ln=rs.getString(3);
                                                                            pt=con.createStatement();
                                                                            ResultSet ts=pt.executeQuery("select mobile from buyer where aadhaar="+a+"");
                                                                            if(ts.next())
                                                                            {
                                                                                out.println("<script>alert('This AADHAAR Number is already registered with GEM')</script>");
                                                                            }
                                                                            else
                                                                            {
                                                                                ut=con.createStatement();
                                                                                ResultSet ps=ut.executeQuery("select mobile from seller where aadhaar="+a+"");
                                                                                if(ps.next())
                                                                                {
                                                                                    out.println("<script>alert('This AADHAAR Number is already registered with GEM')</script>");
                                                                                }
                                                                                else
                                                                                {
                                                                                    if(c==m)
                                                                                    {
                                                                                        session.setAttribute("aadhaarnum",aa);
                                                                                        session.setAttribute("mobilenum", mb);
                                                                                        session.setAttribute("firstname",fn );
                                                                                        session.setAttribute("lastname",ln);
                                                                                        response.sendRedirect("buyersignup2.jsp");
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        out.println("<script>alert('Enter the correct mobile number which is linked with AADHAAR NUMBER')</script>");
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            
                                                                                out.print("<script>alert('Enter valid AADHAAR NUMBER')</script>");
                        
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
</div>
</div><br /><br />
</div>
<div class="container-fluid">
<div class="row content">
<div class="col-md-12 col-xs-12 text-center">
<br />
<h3><strong>Why Buy On GeM?</strong></h3>

    <img src="img/why-buy-on-gem.jpg" class="img-responsive" alt="why buy on gem" />

</div>
</div>
</div>
<br><br>  
    <jsp:include page="footer.jsp"/>
</body>
</html>