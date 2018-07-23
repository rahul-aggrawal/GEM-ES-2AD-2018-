<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="bootstrap/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
<style type="text/css">
body{text-decoration:none;}

#about{background-color:whitesmoke;}
#aboutcn{color:black;}
#aboutcn:hover{color:orange;text-decoration:none;}
footer{color:white; background-color:navy;}
#aboutdn{color:white;text-decoration:none;}

#sicon{color:navy; background-color:white; height:30px; width:30px; border-radius:50px; padding:6px 4px}

#scroll {position:fixed; right:40px; bottom:90px; height:50px; width:50px; background-color:white; border:1px solid black; border-radius:50px; -webkit-border-radius:50px; -moz-border-radius:50px; }
#scroll span {position:absolute; top:50%; left:50%; margin-left:-8px; margin-top:-13px; border:8px solid transparent; border-bottom-color:orange; }
#scroll:hover {box-shadow:0 0 30px black; opacity:1; filter:"alpha(opacity=100)"; -ms-filter:"alpha(opacity=100)"; }	
</style>
</head>
<body data-spy="scroll">
<!--footer-->
<div class="container-fluid">
<div class="row content">
    <div class="col-md-12 text-center" id="about"><br />
    <ul class="list-unstyled list-inline"><br />
        <li><a href="#" id="aboutcn">Training</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutcn">Forums</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutcn">Gallery</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutcn">FAQs</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutcn">Resources</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutcn">About Us</a></li>&nbsp;&nbsp;|&nbsp;&nbsp;
        <li><a href="#" id="aboutcn">MOUs</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutcn">Statistics</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutcn">Contact Us</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutcn">Careers</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutcn">RTI</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutcn">Testimonials</a></li>
    </ul>
    </div>
<footer class="container-fluid">
    <div class="col-md-12 text-center">
    <ul class="list-unstyled list-inline"><br />
        <li><a href="#" id="aboutdn">Privacy Policy</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutdn">Terms of Use</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutdn">Copyright</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutdn">Return</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutdn">Disclaimer</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutdn">Incident Management</a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutdn">Caution Notice</a></li>&nbsp;&nbsp;
    </ul><br />
    </div>
    <div class="col-md-3 text-center"><p>&copy; 2018 GeM All rights reserved</p></div>
    <div class="col-md-6 text-center">
    <ul class="list-unstyled list-inline">
        <li><a href="#" id="aboutdn"><img src="img/comodo_secure_seal.png" class="img-responsive" alt="comodo_secure_seal" /></a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutdn"><img src="img/dept-commerce.png" class="img-responsive" alt="dept-commerce" /></a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutdn"><img src="img/gem-spv.png" class="img-responsive" alt="gem-spv" /></a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutdn"><img src="img/digital-india.png" class="img-responsive" alt="digital-india" /></a></li>&nbsp;&nbsp;
        <li><a href="#" id="aboutdn"><img src="img/makeinindia.png" class="img-responsive" alt="makeinindia" /></a></li>&nbsp;&nbsp;
    </ul>
    </div>
    <div class="col-md-3 text-center">
    <ul class="list-unstyled list-inline"><br />
        <li id="sicon"><a href="https://twitter.com/strangertv01" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>&nbsp;
        <li id="sicon"><a href="https://www.facebook.com/strangertv1/" target="_blank"><i class="fa fa-facebook-official" aria-hidden="true"></i></a></li>&nbsp;
        <li id="sicon"><a href="https://www.youtube.com/channel/UCNUMZW0fgIO1gdMcDTUHUZw" target="_blank"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>&nbsp;
        <li id="sicon"><a href="https://www.instagram.com/stranger_tv_" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>&nbsp;
        <li id="sicon"><a href="https://plus.google.com/u/0/" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>&nbsp;
        <li id="sicon"><a href="mailto:strengertv@gmail.com"><i class="fa fa-envelope" aria-hidden="true"></i></a></li>&nbsp;
    </ul>
    </div>
    <div class="col-md-12 text-center"><p>Site operated and maintained by Managed Service Provider</p></div>
</footer>
</div>
</div>
<!--Go to top of page-->
    <a href=" " title="Go To Top" id="scroll" style="display:none;"><span></span></a>
<script type="text/javascript">
$(document).ready(function(){
    $(window).scroll(function(){
        if ($(this).scrollTop() > 100){
            $('#scroll').fadeIn();
        }else { $('#scroll').fadeOut(); 
        }
    });
    $('#scroll').click(function(){
        $("html,body").animate({scrollTop:0},600); return false;
    });
});
</script>
</body>
</html>