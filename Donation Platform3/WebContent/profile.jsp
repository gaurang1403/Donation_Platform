<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<jsp:include page="header.jsp"></jsp:include>
<body>


	<%
	response.setHeader("cache-control", "no-cache");
	response.setHeader("cache-control", "no-store");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	%>


	<%
	session.getAttribute("myemail");
	session.getAttribute("myemail2");
	session.getAttribute("myemail3");
	/*    session.removeValue("myemail"); */

	if (session.getAttribute("myemail") != null) {

		//out.print("welcomes : your email is :-" + session.getAttribute("myemail"));
	
	

	} else {
		response.sendRedirect("login.jsp");
	}
	%>








	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>