<%@ page contentType="text/html; charset=BIG5" language="java" import="java.util.*,java.io.*,java.sql.*,java.util.ArrayList" errorPage="" %>
<HTML>
<TITLE>�b�K��J</TITLE>
<body>
<%
	ArrayList pw=new ArrayList();//�K�X��list
	Set account=new HashSet();//�b��
	FileWriter fw=new FileWriter("username.txt",true);
	FileReader fr=new FileReader("username.txt");
	FileWriter fw1=new FileWriter("password.txt",true);
	FileReader fr1=new FileReader("password.txt");
	BufferedReader br=new BufferedReader(fr);
	String accountdetail="";
	Boolean quit = true;
	//Scanner input=new Scanner(System.in);
	//String username="";
	//String password="";
	
	String aa = request.getParameter("a");
	int a=Integer.parseInt(aa);
	%>
<form method="post" action="userTemp.jsp">
<%
	if(a==1){
		//username=input.next();
		//password=input.next();
%>	
	�b��:<input type="text" name="username" size="20" maxlength="10"/>
	<p>
	�K�X:<input type="password" name="password" size="20" maxlength="10"/>
	<p>
	<input type="submit" name="enter1"  value="�e�X" />

<%
	

	if(a==2){
		quit=false;//exit
		}//if(2)
				
	}
%>
</form>
</body>
</html>