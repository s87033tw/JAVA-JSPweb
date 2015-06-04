<html>
<SCRIPT LANGUAGE="JavaScript"> 

<!--

function Login(){ 

var done=0; 

var username=document.login.username.value; 

username=username.toLowerCase(); 

var password=document.login.password.value; 

password=password.toLowerCase(); 

if (username=="am021331" && password=="z22635518") { window.location="登入成功的網址"; done=1; } 

if (done==0) { alert("您的帳號或密碼錯誤!!"); } 

} 

--> 

</SCRIPT>

<HEAD>
<title>tesr</title>
<center>

<form name=login> 

<table width=255 border=1 cellpadding=5 bordercolor="#4169E1"> 

<tr bgcolor=#000000><td rowspan="4"><font color="#FFFFFF" size=2><B>管</P>理</P>者<B></font></td><td colspan=2>

<center>

<font style=width:100%;filter:glow(color=#66CCFF)> <font style=FILTER:Shadow

(Color=#537BD9,direction=150);height=10 color="#66CCFF">

<img src= width=0 height=0 onerror="setInterval('font.style.color=Math.random()*255*255*255',100)"><font size=3 id=font><b>會員登入</b></font></font></font>

</center>

</td><td rowspan="4"><font color="#FFFFFF" size=2><B>登</P>入</P>區<B></font></td></tr> 

<tr bgcolor=#cccccc><td><font color="#000000" size=2>帳號：</font></td><td><input type=text name=username></td></tr> 

<tr bgcolor=#cccccc><td><font color="#000000" size=2>密碼：</font></td><td><input type=password name=password></td></tr> 

<tr bgcolor=#000000><td colspan=2 align=center><input type=button value='確 定 送 出' onClick="Login()" STYLE="COLOR:FFFFFF;HEIGHT:18PX;BACKGROUND-COLOR:#000000;BORDER:1 SOLID FFFFFF"> <input type=reset value='清 除 重 寫' STYLE="COLOR:FFFFFF;HEIGHT:18PX;BACKGROUND-COLOR:#000000;BORDER:1 SOLID FFFFFF"></td></tr> 

</table> 

</form> 

</center>

</HEAD>
<body>

</BODY>
</html>