<%@page import="com.dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <jsp:useBean id="m" class="com.model.SignupModel"></jsp:useBean>
     <jsp:setProperty property="*" name="m" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

int status=WebDao.RegisterCoustomer(m);
if(status>0)
{
	//out.print("success");
	response.sendRedirect("login.jsp");
	
}
else
{
	response.sendRedirect("404.html");
}

%>

</body>
</html>