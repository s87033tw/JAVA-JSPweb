<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="error.jsp" %>

<HTML>
<head>
<TITLE>座位表</TITLE>
<head>
<body>
<body bgcolor="#D4FFD4">
<% 
	//try{

	String Tcount =(String)session.getAttribute("Tcount");
	int count=Integer.parseInt(Tcount);
	String Tcount2 =(String)session.getAttribute("Tcount2");
	int count2=Integer.parseInt(Tcount2);

		for(int i=0;i<count;i++){
			%><table style="border-top:3px #FFD382 solid;border-bottom:3px #82FFFF solid;" cellpadding="10" border='0'><tr><%
			for(int j=0;j<count2;j++){
%>
　			<td><%=request.getParameter("classstate["+String.valueOf(i)+"]["+String.valueOf(j)+"]")%></td>
			<td><%=request.getParameter("student["+String.valueOf(i)+"]["+String.valueOf(j)+"]")%></td>
			<td>&nbsp;&nbsp;|&nbsp;&nbsp;</td>
<%
			}
%>
			</tr>
			</table>
			<p>
<%
		}

	//}catch(Exception e){}
%>
</body>
<HTML>