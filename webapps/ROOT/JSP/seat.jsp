<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="error.jsp" %>

<HTML>
<head>
<TITLE>�y���</TITLE>
<head>
<body>
<body bgcolor="#D4FFD4">
<%
	String Tcount =(String)session.getAttribute("Tcount");
	int count=Integer.parseInt(Tcount);
	String Tcount2 =(String)session.getAttribute("Tcount2");
	int count2=Integer.parseInt(Tcount2);

	String classstate[][]=new String[count][count2];	
	String student[][]=new String[count][count2];
	String temp="0";
	String over;

		for(int i=0;i<count;i++){
			for(int j=0;j<count2;j++){
				student[i][j]=request.getParameter("student["+String.valueOf(i)+"]["+String.valueOf(j)+"]");
				classstate[i][j]=request.getParameter("classstate["+String.valueOf(i)+"]["+String.valueOf(j)+"]");
			}
		}

		for(int i=0;i<count;i++){
			for(int j=0;j<count2;j++){
				if(!(temp.equals("0"))&&(j+1)<count2){
					over =classstate[i][j+1];
					classstate[i][j+1]=classstate[i][j];
					classstate[i][j]=temp;
					temp =over;
				}
				if(student[i][j].equals("n")){
					temp =classstate[i][j];
					classstate[i][j]=" ";
					student[i][j]=" ";
				}
			}
		}

		for(int i=0;i<count;i++){
			%><table style="border-top:3px #FFD382 solid;border-bottom:3px #82FFFF solid;" cellpadding="10" border='0'><tr><%
			for(int j=0;j<count2;j++){
%>
�@			<td><%=classstate[i][j]%></td>
			<td><%=student[i][j]%></td>
			<td>&nbsp;&nbsp;|&nbsp;&nbsp;</td>
<%
			}
%>
			</tr>
			</table>
			<p>
<%
		}
</body>
<HTML>