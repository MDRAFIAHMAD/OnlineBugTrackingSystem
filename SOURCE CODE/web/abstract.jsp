<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Online Bug Tracking System</title>
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
        <link rel="stylesheet" href="css/camera.css">
        <!--JS-->
        <script src="js/jquery.js"></script>
        <script src="js/jquery-migrate-1.1.1.js"></script>
        <script src="js/superfish.js"></script>
        <script src="js/jquery.mobilemenu.js"></script>
        <script src="js/jquery.cookie.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.ui.totop.js"></script>
        <script src="js/jquery.equalheights.js"></script>
        <script src="js/camera.js"></script>
        <script src="js/jquery.touchSwipe.min.js"></script>
        <script>
            $(document).ready(function() {
                jQuery('.camera_wrap').camera();
            });
        </script>
        <script src="js/jquery.mobile.customized.min.js"></script>
    </head>
    <body>
        <div class="global">
            <!--header-->
            <header>
                <div>
                    <div class="container">
                        <div class="row">
                            <article class="span12">
                                <div class="navbar navbar_ clearfix">
                                    <div class="navbar-inner">      
                                        <div class="clearfix">
                                            <div class="nav-collapse nav-collapse_">
                                                <ul class="nav sf-menu clearfix">
                                                    <li><a href="index.jsp">Home</a></li>
                                                    <li class="active"><a href="abstract.jsp">Abstract</a></li>
                                                    <li><a href="alogin.jsp">Manager</a></li>
                                                    <li><a href="dlogin.jsp">Dev Login</a></li>
                                                    <li><a href="tpalogin.jsp">TL Login</a></li>
                                                    <li><a href="contact.html">Registration</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <br><br><h1 style="margin-left: 10px" class="brand"><a href=""></a></h1>
                        </div>
                    </div>
                </div>
            </header>
            <section class="slider">
                <div class="camera_wrap">
                    <div data-src="img/picture1.jpg"><div class="camera-caption fadeIn"><p class="title1">Online Bug Tracking System</p><br><a href="#">View More</a></div></div>
                    <div data-src="img/picture2.jpg"><div class="camera-caption fadeIn"><p class="title1">Online Bug Tracking System</p><br><a href="#">View More</a></div></div>
                </div>
            </section>
            <!--content-->
            <section class="container padBot">
                <div class="row">
                    <br><br>
                    <article class="span12">
                        <style>
                            h4{
                                color: cornflowerblue;
                            }
                        </style>
                        <div class="row">
                            <ul class="banners">
                                <h2>Abstract</h2><br>
                        <h3 style="text-align: justify;color: white">Software companies spend over 45 percent of cost in dealing with software bugs. An inevitable step of fixing bugs is bug
                            triage, which aims to correctly assign a developer to a new bug. To decrease the time cost in manual work, text classification techniques
                            are applied to conduct automatic bug triage. In this paper, we address the problem of data reduction for bug triage, i.e., how to reduce the
                            scale and improve the quality of bug data. We combine instance selection with feature selection to simultaneously reduce data scale on
                            the bug dimension and the word dimension. To determine the order of applying instance selection and feature selection, we extract
                            attributes from historical bug data sets and build a predictive model for a new bug data set. We empirically investigate the performance of
                            data reduction on totally 600,000 bug reports of two large open source projects, namely Eclipse and Mozilla. The results show that our
                            data reduction can effectively reduce the data scale and improve the accuracy of bug triage. Our work provides an approach to leveraging
                            techniques on data processing to form reduced and high-quality bug data in software development and maintenance.</h3>
                            </ul>
                        </div>
                    </article>


                </div> 
            </section><div hidden class="met"> Web Development: <a class="cop" href="http://www.metamorphozis.com"></a></div> 
        </div>

        <!--footer-->
        <footer>
            <div class="container">
                <div class="row">
                    <article class="span12">
                        <div class="row">
                            <nav class="span6">
                                <ul>
                                    <li><a href="index.jsp">Home</a></li>
                                                    <li class="active"><a href="abstract.jsp">Abstract</a></li>
                                                    <li><a href="alogin.jsp">Manager</a></li>
                                                    <li><a href="dlogin.jsp">Dev Login</a></li>
                                                    <li><a href="tpalogin.jsp">TL Login</a></li>
                                                    <li><a href="contact.html">Registration</a></li>
                                </ul>
                            </nav>
                            <div class="span3 offset3">
                                <p>Copyright @ Registered</p>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </footer>
        <script type="text/javascript" src="js/bootstrap.js"></script>
    </body>
</html>