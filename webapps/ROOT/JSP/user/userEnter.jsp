<%@ page contentType="text/html; charset=BIG5" language="java" import="java.util.*,java.io.*,java.sql.*,java.util.ArrayList" errorPage="" %>
<HTML>
<TITLE>�b�K��J</TITLE>
<body>
<%
	String aa = request.getParameter("a");
	int a=Integer.parseInt(aa);
	%>
<form method="post" action="userTemp.jsp">
	
	�b��:<input type="text" name="username" maxlength="8"/>
	<p>
	�K�X:<input type="password" name="password" maxlength="8"/>
	<p>
	�v������:
	<input type="radio" name="level" value="1" />��
	<input type="radio" name="level" value="2" />��
	<input type="radio" name="level" value="3" />�C
	<p>

	<input type="submit" name="enter1"  value="�e�X" />

</form>
</body>
</html>