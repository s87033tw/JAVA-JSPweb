<%@page contentType="text/html"  pageEncoding="big5"
              isErrorPage="true"%>
<%@page import="java.io.PrintWriter"%>
<html>
<head><title>���~</title></head>
<body>
  <h1>�����o�Ϳ��~�G</h1><%= exception %>
  <h2>��ܨҥ~���|�l�ܡG</h2>
<%
    exception.printStackTrace(new PrintWriter(out));
%>
</body>
</html> 