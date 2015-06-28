<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>

<HTML>
<head>
<TITLE>座位輸入ID</TITLE>
<head>
<body>
<br><br><br><br><br><br><br><br>
<form method="post" action="SeatEnter2.jsp">

<%	
	int count=Integer.parseInt(request.getParameter("count"));	
	int count2=Integer.parseInt(request.getParameter("count2"));

	int i=0;
	int j=0;
	int alpha=65;
	int alpha2=49;
	String temp="",temp2="";

	String classstate[][]=new String[count][count2];	
	String student[][]=new String[count][count2];

	for(i=0;i<count;i++){

		for(int k=0;k<2;k++){

			for(j=0;j<count2;j++){
				if(k==0){
					temp=(char)alpha+"";
					temp2=(char)alpha2+"";				
					classstate[i][j]=temp+temp2;
					alpha2++;
%>
					<img src="http://w15.loxa.edu.tw/lily831121/423334117_m.jpg">
<%				}
				if(k==1){
					out.println("  編號"+classstate[i][j]+"  ID:");%>
					<input type="text" name="student" size="8" maxlength="8" >		
			
<%
					student[i][j]="student";
					if((student[i][j].equals("n"))&&(j+1)<count2){
						classstate[i][j+1]=classstate[i][j];
						classstate[i][j]=" ";
						student[i][j]=" ";
					}
				}
			}
%><p><%
		}
%>	
		<p>
<%
		alpha2=49;
		out.println();
		alpha++;		
	}

%>
    <input type="submit" name="enter"  value="儲存" />
    <input type="reset"  name="reset" value="清除">
<hr>.

</form>
</body>
<HTML>
