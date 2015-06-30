<%@ page contentType="text/html; charset=BIG5" language="java" import="java.util.*,java.io.*,java.sql.*,java.util.ArrayList" errorPage="" %>
<HTML>
<TITLE>帳密輸入</TITLE>
<body>
<%
	String aa = request.getParameter("a");
	int a=Integer.parseInt(aa);
	%>
<form method="post" action="userTemp.jsp">
	
	帳號:<input type="text" name="username" maxlength="8"/>
	<p>
	密碼:<input type="password" name="password" maxlength="8"/>
	<p>
	權限等級:
	<input type="radio" name="level" value="1" />高
	<input type="radio" name="level" value="2" />中
	<input type="radio" name="level" value="3" />低
	<p>

	<input type="submit" name="enter1"  value="送出" />

</form>
</body>
</html>