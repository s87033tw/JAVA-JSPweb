<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="error.jsp" %>

<HTML>
<head>
<TITLE>座位輸入ID</TITLE>
<head>
<body>
<body bgcolor="#D4FFD4">
<br><br><br><br><br><br><br><br>

<%	
	String Tcount =request.getParameter("count");
	int count=Integer.parseInt(Tcount);
	String Tcount2 =request.getParameter("count2");
	int count2=Integer.parseInt(Tcount2);

	session.setAttribute("Tcount",Tcount);
	session.setAttribute("Tcount2",Tcount2);

	int i=0;
	int j=0;
	int alpha=65;
	String temp="",temp2="";

	String classstate[][]=new String[count][count2];	
	String student[][]=new String[count][count2];

	for(i=0;i<count;i++){

		for(j=0;j<count2;j++){
			temp=(char)alpha+"";
			temp2=String.valueOf(j+1);				
			classstate[i][j]=temp+temp2;	
		}
		alpha++;		
	}
%>
	<form name="input" method="post" action="SeatEnter2.jsp">
<%

	for(i=0;i<count;i++){

		for(int k=0;k<2;k++){

			for(j=0;j<count2;j++){
				if(k==0){
%>
					<img src="http://w15.loxa.edu.tw/lily831121/423334117_m.jpg">
					<%for(int q=0;q<16;q++){%>
					&nbsp;
					<%}%>
<%				}
				if(k==1){
					String students = student[i][j];
					out.println("編號"+classstate[i][j]+"  ID:");%>
					<input type="hidden" name=classstate[<%=i%>][<%=j%>] value=<%=classstate[i][j]%> >
					<input type="text" name=student[<%=i%>][<%=j%>] size="8" maxlength="8" >			
<%
				}
			}
%><p><%
		}
%>	
		<p>
<%	
	}
%>
	<input type="submit" name="enter"  value="確定" />
	<input type="reset"  name="reset" value="清除">
<hr>.
</form>
</body>
<HTML>
