<%@page import="com.dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:useBean id="m" class="com.model.ContactModel"></jsp:useBean>
<jsp:setProperty property="*" name="m" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	response.setHeader("cache-control", "no-cache");
	response.setHeader("cache-control", "no-store");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	%>

	<%
	int status = WebDao.ContactForm(m);

	if (status > 0) {
		response.sendRedirect("index.jsp");
	} else {
		response.sendRedirect("404.html");
	}
	%>

</body>
</html>