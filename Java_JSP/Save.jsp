<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<HTML>
<TITLE>Save</TITLE>
<body>
<%
	String a[][];
	String b[][];
%>
			
	String fw = application.getRealPath("save.txt");
	java.io.BufferedInputStream bw = new java.io.BufferedInputStream(new java.io.FileInputStream(fw));
		
		int i=0;
        	for(i=0;i<a.length;i++){
				for(int j = 0; j < a[0].length; j++){ 
					out.write(a[i][j]+"  "+b[i][j]);
					out.println("<br />");
				}
			}
       		 bw.close();


%>
</body>
</html>