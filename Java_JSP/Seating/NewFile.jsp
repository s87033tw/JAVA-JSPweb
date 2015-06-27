<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<HTML>
<TITLE>座位輸入ID</TITLE>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String id;
	String Tcount = request.getParameter("count");
	int count = Integer.parseInt(Tcount);
	String Tcount2 = request.getParameter("count2");	
	int count2 = Integer.parseInt(Tcount2);
	int i=0;
	int j=0;
	int alpha=65;
	int alpha2=49;
	String temp="",temp2="";
	String temp3="";
	
	String classstate[][]=new String[count][count2];	
	String student[][]=new String[count][count2];
%>
 <form method="post" action="NewFile2.jsp">
<%
for(i=0;i<count;i++){

	for(j=0;j<count2;j++){
		
		temp=(char)alpha+"";
		temp2=(char)alpha2+"";				
		temp3=temp+temp2;
		classstate[i][j]=temp3 ;
		alpha2++;
		out.println("編號"+temp3);	
		out.println("ID:");
%>
<input type="text" name="tem" size="16" maxlength="8"/>
<p>
<%
		String Ttem = request.getParameter("tem");
		//student[i][j]=input.next();
		//if((student[i][j].equals("n"))&&(j+1)<count2){
		//	classstate[i][j+1]=classstate[i][j];
			//classstate[i][j]=" ";
			//student[i][j]=" ";
		//}
		
	}	
		alpha2=49;
		out.println();
	alpha++;		
}
%>
    <input type="submit" name="enter1"  value="儲存" />
    <input type="reset"  name="reset2" value="清除">
<hr>
</form>
</body>
<HTML>
