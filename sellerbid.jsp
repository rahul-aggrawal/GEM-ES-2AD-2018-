<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Seller Bid | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
<style>
    #hoverbutton{color:black; font-family: "proxima nova"; font-weight:100; font-size:15px; border-radius:8px; -webkit-transition-duration:100ms; -moz-transition-duration:100ms; transition-duration:100ms;}
    #hoverbutton:hover{text-decoration:none; background-color:orange; color:white;}
</style>
<%
    String bidid=request.getParameter("bidid");
    String productname=request.getParameter("pname");
    int quanreq=Integer.parseInt(request.getParameter("quantity"));
%>
<script language="javascript">
    function check(){
        if(document.f.t3.value><%=quanreq%>){
            alert("Quantity Required is <%=quanreq%>");
            document.f.t3.value=<%=quanreq%>;
        }    
    }
    function func(){
        document.f.t5.value=((document.f.t3.value)*(document.f.t4.value));
    }
</script>
</head>
<body>
<div class="container-fluid">
<div class="row content">
    <jsp:include page="headerseller.jsp"/>
    <div class="col-md-2"></div>
    <div class="col-md-8"><br /><br />
<form name="f"action="" method="post">
<table class="table">
    <tr>
        <td colspan="2"><strong>Bid Id</strong></td><td><input type="text" name="t1" readonly class="form-control" value="<%=bidid%>"/></td>
    </tr>
    <tr>
        <td colspan="2"><strong>Product Name</strong></td><td><input type="text" name="t2" readonly class="form-control" value="<%=productname%>"/></td>
    </tr>
    <tr>
        <td colspan="2"><strong>Quantity</strong></td><td><input type="number" name="t3" required class="form-control" value="" onchange="check()"/></td>
    </tr>
    <tr>
        <td colspan="2"><strong>Value/Unit</strong></td><td><input type="number" name="t4" required class="form-control" value="" onchange="func()"/></td>
    </tr>
    <tr>
        <td colspan="2"><strong>Total</strong></td><td><input type="text" name="t5" readonly="readonly" class="form-control"/></td>
    </tr>
    <tr>
        <td colspan="2"></td><td><button type="submit" class="btn btn-block" name="b1" id="hoverbutton"><strong>Place Bid</strong></button></td>
    </tr>
</table>
<%
                            Connection con=null;
                            Statement st,ut;
                            try
                            {
                                if(request.getParameter("b1")!=null)
                                {
                                    String uid=(String)session.getAttribute("userid");
                                    String edate;
                                    int bid=Integer.parseInt(request.getParameter("t1"));
                                    String pname=request.getParameter("t2");
                                    int quanoff=Integer.parseInt(request.getParameter("t3"));
                                    int value=Integer.parseInt(request.getParameter("t4"));
                                    int total=Integer.parseInt(request.getParameter("t5"));
                                    Class.forName("com.mysql.jdbc.Driver");	
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");
                                    st=con.createStatement();
                                    ut=con.createStatement();
                                    ResultSet rs=st.executeQuery("select firstname,lastname from seller where userid='"+uid+"'");
                                    String sellername="";
                                    if(rs.next())
                                    {
                                        sellername+=rs.getString(1);
                                        sellername+=" ";
                                        sellername+=rs.getString(2);
                                    }
                                    String sql="insert into bidsseller(bidid,userid,sellername,quantityoffered,value,total,dateofbid) values("+bid+",'"+uid+"','"+sellername+"',"+quanoff+","+value+","+total+",NOW())";
                                    int res=ut.executeUpdate(sql);
                                     if(res!=0)
                                     {
                                       session.setAttribute("bidadded","added");  
                                       response.sendRedirect("sellerhomepage.jsp");
                                     }
                                     else
                                     {
                                       out.println("<script>alert('Bid Could Not be placed')</script>");  
                                     }
                                }
                            }catch(Exception e)
                            {
                               out.println(e.toString());   
                            }
        %>
</form>
    </div>
    <div class="col-md-2"></div>    
</div>
</div>
<br /><br />
    <jsp:include page="footer.jsp"/>
</body>
</html>