<%@page import="java.sql.*"%>
<%
    String stateid=request.getParameter("count");  
    String buffer="<select name='district'class='form-control' onchange='showCity(this.value);'><option value='-1'>Select</option>";  
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");  
        Statement stmt = con.createStatement();  
        ResultSet rs = stmt.executeQuery("Select * from district where stateid='"+stateid+"' ");  
        while(rs.next()){
            buffer=buffer+"<option value='"+rs.getString(2)+"'>"+rs.getString(3)+"</option>";  
        }  
        buffer=buffer+"</select>";  
        response.getWriter().println(buffer); 
    }catch(Exception e){
        System.out.println(e);
    }
 %>