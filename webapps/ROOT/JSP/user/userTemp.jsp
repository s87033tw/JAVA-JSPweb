﻿<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.util.*,java.io.*,java.sql.*,java.util.ArrayList" errorPage="" %>
<HTML>
<TITLE>帳密存檔</TITLE>
<body>
<%
	Set<String> account=new HashSet<String>();//帳號
	File f=new File("C:/Program Files/Apache Software Foundation/Tomcat 8.0/temp/userlist.txt");
	FileWriter fw=new FileWriter(f,true);
	FileReader fr=new FileReader(f);
	BufferedReader br=new BufferedReader(fr);
	String accountdetail="";
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String level = request.getParameter("level");
	String[] tokens;
	
	while((accountdetail=br.readLine())!=null){//從這讀資料
		tokens = accountdetail.split(" ");
		account.add(tokens[0]);
		
		}//到這

		if(account.add(username)){
					out.println("create success");
					fw.write(username+" "+password+" "+level+" 0 \r\n");//寫帳號
					fw.flush();	
			
			}
			
		else
			out.println("帳戶已存在");//else
			//if(1)
	
	fw.close();//存檔
	response.setHeader("Refresh","3;url=user.jsp");
%>

</body>
</html>