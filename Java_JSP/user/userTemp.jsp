<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.util.*,java.io.*,java.sql.*,java.util.ArrayList" errorPage="" %>
<HTML>
<TITLE>帳密存檔</TITLE>
<body>
<%
	ArrayList<String> pw=new ArrayList<String>();//密碼的list
	Set<String> account=new HashSet<String>();//帳號
	File f=new File("username.txt");
	FileWriter fw=new FileWriter(f,true);
	FileReader fr=new FileReader(f);
	FileWriter fw1=new FileWriter("password.txt",true);
	FileReader fr1=new FileReader("password.txt");
	BufferedReader br=new BufferedReader(fr);
	String accountdetail="";
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	while((accountdetail=br.readLine())!=null){//從這讀資料
		
		account.add(accountdetail);
		
		}//到這

		if(account.add(username)){
					out.println("create success");
					fw.write(username+" \r\n");//寫帳號
					fw.flush();	
			if(pw.add(password)){//存入密碼
						out.println("create success");
						fw1.write(password+" \r\n");//寫密碼
						fw1.flush();//	
	
				}//if(password)
	
			}
			
		else
			out.println("woring");//else
			//if(1)
	
	fw.close();//存檔
	response.setHeader("Refresh","3;url=user.jsp");
%>

</body>
</html>