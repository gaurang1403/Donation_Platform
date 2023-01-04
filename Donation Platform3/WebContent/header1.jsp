<%@page import="com.model.SignupModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Brass Product Management System</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<!-- fevicon -->
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

<!-- ------------------------chnage in template------------------------------- -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/web.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<style type="text/css">
.swd-button {
	background: #f2db18;
	border: 1px solid white;
	border-radius: 5px;
	color: white;
	display: inline-block;
	font: bold 12px Arial, Helvetica, sans-serif;
	padding: 10px 15px;
	text-decoration: none;
	text-transform: uppercase;
	margin-top: 15px;
}
a:hover {
	
		
	
}

/* .container {
	position: relative;
	width: 50%;
}

.image {
	display: block;
	width: 100%;
	height: auto;
}

.overlay {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	height: 100%;
	width: 100%;
	opacity: 0;
	transition: .5s ease;
	background-color: #008CBA;
}

.container:hover .overlay {
	opacity: 1;
}

.text {
	color: white;
	font-size: 20px;
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	text-align: center;
} */
</style>


</head>
<!-- body -->

<body class="main-layout">
	<!-- loader  -->
	<div class="loader_bg">
		<div class="loader">
			<img src="images/loading.gif" alt="#" />
		</div>
	</div>
	<!-- end loader -->
	<!-- header -->
	<header>
		<!-- header inner -->
		<div class="header">
			
			</div>
			<div class="header_bo" style="height: 70px;">
				<div class="container">
					<div class="row">
						<div class="col-md-9 col-sm-7">
							<nav class="navigation navbar navbar-expand-md navbar-dark ">
								<button class="navbar-toggler" type="button"
									data-toggle="collapse" data-target="#navbarsExample04"
									aria-controls="navbarsExample04" aria-expanded="false"
									aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbarsExample04">
									<ul class="navbar-nav mr-auto">

										
										<li class="nav-item active"><a class="nav-link"
											href="#"> Home </a></li>
									

										<li class="nav-item"><a class="nav-link" href="admincartview.jsp">cart</a></li>
										
											<li class="nav-item"><a class="nav-link" href="adminwishlist.jsp">WishList</a></li>

										<!-- <li class="nav-item "><a class="nav-link"
											href="about.jsp">about</a></li>
 -->
										<li class="nav-item"><a class="nav-link"
											href="product1.jsp">product</a></li>


										<li class="nav-item"><a class="nav-link"
											href="viewcontact.jsp"> contact us </a></li>
									</ul>
								</div>
							</nav>
						</div>
						

						<div class="col-md-3 col-sm-5 d_none">
						
							
							
							<%
									if (session.getAttribute("webwing") == null) 
									{
							%>
							
							<a href="adminlogin.jsp"><input class="swd-button" type="submit" value="Sign In"></a> 
							
							
							
							<%
							}
							else
							{
								
							
							%>
							
							<a href="adminlogout.jsp"><input class="swd-button" type="submit" value="Logout"></a> 
							<%
							
							}
							%>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- end header inner -->
	<!-- end header -->
	<!-- banner -->