<%@page import="action.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Manager</title>
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
                                        <li><a href="ahome.jsp">Home</a></li>
                                        <li class="active"><a href="approve.jsp">Recruit Developer</a></li>
                                        <li><a href="trace.jsp">Trace History</a></li>
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
<div class="container padBot" style="height: 400px;background-image: url('img/bgall2.jpg')"><br><br>
   
    <div class="row">
        <article class="span4" style="color: white;margin-left: 50px">
            <ol class="list1">
                <li class="active"><a href="ahome.jsp">Home</a></li>
                <li><a href="approve.jsp">Recruit Developer</a></li>
                <li><a href="trace.jsp">Trace History</a></li>
                <li><a href="index.jsp">Logout</a></li>
            </ol>
        </article>
        <article class="span8 about-box" style="margin-top: -150px">
            <h5 style="margin-left: 450px">Recruit Employee</h5>
                        <table style="margin-left: 160px;width: 1000px">
                            <tr style="border: solid 1px;font-size: 20px;color: white;font-family: monospace;font-weight: bold;">
                                <td style="text-align: center;height: 40px">Id</td>
                                <td style="text-align: center;">Name</td>
                                <td style="text-align: center;">Email</td>
                                <td style="text-align: center;">Domain</td>
                                <td style="text-align: center;">Contact</td>
                                <td style="text-align: center;">Location</td>
                                <td style="text-align: center;">Date Of Joining</td>
                                <td style="text-align: center;">Action</td>
                            </tr>
                            <%
                                String id, name, mail, domain, cont, loc, jn, status= null;
                                String sql = "select * from user";
                                Connection con = Dbcon.getCon();
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                                    id = rs.getString("id");
                                    name = rs.getString("name");
                                    mail = rs.getString("email");
                                    domain = rs.getString("domain");
                                    cont = rs.getString("phone");
                                    loc = rs.getString("loc");
                                    jn = rs.getString("jdt");
                                    status = rs.getString("status");
                            %>
                            <tr style="border: solid 1px;font-size: 15px;color: white;font-family: monospace;font-weight: bold;">
                                <td style="height: 20px;text-align: center"><%=id%></td>
                                <td style="text-align: center" width='10%'><%=name%></td>
                                <td style="text-align: center;" width='-2%'><%=mail%></td>
                                <td style="text-align: center;" width='12%'><%=domain%></td>
                                <td style="text-align: center;" width='12%'><%=cont%></td>
                                <td style="text-align: center;" width='12%'><%=loc%></td>
                                <td style="text-align: center;" width='12%'><%=jn%></td>
                                <td style="text-align: center;"><a style="color: white" href="activate.jsp?<%=id%>"><%=status%></a></td>
                            </tr>
                            <%
                                }
                            %>
                        </table>
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