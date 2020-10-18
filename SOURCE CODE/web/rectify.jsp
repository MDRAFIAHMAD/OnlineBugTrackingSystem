<%@page import="java.sql.Connection"%>
<%@page import="action.Dbcon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Rectify</title>
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
                                                    <li><a href="dhome.jsp">Home</a></li>
                                                    <li><a href="Bug_Tkt.jsp">Bug Inbox</a></li>
                                                    <li class="active"><a href="Bug_Tkt.jsp?Please_Update_Triage">Rectification Status</a></li>
                                                    <li><a href="index.jsp">Logout</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <center><h1 class="brand" style="margin-left: -30px;color: white;font-size: 30px">Online Bug Tracking System</h1></center> </article>
                        </div>
                    </div>
                </div>
            </header>
            <!--content-->
            <div class="container padBot" style="height: 600px;background-image: url('img/bgall2.jpg')"><br><br>
                <div class="row" style="margin-left: 20px">
                    <article class="span4" style="color: white;">
                        <h5>Actions</h5>

                        <ol class="list1">
                            <li><a href="dhome.jsp">Home</a></li>
                            <li><a href="Bug_Tkt.jsp">Bug Inbox</a></li>
                            <li class="active"><a href="#">Rectification Status</a></li>
                            <li><a href="index.jsp">Logout</a></li>
                        </ol>
                    </article>
                    
                    <style>
                        label{
                        font-family: monospace;
                        color: white;
                        font-weight: 25px;
                        }
                    </style>

                    <%
                        String query = request.getQueryString();
                        String new1 = query.replace("%20", " ");
                        String am = null;
                        String ar[] = new1.split(",");
                        String id = ar[0];
                        String sumy = ar[1];
                        String plat = ar[2];
                    %>

                    <article class="span8 about-box" style="margin-left: 450px;margin-top: -200px">
                        <h5 style="margin-left: -25px">Rectification Status</h5>

                        <form action="updatestatus" method="post">
                            <fieldset>
                                <div class="form-div-1">
                                    <label>Bug ID</label>
                                    <input type="text" value="<%=id%>" name="id">
                                    <br>
                                </div>
                                <div class="form-div-1">
                                    <label>Bug Summary</label>
                                    <input type="text" value="<%=sumy%>" name="sum">
                                    <br>
                                </div>
                                <div class="form-div-2">
                                    <label>Platform</label>
                                    <input type="text" value="<%=plat%>" name="product">
                                    <br>
                                </div>
                                <div class="form-div-3">
                                    <label>Status</label>
                                    <select name="status" style="margin-top: 0px;">
                                        <option value="-1">Select Status</option>
                                        <option value="Rectified">Rectified</option>
                                        <option value="Not Rectified">Not Rectified</option>
                                        <option value="Pending">Pending</option>
                                    </select><br>
                                </div>
                            </fieldset>
                            <input type="submit" value="" class="btn btn-primary btn2" style="margin-left: 73px;width: 95px;background-image: url('img/sub.png')"/>
                        </form>
                    </article>
                </div>
            </div>
            <div hidden class="met">Web Development: <a class="cop" href="http://www.metamorphozis.com">Free html5 Templates</a></div>
        </div>
        <!--footer-->
        <footer>
            <div class="container">
                <div class="row">
                    <article class="span12">
                        <div class="row">
                            <nav class="span6">
                                <ul>
                                    <li><a href="index.html">home</a></li>
                                    <li class="active"><a href="about.html">about us</a></li>
                                    <li><a href="products.html">products</a></li>
                                    <li><a href="services.html">services</a></li>
                                    <li><a href="contact.html">contacts</a></li>
                                </ul>
                            </nav>
                            <div class="span3 offset3">
                                <p>Company Name Here &copy; 2014 &bull; </p>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </footer>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script>
            $('.thumbnail figure a').hover(function() {
                $(this).stop().animate({opacity: 0.7}, 350, "easeOutSine");
            }, function() {
                $(this).stop().animate({opacity: 1}, 350, "easeOutSine");
            })
            $('.list1 li a').hover(function() {
                $(this).parent('li').stop().css({'color': '#6b9157'});
                $(this).stop().css({'color': '#6b9157'});
            }, function() {
                $(this).parent('li').stop().css({'color': '#de592f'});
                $(this).stop().css({'color': '#de592f'});
            })
        </script>
    </body>

</html>