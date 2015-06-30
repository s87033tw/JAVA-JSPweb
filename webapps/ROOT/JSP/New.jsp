<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<HTML>
<TITLE>權限</TITLE>
<body>
<center>
<%
	String level = (String)session.getAttribute("level");
	int a=Integer.parseInt(level);
	//int a=0;//級別
	
	if(a==1){
%>
		<form action="http://localhost:8080/JSP/user/user.jsp" method="post">
			<button type="submit" name="enter1"/>新增使用者</button>
			<button type="submit" name="enter1" formaction="http://localhost:8080/JSP/Seating/SeatEnter.jsp"/>編輯</button>
			<p><input type="text" name="class_Search" size="4"/>
			<button type="submit" name="enter1" formaction="http://localhost:8080/JSP/teacher.jsp">查看點名</button/>
		</form>
<%
	}
	if(a==2){
		%>
		<form action="http://localhost:8080/JSP/teacher.jsp" method="post">
			<button type="submit" name="enter1" formaction="http://localhost:8080/JSP/Seating/SeatEnter.jsp"/>編輯</button>
			<button type="submit" name="enter1" />查看點名</button/>
		</form>
<%
	}
	if(a==3){
		%>
		<form action="http://localhost:8080/JSP/load.jsp" method="post">
			<button type="submit" name="enter1" />查看</button/>
		</form>
<%
	}
%>

<form action="http://localhost:8080" method="post">
			<button type="submit" name="enter1" />登出</button/>
</form>
</center>
</body>
</html>