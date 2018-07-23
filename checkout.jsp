<%@page contentType="text/html" import="java.sql.*" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean   id="connobj"  class="dboperation.dbconnect"/>
<%
    Connection con=null;
    Statement st;
    Statement stmt;
    ResultSet rs;
    try{
        con=connobj.getConnect();
        st=con.createStatement();
        stmt=con.createStatement();
        String userid=(String)session.getAttribute("userid");
        int locid=Integer.parseInt(request.getParameter("locid"));
        int payid=Integer.parseInt((String)session.getAttribute("payid"));
        String run="select * from cart where buyeruserid='"+userid+"'";
        rs=st.executeQuery(run);
        Integer hitsCount = (Integer)application.getAttribute("hitCounter");
        if( hitsCount ==null || hitsCount == 0 ){
            hitsCount = 1;
        }else{
            hitsCount += 1;
        }
        while(rs.next()){
            String sellerid=rs.getString(2);
            int productid=rs.getInt(3);
            String pname=rs.getString(4);
            int quantity=rs.getInt(5);
            int value=rs.getInt(6);
            int total=rs.getInt(7);
            String mop=rs.getString(8);
            String temp="insert into orders (orderid,buyeruserid,selleruserid,productid,productname,quantity,value,total,purchasemode,locationid,paymentid) values("+hitsCount+",'"+userid+"','"+sellerid+"',"+productid+",'"+pname+"',"+quantity+","+value+","+total+",'"+mop+"',"+locid+","+payid+")";
            int r=stmt.executeUpdate(temp);
        }
        run="delete from cart where buyeruserid='"+userid+"'";
        int ts=st.executeUpdate(run);
        session.setAttribute("ordered", true);
        application.setAttribute("hitCounter", hitsCount);
        response.sendRedirect("buyerhomepage.jsp");
    }catch(Exception e){
        out.println(e.toString());
    }
%>