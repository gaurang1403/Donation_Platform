<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/signup.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	
	<%
	response.setHeader("cache-control", "no-cache");
	response.setHeader("cache-control", "no-store");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	%>
	


	<div class="card bg-light">
		<article class="card-body mx-auto" style="max-width: 400px;">
		<h4 class="card-title mt-3 text-center">Login</h4>
		<p class="text-center">Get started with your free account</p>
		<p>
			<a href="" class="btn btn-block btn-twitter"> <i
				class="fab fa-twitter"></i> Login via Twitter
			</a> <a href="" class="btn btn-block btn-facebook"> <i
				class="fab fa-facebook-f"></i>  Login via facebook
			</a>
		</p>
		<p class="divider-text">
			<span class="bg-light">OR</span>
		</p>
		<form action="logincustomer.jsp">

			<!-- form-group// -->
			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-envelope"></i>
					</span>
				</div>
				<input name="email" class="form-control" placeholder="Email address"
					type="email">
			</div>

			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-lock"></i>
					</span>
				</div>
				<input name="password" class="form-control"
					placeholder="Enter password" type="password">

			</div>

			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-block">
					Login</button>
			</div>
	</div>


	<!-- form-group// -->


	<!-- form-group// -->
	<div>
		<p class="text-center">
			Have an account? <a href="login.jsp">Log In</a>
		</p>
		</form>
		</article>
	</div>
	<!-- card.// -->



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>