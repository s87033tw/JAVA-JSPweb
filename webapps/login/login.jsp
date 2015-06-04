<%@page contentType = "text/html"%>
<%@page pageEncoding = "Big5"%>
<html>
	<head><title>login</title></head>
	<body>
	<%
		String test1 = request.getParameter("username");
		String test2 = request.getParameter("password");
		if((test1.equals("admin"))&&(test2.equals("1")))
			response.sendRedirect("http://localhost:8080/message/message.jsp");
		else
			response.sendRedirect("login.html");
	%>
	</body>
</html>