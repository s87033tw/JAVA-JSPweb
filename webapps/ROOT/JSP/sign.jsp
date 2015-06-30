<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.util.*,java.io.*" errorPage="" %>
<HTML>
<TITLE>sign</TITLE>
<body>
<%
	Date time = new Date();
	String today=String.valueOf(time.getYear()+1900)+"_"+String.valueOf(time.getMonth()+1)+"_"+String.valueOf(time.getDate());
	String class3 = (String)session.getAttribute("class");

	Set<String> account=new HashSet<String>();//帳號
	File f=new File("C:/Program Files/Apache Software Foundation/Tomcat 8.0/temp/signData/"+today+"_"+class3+".txt");
	FileWriter fw=new FileWriter(f,true);
	FileReader fr=new FileReader(f);
	BufferedReader br=new BufferedReader(fr);
	String accountdetail="";
	String username = (String)session.getAttribute("username");
	String[] tokens;
	
	while((accountdetail=br.readLine())!=null){//從這讀資料
		tokens = accountdetail.split(" ");
		account.add(tokens[0]);
		
		}//到這

		if(account.add(username)){
					fw.write(username+" 1 \r\n");//寫帳號
					fw.flush();
					out.println("已簽到");
			
			}
			
		else
			out.println("簽過了");//else
			//if(1)
	
	fw.close();//存檔
	response.setHeader("Refresh","3;url=load.jsp");
%>

</body>
</html>