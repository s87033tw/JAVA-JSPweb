<%@page contentType = "text/html"%>
<%@page pageEncoding = "UTF-8"%>

<html>
	<head><title>login</title></head>
	<body>
	<%
		String temp = request.getParameter("a");
		if(temp.equals("1"))
			request.getRequestDispatcher("userEnter.jsp").forward(request, response);
		else if(temp.equals("2"))
			response.sendRedirect("http://localhost:8080");
		else
			response.sendRedirect("http://localhost:8080/JSP/user/user.jsp");
	%>
	</body>
</html>