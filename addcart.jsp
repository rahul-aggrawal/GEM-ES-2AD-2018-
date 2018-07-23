<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cart | GeM</title>
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
<script language="javascript">
function demo(){
<%
    int id=Integer.parseInt(request.getParameter("id"));
    String pname=request.getParameter("pname");
    int value=Integer.parseInt(request.getParameter("value"));
    int quantity=Integer.parseInt(request.getParameter("quantity"));
%>
    document.f.productname.value="<%=pname%>";
    document.f.valu.value="<%=value%>";
    }
function func(num)
{
    if(num><%=quantity%>)
    {
        document.f.quan.value="<%=quantity%>"
        document.f.totalvalu.value=(<%=quantity%>*<%=value%>);
        alert("Quantity Available is <%=quantity%>")
    }else
        {
            document.f.totalvalu.value=(num*<%=value%>);
        }       
}
</script>
</head>
<body onload="demo()">
    <jsp:useBean   id="connobj"  class="dboperation.dbconnect"/>
    <jsp:include page="headerbuyer.jsp"/>
<br><br>
<div class="container-fluid">
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
<form name="f"action="" method="post">
<table class="table">
    <tr>
        <td colspan="2"><strong>Product Name</strong></td><td><input type="text" name="productname" readonly="readonly" class="form-control"/></td>
    </tr>
    <tr>
        <td colspan="2"><strong>Value/Unit</strong></td><td><input type="text" name="valu" readonly="readonly"  class="form-control"/></td>
    </tr>
    <tr>
        <td colspan="2"><strong>Quantity</strong></td><td><input type="number" name="quan" required class="form-control" oninput="func(this.value)" onchange="func(this.value)"/></td>
    </tr>
    <tr>
        <td colspan="2"><strong>Total</strong></td><td><input type="text" name="totalvalu" readonly="readonly" class="form-control"/></td>
    </tr>
    <tr>
        <td colspan="2"><strong>Mode Of Purchase</strong></td>
        <td>
        <select class="form-control"name="mop">
            <option class="form-control">Direct Purchase</option>
            <option class="form-control">L1 Purchase</option>
        </select>
        </td>    
    </tr>
    <tr>
        <td colspan="2"></td><td><button type="submit" class="btn btn-block" name="b1" id="hoverbutton"><strong>Add To Cart</strong></button></td>
    </tr>
</table>
<%
    Connection con=null;
    Statement st=null;
    if(request.getParameter("b1")!=null)
    { 
    try{
        Class.forName("com.mysql.jdbc.Driver");	
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");
        st=con.createStatement();
        ResultSet rs=st.executeQuery("select sellerid from product where productid="+id+"");
        String sellerid="";
        if(rs.next()){
            sellerid=rs.getString(1);
        }    
        int quan=Integer.parseInt(request.getParameter("quan"));
        int totalvalue=Integer.parseInt(request.getParameter("totalvalu"));
        String buyerid=(String)session.getAttribute("userid");
        String mop=request.getParameter("mop");
        String run="insert into cart (buyeruserid,selleruserid,productid,product,quantity,value,total,purchasemode) values('"+buyerid+"','"+sellerid+"',"+id+",'"+pname+"',"+quan+","+value+","+totalvalue+",'"+mop+"')";
        int res=st.executeUpdate(run);
        if(res!=0){
            session.setAttribute("added", true);
            response.sendRedirect("cart.jsp");
        }else{
            out.print("<script>alert('Product could not be Added')</script>");
        }            
    }catch(Exception e){
        out.println(e.toString());
    }
    }
%>
</form>
    </div>
    <div class="col-md-3"></div>
</div>
</div>
<br><br>
    <jsp:include page="footer.jsp"/>   
</body>
</html>