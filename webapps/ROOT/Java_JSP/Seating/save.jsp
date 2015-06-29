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
			
	FileWriter fw = new FileWriter(new File(request.getParameter("class")+".txt"));
	BufferedWriter bw = new BufferedWriter(fw);
		
		int i=0;
        	for(i=0;i<a.length;i++){
				for(int j = 0; j < a[0].length; j++){ 
					bw.write(a[i][j]+" "+b[i][j]);
					bw.newLine();
				}
			}
       		 bw.close();


%>
test
</body>
</html>