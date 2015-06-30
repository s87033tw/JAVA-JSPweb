<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.util.*,java.io.*" errorPage="" %>
<HTML>
<TITLE>查看點名</TITLE>
<body>
<center>
<%	
	Date time = new Date();
	String today=String.valueOf(time.getYear()+1900)+"_"+String.valueOf(time.getMonth()+1)+"_"+String.valueOf(time.getDate());

	String class_Search=request.getParameter("class_Search");
	Set<String> account=new HashSet<String>();//帳號
	Set<String> alpha = new HashSet<String>();//判斷有幾個不重複英文字母

	File f=new File("C:/Program Files/Apache Software Foundation/Tomcat 8.0/temp/signData/"+today+"_"+class_Search+".txt");
	FileReader fr=new FileReader(f);
	BufferedReader br=new BufferedReader(fr);

	FileReader fr2=new FileReader(new File("C:/Program Files/Apache Software Foundation/Tomcat 8.0/temp/classList/"+class_Search+".txt"));
	BufferedReader br2=new BufferedReader(fr2);

	String accountdetail="";
	String[] tokens;
	String k;
	int c=0;

	while((accountdetail=br.readLine())!=null){//從這讀點名名單
		tokens = accountdetail.split(" ");
		account.add(tokens[0]);	
	}

	while((accountdetail=br2.readLine())!=null){//從這讀點名名單
		tokens = accountdetail.split(" ");

		if(!account.add(tokens[1]))
			k="已到";
		else
			k="缺席";

		if(alpha.add(tokens[0].charAt(0)+"")&&c==1){
			%></tr>
  			</table>
<table style="border-top:3px #FFD382 solid;border-bottom:3px #82FFFF solid;" cellpadding="10" border='0' bgcolor="#BBFFEE"><tr><%
		}

		if(c==0){
			%><table style="border-top:3px #FFD382 solid;border-bottom:3px #82FFFF solid;" cellpadding="10" border='0' bgcolor="#BBFFEE"><tr><%
			c=1;
		}

			%><td><%=tokens[0]%></td>
			<td><%=tokens[1]%></td>
			<td>&nbsp;&nbsp;<%=k%>&nbsp;&nbsp;</td><%
	}
%>
</tr></table>

<form action="http://localhost:8080/JSP/New.jsp" method="post">
			<button type="submit" name="enter1" />返回</button/>
</form>

</center>
</body>
</html>