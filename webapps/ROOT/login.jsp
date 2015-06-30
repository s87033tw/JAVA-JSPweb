<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*,java.io.*" errorPage="" %>

<html>
	<head><title>login</title></head>
	<body>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String accountdetail="";
		String level;

		if(username.equals("admin")&&password.equals("1")){
				response.sendRedirect("http://localhost:8080/JSP/user/user.jsp");
		}
		else{
			File f1 = new File("C:/Program Files/Apache Software Foundation/Tomcat 8.0/temp/userlist.txt");
			FileReader fr =new FileReader(f1);
			BufferedReader br = new BufferedReader(fr);

			String[] tokens;
	
			while((accountdetail=br.readLine())!=null){//從這讀資料
				tokens = accountdetail.split(" ");
				if(username.equals(tokens[0])&&password.equals(tokens[1])){
					session.setAttribute("username",username) ;
					session.setAttribute("level",tokens[2]) ;
					session.setAttribute("class",tokens[3]) ;
					response.sendRedirect("http://localhost:8080/JSP/New.jsp");
				}
			}

			out.println("帳號密碼錯誤");
			response.setHeader("Refresh","3;url=login.html");
		}	
	%>
	</body>
</html>