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
    #backimg{background-image:url(img/backimgbuyer2.jpg); background-size:cover}
    #buyersignupleft{text-decoration:none; color:white; text-align:center;}
    #buyersignup{background-color:white; border: 1px solid white; border-radius:10px;}
    
    #hoverbutton{color:black; font-family: "proxima nova"; font-weight:100; font-size:15px; border-radius:8px; -webkit-transition-duration:100ms; -moz-transition-duration:100ms; transition-duration:100ms;}
    #hoverbutton:hover{text-decoration:none; background-color:orange; color:white;}
</style>
<script language="javascript" type="text/javascript">
            <jsp:useBean   id="connobj"  class="dboperation.dbconnect"/>
      var xmlHttp  
      var xmlHttp
      function showState(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="department.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("department").innerHTML=xmlHttp.responseText   
      }   
      }

      function showCity(str){
      if (typeof XMLHttpRequest != "undefined"){
        xmlHttp= new XMLHttpRequest();
        }
      else if (window.ActiveXObject){
        xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
        }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="office.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange1;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }
      function stateChange1(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("office").innerHTML=xmlHttp.responseText   
      }   
      }
      
      function func()
            {
                if(document.f.pa.value!=document.f.cpa.value)
                {
                    alert("Password and ConfirmPassword field do not match");
                    
                }    
            }
      </script>  
</head>
<body>
    <jsp:include page="header.jsp"/>
 <%
            if(session.getAttribute("aadhaarnum")==null||session.getAttribute("mobilenum")==null)
            {
                response.sendRedirect("buyersignup1.jsp");
            }
        %>
<div class="container-fluid" id="backimg"><br /><br />
<div class="row content">
    <div class="col-md-1"></div>
    <div class="col-md-4" id="buyersignupleft"><br /><br /><br /><br />
        <h2 style="text-align:center"><strong>Government Organization<br /> Buyer Sign Up</strong></h2><br>
        <p>Please read the document before Sign Up, Need help <span class="glyphicon glyphicon-question-sign"></span></p>
    </div>
    <div class="col-md-6" id="buyersignup">
        <h3 style="text-align:center"><strong>CREATE YOUR ORGANIZATION BUYER ACCOUNT</strong></h3>
        <p style="text-align:center">We don't share your personal and official details with anyone.</h3><br><br>
<form name="f"action="" method="post">
<table class="table table-borderless">
<tbody>
    <tr>
        <td colspan="2">Aadhaar Number *</td><td><input type="text" readonly="readonly" name="ar" value="<%=session.getAttribute("aadhaarnum")%>" class="form-control"/></td>
    </tr>
    <tr>
        <td colspan="2">Mobile Number *</td><td><input type="text" readonly="readonly" name="mi"value="<%=session.getAttribute("mobilenum") %>"class="form-control" /></td>
    </tr>
    <tr>
        <td colspan="2">First Name *</td><td><input type="text" name="fn" readonly="readonly" class="form-control" value="<%=session.getAttribute("firstname") %>"/></td>
    </tr>
    <tr>
        <td colspan="2">Last Name *</td><td><input type="text" name="ln" readonly="readonly" class="form-control" value="<%=session.getAttribute("lastname") %>"/></td>
    </tr>
    <tr>
                                                    <td colspan="2">Organization Type</td>
                                                    <td>
                                                        <select name='organisation' onchange="showState(this.value)"class="form-control">  
                                                            <option value="none">Select</option>  
                                                                <%
                                                                    Class.forName("com.mysql.jdbc.Driver").newInstance();  
                                                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");  
                                                                    Statement stmt = con.createStatement();  
                                                                    ResultSet rs = stmt.executeQuery("Select * from organisation");
                                                                    while(rs.next()){
                                                                %>
                                                            <option value="<%=rs.getString(1)%>"class="form-control"><%=rs.getString(2)%></option>  
                                                                <%
                                                                        }
                                                                    %>
                                                        </select>  
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">Department</td>
                                                    <td>
                                                        <div id='department'>  
                                                        <select name='department'class="form-control" >  
                                                        <option value='-1'></option>  
                                                        </select>  
                                                        </div>  
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">Organisation</td><td>
                                                        <div id='office'>  
                                                            <select name='office'class="form-control" >  
                                                                <option value='-1'></option>  
                                                            </select>  
                                                        </div></td>
                                                </tr>
    <tr>
        <td colspan="2">User id *</td><td><input type="text" name="ui"placeholder="User id" class="form-control"required/></td>
    </tr>
    <tr>
        <td colspan="2">Password *</td><td><input type="password" name="pa" placeholder="Password" class="form-control"required/></td>
    </tr>
    <tr>
        <td colspan="2">Confirm Password *</td><td><input type="password" name="cpa" placeholder="Confirm Password" class="form-control"required value=""onchange="func()"/></td>
    </tr>
    <tr>
        <td colspan="2"></td><td><button type="submit" class="btn btn-block" name="b2" id="hoverbutton">Create Account</button></td>
    </tr>
    <tr>
        <td colspan="3">
<%
                                             if(request.getParameter("b2")!=null)
                                             {
                                                try
                                                {    
                                                    int aadhaarnum=Integer.parseInt((String)session.getAttribute("aadhaarnum"));
                                                    int mobilenum=Integer.parseInt((String)session.getAttribute("mobilenum"));
                                                    String fn=(String)session.getAttribute("firstname");
                                                    String ln=(String)session.getAttribute("lastname");
                                                    Statement st=con.createStatement();
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
                                                        int coid=Integer.parseInt(request.getParameter("organisation"));
                                                        int sid=Integer.parseInt(request.getParameter("department"));
                                                        int oid=Integer.parseInt(request.getParameter("office"));
                                                        String organisation="";
                                                        String department="";
                                                        String office="";
                                                        Statement vt=con.createStatement();
                                                        ResultSet r1=vt.executeQuery("select organisation from organisation where organisationid="+coid+"");
                                                        if(r1.next())
                                                        {
                                                            organisation=r1.getString(1);
                                                        }
                                                        ResultSet r2=vt.executeQuery("select department from department where departmentid="+sid+"");
                                                        if(r2.next())
                                                        {
                                                            department=r2.getString(1);
                                                        }
                                                        ResultSet r3=vt.executeQuery("select office from office where officeid="+oid+"");
                                                        if(r3.next())
                                                        {
                                                            office=r3.getString(1);
                                                        }
                                                        String run="insert into buyer (aadhaar,mobile,firstname,lastname,userid,password,organisation,department,office) values("+aadhaarnum+","+mobilenum+",'"+fn+"','"+ln+"','"+userid+"','"+pa+"','"+organisation+"','"+department+"','"+office+"')";
                                                        int res=st.executeUpdate(run);
                                                        if(res!=0)
                                                        {
                                                            session.setAttribute("active","1");
                                                            session.setAttribute("aadhaarnum",null);
                                                            session.setAttribute("mobile",null);
                                                            session.setAttribute("firstname",null);
                                                            session.setAttribute("lastname",null);
                                                            response.sendRedirect("login.jsp");
                                                        }
                                                        else
                                                        {
                                                            out.println("<script>alert('Enter valid data')</script>");    
                                                        }
                                                    }    
                                                }catch(Exception e)
                                                {
                                                    out.println(e.toString());
                                                }    
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
<h3><strong>Why Buy On GeM?</strong></h3>

    <img src="img/why-buy-on-gem.jpg" class="img-responsive" alt="why buy on gem" />

</div>
</div>
</div><br><br>  
    <jsp:include page="footer.jsp"/>
</body>
</html>