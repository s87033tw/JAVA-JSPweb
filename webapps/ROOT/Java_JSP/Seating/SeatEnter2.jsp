<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>

<HTML>
<head>
<TITLE>座位表</TITLE>
<head>
<body>
<% 
	//try{

	int count = Integer.parseInt(request.getParameter("count"));
	int count2 = Integer.parseInt(request.getParameter("count2"));
	int i = Integer.parseInt(request.getParameter("i"));
	int j = Integer.parseInt(request.getParameter("j"));

	for( i=0;i<count;i++){
		for( j=0;j<count2;j++){
			out.println(request.getParameter("classstate[i][j]")+" "+request.getParameter("student[i][j]")+"\t");
			}	
		out.println();
	}
	//}catch(Exception e){}
%>
</body>
<HTML>