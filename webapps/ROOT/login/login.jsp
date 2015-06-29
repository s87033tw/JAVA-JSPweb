<%@page contentType = "text/html"%>
<%@page pageEncoding = "UTF-8"%>

<html>
	<head><title>login</title></head>
	<body>
	<%
		String test1 = request.getParameter("username");
		String test2 = request.getParameter("password");
		if(test1.equals("admin")&&test2.equals("1"))
			response.sendRedirect("http://localhost:8080/Java_JSP/Seating/SeatEnter.jsp");
		else
			request.getRequestDispatcher("login.html").forward(request, response);
	%>
	</body>
</html>