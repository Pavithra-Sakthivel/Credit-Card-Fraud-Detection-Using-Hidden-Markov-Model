
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.swing.JOptionPane"%>
<!DOCTYPE html>
<html>
<head>
<title>Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Login :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<style>
    
table{
     box-shadow: 0 19px 18px 0 rgba(0,0,0,0.8);
}
      table, th, td {
         
    border: 1px solid #fe9126;
    border-collapse: collapse;
}
th, td {
    text-align: center;
    padding: 15px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color: #fff;
}
table#t01 th {
    background-color: #fe9126;
    color: white;
    font-family: times;
    font-size:20px;
}
</style>
</head>
	
<body>
<!-- header -->
	

	<div class="logo_products">
		<div class="container">
		
			<div class="w3ls_logo_products_left">
				<h1><a href="index.jsp">Online Store</a></h1>
			</div>
		<div class="w3l_search">
			<form action="#" method="post">
				<input type="search" name="Search" placeholder="Search for a Product..." required="">
				<button type="submit" class="btn btn-default search" aria-label="Left Align">
					<i class="fa fa-search" aria-hidden="true"> </i>
				</button>
				<div class="clearfix"></div>
			</form>
		</div>
			
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- navigation -->
	<div class="navigation-agileits">
		<div class="container">
			<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header nav_2">
								<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div> 
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav" style="float: right">
                                                                                                                <li class="active"><a href="user.jsp" class="act">Home</a></li>	
									<!-- Mega Menu -->
									
									
                                                                                                                <li><a href="viewproduct.jsp">View Product</a></li>
                                                                                                                <li><a href="viewcardlist.jsp">Cart List</a></li>
                                                                                                                <li><a href="purchaselist.jsp">Purchase List</a></li>
                                                                                                                <li><a href="index.jsp">Logout</a></li>
                                                                                                        </ul>
							</div>
							</nav>
			</div>
		</div>
		
<!-- //navigation -->

<%
int total=0;
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credit card fraud","root","admin");
    Statement s=con.createStatement();
    
    ResultSet ss=s.executeQuery("select * from cartlist where email='"+(""+session.getAttribute("email"))+"'");
    while(ss.next())
    {
        int qty=Integer.parseInt(ss.getString("qty"));
                          int price=Integer.parseInt(ss.getString("price"));
                          total+=qty*price;
    }
//    JOptionPane.showMessageDialog(null, total);
}catch(Exception e)
{
    JOptionPane.showMessageDialog(null, e);
}

%>
    

<!-- breadcrumbs -->
<div style="background-image:url(images/11_1.jpg);height: 600px;width: 100%;padding-top: 50px;">
<div style="margin-left: 400px;width: 500px;background-color: white;height: 330px;padding-top: 10px;">
    
    <h1 style="font-family: times;font-size: 50px;color: #ff8100;text-align: center">Make a Payment</h1>
    <form action="otpcheck.jsp" method="post">
        <input type="text" placeholder="Enter Product Name" required=" "  style="outline: none;border: none;border-radius: 7px;font-family: century;margin-top: 10px;margin-left: 50px;width: 350px;height: 35px;padding-left: 18px;" value="<%="Total Amount you have purchased: "+total%>" readonly><br><br>
        <h6 style="font-family: times;font-size: 20px;margin-left: 30px;">Enter Your OTP:&nbsp;&nbsp;</h6><br>
        <input type="text" maxlength="4" placeholder="xxxx" name="email" required=" " style="outline: none;width: 300px;margin-left:90px;padding-left: 20px;height: 35px;" value="<%=(""+session.getAttribute("email"))%>" readonly ><br><br>

					
					<input type="text" placeholder="xxxxxx" name="cvv" required=" " style="width: 300px;margin-left:90px;padding-left: 20px;height: 35px;" >
                                        <input type="submit" value="Submit" style="margin-left: 350px;margin-top: 20px;">
				</form>
    </form>
</div>
        </div>
<!-- //login -->
<!-- //footer -->

<!-- //footer -->	
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- top-header and slider -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script src="js/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action: '#'
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
<!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<link href="css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});
						
			jQuery('#responsive').change(function(){
			  $('#responsive_wrapper').width(jQuery(this).val());
			});
			
		});
</script>	
<!-- //main slider-banner --> 

</body>
</html>