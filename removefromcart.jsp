<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Remove From Cart | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <link rel="shortcut icon" href="favicon.jpg" type="image/jpg"/>
<script language="javascript">
<%
    String userid=(String)session.getAttribute("userid");
    int productid=Integer.parseInt(request.getParameter("id"));
%>
</script>    
</head>
<body>
    <jsp:include page="headerbuyer.jsp"/>
<br><br>
<div class="container-fluid">
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <%String productname=request.getParameter("pname");%>
    <h3 style="text-align:center"><strong><u>Delete Product from Cart</u></strong></h3><br /><br />
<form action="" method="post">
<table class="table table-borderless">
    <tr>
        <td><strong>Product Name</strong></td><td><input type="text" class="form-control" readonly value="<%=productname%>"/></td>
    </tr>
    <tr>
        <td><br /><button type="submit" class="btn btn-primary btn-block" name="b2" class="form-control">Cancel</button></td>
        <td><br /><button type="submit" class="btn btn-danger btn-block" name="b1" class="form-control" />Delete</td>
    </tr>
</table>
<%
    if(request.getParameter("b1")!=null){
        Connection con=null;
        Statement st=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");	
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");
            st=con.createStatement();
            int res=st.executeUpdate("delete from cart where buyeruserid='"+userid+"' and productid="+productid+"");
            if(res!=0){
                //out.println("<script>alert('Product has been deleted from your cart')</script>");
                response.sendRedirect("cart.jsp");
            }
        }catch(Exception e){
            out.println(e.toString());
        }
    }
    if(request.getParameter("b2")!=null){
        response.sendRedirect("cart.jsp");
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