<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<HTML>
<TITLE>權限</TITLE>
<body>

<%
	String aa = request.getParameter("a");
	int a=Integer.parseInt(aa);
	//int a=0;//級別
	
	if(a==1){
%>
		<input type="submit" name="enter1"  value="新增使用者"  size="6"/>
		<input type="submit" name="enter1"  value="編輯"/>
		<input type="submit" name="enter1"  value="查看"/>
<%
	}
	if(a==2){
		%>
		<input type="submit" name="enter1"  value="編輯"/>
		<input type="submit" name="enter1"  value="查看"/>
<%
	}
	if(a==3){
		%>
		<input type="submit" name="enter1"  value="查看"/>
<%
	}
%>

</body>
</html>