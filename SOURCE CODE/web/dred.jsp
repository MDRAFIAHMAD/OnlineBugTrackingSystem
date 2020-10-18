<!DOCTYPE html>
<html lang="en">

<head>
<title>TL Reduction</title>
<meta charset="utf-8">

<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<meta name = "format-detection" content = "telephone=no" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<!--CSS-->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="css/touchTouch.css">
 <!--JS-->   
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/touchTouch.jquery.js"></script>
<script>
   $(window).load(function() {
     // Initialize the gallery
    $('.thumb-pad5 figure a').touchTouch();
  });
</script>
</head>
<body>
<div class="global">
<header class="margBot1 margBrand">
    <div class="bg">
        <div class="container">
            <div class="row">
                <article class="span12">
                    <div class="navbar navbar_ clearfix marg">
                        <div class="navbar-inner">      
                            <div class="clearfix">
                                <div class="nav-collapse nav-collapse_">
                                    <ul class="nav sf-menu clearfix">
                                        <li class="active"><a href="thome.jsp">Home</a></li>
                                        <li><a href="affix.jsp">Affix New Bug</a></li>
                                        <li><a href="buganalyse.jsp">Analyse Bug Report</a></li>
                                        <li><a href="dred.jsp">Data Reduction FS</a></li>
                                        <li><a href="ired.jsp">Data Reduction IS</a></li>
                                        <li><a href="index.jsp">Logout</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <center><h1 class="brand" style="margin-left: -30px;color: white;font-size: 30px">Online Bug Tracking System</h1></center></article>
            </div>
        </div>
    </div>
</header>
<!--content-->
<div class="container padBot" style="height: 400px;background-image: url('img/bgall2.jpg')"><br><br>
    <div class="row">
        <article class="span4" style="color: white">
            <h5 style="color: white;">Actions</h5>
            <ol class="list1">
                <li><a href="thome.jsp">Home</a></li>
                <li><a href="affix.jsp">Affix New Bug</a></li>
                <li><a href="buganalyse.jsp">Analyse Bug Report</a></li>
                <li><a href="dred.jsp">Data Reduction FS</a></li>
                <li><a href="ired.jsp">Data Reduction IS</a></li>
                <li><a href="index.jsp">Logout</a></li>
            </ol>
        </article>
        <article class="span8 about-box">
            <h5 style="color: white;margin-top: 10px;margin-left: -80px">Data Reduction based on Instance Selection</h5>

            <br><form action="search.jsp" method="get" style="margin-left: 80px">
                
                <input type="text" placeholder="Related bug summary to search" name="search"><br><br>
                <input style="margin-left: 50px;border-radius: 3px;width: 120px" type="submit" value="Check">
            </form>
                
        </article>
    </div>
</div>
<div hidden class="met"> Web Development: <a class="cop" href="http://www.metamorphozis.com">Free html5 Templates</a></div>
</div>
<!--footer-->
<footer>
    <div class="container">
        <div class="row">
            <article class="span12">
                <div class="row">
                    <nav class="span6">
                        <ul>
                            <li class="active"><a href="thome.jsp">Home</a></li>
                            <li><a href="affix.jsp">Affix New Bug</a></li>
                            <li><a href="buganalyse.jsp">Analyse Bug Report</a></li>
                            <li><a href="dred.jsp">Data Reduction FS</a></li>
                            <li><a href="ired.jsp">Data Reduction IS</a></li>
                            <li><a href="index.jsp">Logout</a></li>
                        </ul>
                    </nav>
                    <div class="span3 offset3">
                        <p>Company Name Here & copy; 2014 &bull; </p>
                    </div>
                </div>
            </article>
        </div>
    </div>
</footer>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>
    $('.thumbnail figure a').hover(function(){
        $(this).stop().animate({opacity:0.7},350, "easeOutSine");		 
            }, function(){
        $(this).stop().animate({opacity:1},350, "easeOutSine");						 
    })
    $('.list1 li a').hover(function(){
        $(this).parent('li').stop().css({'color':'#6b9157'});
        $(this).stop().css({'color':'#6b9157'});	
            }, function(){
        $(this).parent('li').stop().css({'color':'#de592f'});
        $(this).stop().css({'color':'#de592f'});						 
    })
</script>
</body>

</html>