<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Option | GeM </title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
<style>
    #hoverbutton{background-color:navy; color:white; font-family: "proxima nova"; font-weight:100; font-size:15px; border-radius:8px; -webkit-transition-duration:100ms; -moz-transition-duration:100ms; transition-duration:100ms;}
    #hoverbutton:hover{text-decoration:none; background-color:orange; color:white;}
</style>
<script languge="javascript">
    function func(){
        var x = document.f.r1.value;
        if(x===1){
            document.f.a.value=1;
        }
        if(x===2){
            document.f.a.value=2;
        }
        if(x===3){
            document.f.a.value=3;
        }
        if(x===4){
            document.f.a.value=4;
        }
    }
</script> 
</head>
<body>
    <jsp:include page="headerbuyer.jsp"/>
<br><br>
<div class="container-fluid">
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <h3 style="text-align:center"><strong><u>Payment Details</u></strong></h3><br /><br />
<form action="" method="post">
<table class="table table-borderless">
    <tr>
        <td colspan="2"><strong>Select Payment Option</strong></td>
        <td>
            <select name='category'class="form-control">
                <option value="1"class="form-control">PMFS(Public Financial Payment System)</option>
                <option value="2"class="form-control">Internet Banking</option>
                <option value="3"class="form-control">Others(Cheque,NEFT,RTGS)</option>
                <option value="4"class="form-control">SGPA:GEM Pool Account </option>
            </select>
        </td>
    </tr>
    <tr>
        <td colspan="2"></td><td><br /><button type="submit" class="btn btn-block" name="b1" id="hoverbutton"><strong>Proceed</strong></button></td>
    </tr>    
</table>
<%
    if(request.getParameter("b1")!=null){
        String payid=request.getParameter("category");
        session.setAttribute("payid",payid);
        response.sendRedirect("chooselocation.jsp");
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