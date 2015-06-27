<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<HTML>
<TITLE>座位表</TITLE>
<body>
<% 
	request.setCharacterEncoding("utf-8");
	int i=0;
	int j=0;

	for( i=0;i<request.getParameter("count");i++){
		for( j=0;j<request.getParameter("count2");j++){
			out.println(request.getParameter("Ttem"));
		//out.print(classstate[i][j]+" "+student[i][j]+"\t");
		}	
	}
	%>

</body>
<HTML>