<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<style type="text/css">
body{text-decoration:none;}

.product {box-shadow:0 4px 8px 0 rgba(0, 0, 0, 0.2); max-width:300px; margin:auto; text-align:center; font-family:arial;}
.product:hover {box-shadow: 0 5px 10px 0 rgba(0,0,0,0.6);}

.uv {color:grey; font-size:18px; text-align:left; margin-left:20px;}

#hovbut {color:white; background-color:#000; text-decoration:none; border:none; outline:0; display:inline-block; padding:8px; text-align:center; cursor:pointer; width:100%; font-size:18px;}
#hovbut:hover {color:white; background-color:darkgreen; text-decoration:none; opacity: 0.7;}
</style>
<form action="" method="post">
<%
    Connection con=null;
    Statement st;
    ResultSet rs;
    try{
        Class.forName("com.mysql.jdbc.Driver");	
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");
        st=con.createStatement();
        String run="select * from product where categoryid="+2+"";
        rs=st.executeQuery(run);
%>
    <div class="col-md-12">
<%
        while(rs.next()){
            int id=rs.getInt(1);
            String pname=rs.getString(3);
            int quantity=rs.getInt(4);
            int value=rs.getInt(5);
%>
    <div class="col-md-4">
    <div class="product">
        <img src="img/new-product.jpg" alt="new product" style="width:100%">
        <h3><strong><%=pname%></strong></h3>
        <p class="uv"><strong>Unit Available:</strong> <%=rs.getInt(4)%></p>
        <p class="uv"><strong>Value/Unit:</strong> <%=rs.getInt(5)%></p>
        <a href="addcart.jsp?id=<%=id%>&pname=<%=pname%>&quantity=<%=quantity%>&value=<%=value%>"id="hovbut"><strong><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>&nbsp;&nbsp;ADD TO CART</strong></a>
    </div>
    </div>
<%			
        }
%>
    </div>
<%
    }catch(Exception e){
        out.println(e.toString());
    }
%>         
</form>                                           