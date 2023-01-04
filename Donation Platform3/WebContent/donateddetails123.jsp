<%@page import="com.model.SignupModel"%>
<%@page import="com.dao.WebDao"%>
<%@page import="com.model.DonatenowModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
	
		
		
	/* String email = request.getParameter("email");
	String password = request.getParameter("password"); */
	
	SignupModel m2 =new SignupModel();
	String email = (String)request.getSession().getAttribute("myemail");
	m2.setEmail(email);
	
	List<DonatenowModel> list=WebDao.getdonateddetails(m2);
	request.setAttribute("i",list);
	
	
	%>
	
	
	<br>
	<br>
	<br>
	
	<center>
		<table border="1" width="50%" style="background-color:#FFFFE0;">
			
				
				<tr><th>Shoes</th><th>Clothes</th><th>Grocerry</th></tr>
				
		

		<c:forEach items="${i}" var="m">
			
			
			
			<tr style="font-size: 25; font-family: sans-serif;font-style: normal; background-color:#BDB76B;"><td>${m.getShoes()}</td><td>${m.getClothes()}</td><td>${m.getGrocerry()}</td></tr>
			
		
		
		
			
			
		</c:forEach>
			
			</table>
			</center>
	
<jsp:include page="footer.jsp"></jsp:include>
		

</body>
</html>