<%@ page contentType="text/html; charset=utf-8" language="java" import="java.io.*,java.util.*" errorPage="error.jsp" %>
<HTML>
<TITLE>Save</TITLE>
<body>
<%

	String Tcount =(String)session.getAttribute("Tcount");
	int count=Integer.parseInt(Tcount);
	String Tcount2 =(String)session.getAttribute("Tcount2");
	int count2=Integer.parseInt(Tcount2);

	String a[][]=new String[count][count2];
	String b[][]=new String[count][count2];

	for(int i=0;i<count;i++){
		for(int j=0;j<count2;j++){
			a[i][j]=request.getParameter("classstate["+String.valueOf(i)+"]["+String.valueOf(j)+"]");
			b[i][j]=request.getParameter("student["+String.valueOf(i)+"]["+String.valueOf(j)+"]");
		}
	}

	String classData=request.getParameter("classData");	
	FileWriter fw = new FileWriter(new File("C:/Program Files/Apache Software Foundation/Tomcat 8.0/temp/classList/"+classData+".txt"));
	BufferedWriter bw = new BufferedWriter(fw);
	FileWriter fw2 = new FileWriter(new File("C:/Program Files/Apache Software Foundation/Tomcat 8.0/temp/userlist.txt"),true);
	BufferedWriter bw2 = new BufferedWriter(fw2);
		
		int i=0;
        	for(i=0;i<a.length;i++){
				for(int j = 0; j < a[0].length; j++){ 
					bw.write(a[i][j]+" "+b[i][j]);
					bw.newLine();
					bw2.write(b[i][j]+" 0000 3 "+classData);
					bw2.newLine();
				}
			}
       		bw.close();
		bw2.close();
	
	response.sendRedirect("http://localhost:8080/JSP/New.jsp");

%>
test
</body>
</html>