<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<HTML>
<TITLE>座位大小</TITLE>
<body>
 <form method="post" action="NewFile.jsp">
  <p>
  	請輸入座位 長x寬:
    <input type="text" name="count" size="4" maxlength="2"/>
    x
    <input type="text" name="count2" size="4" maxlength="2"/>
  <p>
    <input type="submit" name="enter"  value="送出" />
    <input type="reset"  name="reset1" value="清除">
  </p>
  <hr>
</form>
</body>
<HTML>