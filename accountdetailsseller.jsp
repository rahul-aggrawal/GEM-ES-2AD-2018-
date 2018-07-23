<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<jsp:useBean   id="connobj"  class="dboperation.dbconnect"/>
<h3 style="text-align:left"><strong><u>Account Details</u></strong></h3><br /><br />
    <%
        Connection con=connobj.getConnect();
        Statement st=con.createStatement();
        String userid=(String)session.getAttribute("userid");
        String sql="select mobile,firstname,lastname from seller where userid='"+userid+"'";
        ResultSet rs=st.executeQuery(sql);
   
    if(rs.next())
    {
         %>
                                            <table class="table table-borderless">
						<tr>
                                                    <td>First Name</td><td><input type="text" class="form-control"readonly="readonly"value="<%=rs.getString(2)%>"/></td>
                                                </tr>    
						<tr>
                                                    <td>Last Name</td><td><input type="text" class="form-control"readonly="readonly"value="<%=rs.getString(3)%>"/></td>
                                                </tr>    
						<tr>
                                                    <td>Mobile</td><td><input type="text"class="form-control"readonly="readonly"value="<%=rs.getInt(1)%>"/></td>
                                                </tr>    
                                            </table>
    <%}%>                                            

