<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    #hoverbutton{color:black; font-family: "proxima nova"; font-weight:100; font-size:15px; border-radius:8px; -webkit-transition-duration:100ms; -moz-transition-duration:100ms; transition-duration:100ms;}
    #hoverbutton:hover{text-decoration:none; background-color:orange; color:white;}
</style>
<script language="javascript">
    var xmlHttp  
    var xmlHttp
    function showState(str)
    {
        if (typeof XMLHttpRequest != "undefined")
        {
            xmlHttp= new XMLHttpRequest();
        }
        else if (window.ActiveXObject)
        {
            xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
        }
        if (xmlHttp==null)
        {
            alert("Browser does not support XMLHTTP Request")
            return;
        }    
        var url="district.jsp";
        url +="?count=" +str;
        xmlHttp.onreadystatechange = stateChange;
        xmlHttp.open("GET", url, true);
        xmlHttp.send(null);
    }
    function stateChange()
    {   
        if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
        {   
            document.getElementById("district").innerHTML=xmlHttp.responseText   
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
      var url="pincode.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange1;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }
      function stateChange1(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("pincode").innerHTML=xmlHttp.responseText   
      }   
      }
    
</script> 
    <jsp:useBean   id="connobj"  class="dboperation.dbconnect"/>
    <h3 style="text-align:left"><strong><u>Add Location</u></strong></h3><br /><br />
<form name="f" action="" method="post">
<table class="table table-borderless">
    <tr>
        <td>State</td>
        <td>
        <select name='state' onchange="showState(this.value)"class="form-control">  
            <option value="none">Select</option>  
<%
                            Class.forName("com.mysql.jdbc.Driver").newInstance();  
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");  
                            Statement stmt = con.createStatement();  
                            ResultSet ms = stmt.executeQuery("Select * from state");
                            while(ms.next()){
                        %>
            <option value="<%=ms.getString(1)%>"class="form-control"><%=ms.getString(2)%></option>  
<%
    }
%>
        </select>  
        </td>
    </tr>
    <tr>
        <td>District</td>
        <td>
        <div id='district'>  
        <select name='district'class="form-control" >  
            <option value='-1'></option>  
        </select>  
        </div>  
        </td>
    </tr>
    <tr>
        <td>Pincode</td><td>
        <div id='pincode'>  
        <select name='pincode'class="form-control" >  
            <option value='-1'></option>  
        </select>  
        </div>
        </td>
    </tr>
    <tr>
        <td>Street Address</td><td><input type="textarea" rows="4" cols="50" class="form-control" required name="sa"/></td>
    </tr>
    <tr>
        <td>Contact No(Office)</td><td><input type="text" class="form-control"required name="co"/></td>
    </tr>
    <tr>
        <td></td><td><button type="submit" class="btn btn-block" name="b2" id="hoverbutton">Save Location</button></td>
    </tr>
</table>
<%
        Statement st=null;
        ResultSet rs=null;
        ResultSet r1=null;
        ResultSet r2=null;
        ResultSet r3=null;
        String s3="";
        String s4="";
        String s5="";
        if(request.getParameter("b2")!=null)
        {
            try
            {
                String userid=(String)session.getAttribute("userid");
                int stateid=Integer.parseInt(request.getParameter("state"));
                int districtid=Integer.parseInt(request.getParameter("district"));
                int pincodeid=Integer.parseInt(request.getParameter("pincode"));
                String streetaddress=request.getParameter("sa");
                String contactoffice=request.getParameter("co");
                Class.forName("com.mysql.jdbc.Driver");	
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gem","root","");
                st=con.createStatement();
                r1=st.executeQuery("select state from state where stateid="+stateid+"");
                if(r1.next())
                {
                    s3=r1.getString(1);
                }
                r2=st.executeQuery("select district from district where districtid="+districtid+"");
                if(r2.next())
                {
                     s4=r2.getString(1);
                } 
                r3=st.executeQuery("select pincode from pincode where pincodeid="+pincodeid+"");
                if(r3.next())
                {
                     s5=r3.getString(1);
                } 
                String run="insert into location (userid,state,district,pincode,streetaddress,contactoffice) values('"+userid+"','"+s3+"','"+s4+"','"+s5+"','"+streetaddress+"','"+contactoffice+"')";
                int res=st.executeUpdate(run);
                if(res!=0)
                {
                    out.println("<script>alert('location added successfully')</script>");
                }    
            }catch(Exception e)
            {
                out.println(e.toString());
            }    
        }
    %>
</form>