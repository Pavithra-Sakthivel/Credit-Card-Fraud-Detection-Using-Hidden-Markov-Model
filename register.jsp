
<!DOCTYPE html>
<html>
<head>
<title> Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Registered :: w3layouts</title>
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
    a :hover
    {
        color: white;
        /*font-weight: 600;*/
    }
</style>
</head>
	
<body>
<!-- header -->
	

	<div class="logo_products">
		<div class="container">
		
			<div class="w3ls_logo_products_left">
				<h1><a href="index.html">Online Store</a></h1>
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
									<li class="active"><a href="index.jsp" class="act">Home</a></li>	
									<!-- Mega Menu -->
									
									<li><a href="userlogin.jsp">User Login</a></li>
								</ul>
							</div>
							</nav>
			</div>
		</div>
		
<!-- //navigation -->
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Register Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- register -->
	<div class="register" style="margin-top: -140px;">
		<div class="container">
			<h2>Enter Card Details</h2>
                        <div class="login-form-grids" style="margin-left: -40px">
				<h5>Enter CREDIT CARD NUMBER</h5>
				<form action="registercheck.jsp" method="post">
                                    <input type="hidden" name="fname" value="<%=request.getParameter("fname")%>">
                                    <input type="hidden" name="lname" value="<%=request.getParameter("lname")%>">
                                    <input type="hidden" name="email" value="<%=request.getParameter("email")%>">
                                    <input type="hidden" name="mno" value="<%=request.getParameter("mno")%>">
                                    <input type="hidden" name="psw" value="<%=request.getParameter("psw")%>">
                                    <input type="text" maxlength="4" placeholder="xxxx" name="atm1" required=" " style="width: 80px;" >
					<input type="text" maxlength="4" placeholder="xxxx" name="atm2" required=" " style="width: 80px;margin-left: 83px;margin-top: -42px;" >
                                        <input type="text" maxlength="4" placeholder="xxxx"  name="atm3" required=" " style="width: 80px;margin-left: 167px;margin-top: -42px;" >
					<input type="text" maxlength="4" placeholder="xxxx"  name="atm4" required=" " style="width: 80px;margin-left: 250px;margin-top: -42px;" >
                                        <h6>Enter CVV &nbsp;&nbsp;<p style="color: red;margin-left: 124px;margin-top: -17px; " >Set the Steganography pin</p></h6>
					<input type="text" maxlength="3" placeholder="xxx" name="cvv" required=" " style="width: 80px;" >
                                        <input type="text" maxlength="2" name="stg1" id="stg1" style="color: black;font-family: time;width: 43px;margin-top: -42px;margin-left: 130px;"  required>
                                        <input type="text" maxlength="2" name="stg2" id="stg2" style="color: black;font-family: time;width: 43px;margin-top: -42px;margin-left: 183px;"  required>
                                        <input type="text" maxlength="2" name="stg3" id="stg3" style="color: black;font-family: time;width: 43px;margin-top: -42px;margin-left: 235px;"  required>
                                        <input type="text" maxlength="2" name="stg4" id="stg4" style="color: black;font-family: time;width: 43px;margin-top: -42px;margin-left: 288px;"  required>
                                        <input type="submit" value="Submit" style="margin-left: 550px;margin-top: 50px;">
				</form>
			</div>
			
		</div>
	</div>

<div style="float: left;margin-top: -600px;margin-left: 556px;">
    <%
    for(int i=0;i<25;i++)
    {
    if(i%5!=0){
    %>
    <a href="#" > <div style="border-radius: 7px;margin-left: 10px;width: 60px;height: 60px;float: left;background-color: #3399ccc4;box-shadow: 0px 1px 8px 1px #00c4ffa6;padding: 20px 0px 0px 20px" onclick="select('<%=(i+1)%>')">
        <h1 style="font-family: times;font-size: 18px;"><%=i+1%> </h1>  
        
        </div></a>
    <% }else{%>
    <br><br><br><a href="#"><div style="border-radius: 7px;margin-left: 10px;width: 60px;height: 60px;float: left;background-color: #3399ccc4;box-shadow: 0px 1px 8px 1px #00c4ffa6;padding: 20px 0px 0px 20px" onclick="select('<%=(i+1)%>')">
        
       <h1 style="font-family: times;font-size: 18px;"><%=i+1%> </h1>  
        
        </div></a>
   <% }
    }
    %>
</div>


       <div style="margin-left: 1033px;margin-top: -586px;">
           <img src=""  id="img1" width="70" height="70"><br><br><br>
           <img src=""  id="img2" width="70" height="70"><br><br><br>
           <img src=""  id="img3" width="70" height="70"><br><br><br>
           <img src=""  id="img4" width="70" height="70">
    
       </div>
<script>
    c=1;
    function select($id)
    {
        if(c<=4)
        {   
            $('#img'+c).show();
//            alert('img'+c+' images/animals/'+$id+'.jpg');
            $('#img'+c).attr('src','images/animals/'+$id+'.jpg');
            $('#stg'+c).val($id);
            c++;
        }else
        {
            alert('Enter only 4 digits');
        }
       
    }

</script>
<!-- top-header and slider -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
                    $('#img1').hide();
                    $('#img2').hide();
                    $('#img3').hide();
                    $('#img4').hide();
                    $('#stg').val('Set the stegano pin')
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