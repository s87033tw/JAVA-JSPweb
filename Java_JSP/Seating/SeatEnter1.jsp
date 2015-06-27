<%@ page contentType="text/html; charset=Big5" language="java" import="java.sql.*" errorPage="" %>
<HTML>
<head>
<TITLE>座位輸入ID</TITLE>
<head>
<body>
<%	
	String Tcount = request.getParameter("count");
	int count=Integer.parseInt(Tcount);
	String Tcount2 = request.getParameter("count2");	
	int count2=Integer.parseInt(Tcount2);

	int count3=0;
	int i=0;
	int j=0;
	int alpha=65;
	int alpha2=49;
	String temp="",temp2="";
	String temp3="";
	//String tem[];
	String classstate[][]=new String[count][count2];	
	//String student[][]=new String[count][count2];
%>
<form method="post" action="SeatEnter2.jsp">
<%
for(i=0;i<count;i++){

	for(j=0;j<count2;j++){
		
		temp=(char)alpha+"";
		temp2=(char)alpha2+"";				
		temp3=temp+temp2;
		classstate[i][j]=temp3 ;
		alpha2++;%>
		<img src="http://w15.loxa.edu.tw/lily831121/423334117_m.jpg">
		<p>
		<%out.println("編號"+temp3);	
		
		out.println("ID:");
%>
<input type="text" name="student" size="16" maxlength="8"/>
		
<p>
<%		
		String[] student= request.getParameter.Values("student");
		count3++;

		if((student[count3].equals("n"))&&(j+1)<count2){
			classstate[i][j+1]=classstate[i][j];
			classstate[i][j]=" ";
			student[count3]=" ";
		}
	}	
		alpha2=49;
		out.println();
		alpha++;		
}

%>
    <input type="submit" name="enter1"  value="儲存" />
    <input type="reset"  name="reset2" value="清除">
<hr>.

</form>
</body>
<HTML>
