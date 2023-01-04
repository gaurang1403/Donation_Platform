<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><jsp:include page="header.jsp"></jsp:include>



	<%
	response.setHeader("cache-control", "no-cache");
	response.setHeader("cache-control", "no-store");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	%>



	<%
	session.getAttribute("webwing");
	if (session.getAttribute("webwing")!= null) {
	   
		response.sendRedirect("profile.jsp");
	}
	else
	{
		response.sendRedirect("login.jsp");
	}
	%>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>