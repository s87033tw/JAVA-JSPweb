<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*,java.io.*,java.sql.*,java.util.ArrayList" errorPage="" %>
<HTML>
<TITLE>Save</TITLE>
<body>
<%
//class load{
	//public static void main(String[]args)throws Exception{

		//List myList = new ArrayList();
		ArrayList<String>status=new ArrayList<>();//學號	
		ArrayList<String>computernum=new ArrayList<>();//電腦位子
		Set<String> alpha = new HashSet<String>();//判斷有幾個不重複英文字母
		
		File f1 = new File("save.txt");
		String fr = application.getRealPath(f1);
		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(fr)));
		String statusmessage="";
		int max=0;
		int statuscount=0,alphacount=0;
		String message="";
		
		int length=0;
		while((statusmessage=br.readLine())!=null){

			length=statusmessage.indexOf(" ");//空白位置在哪?
			for(int i=0;i<length;i++){//讀位置

				message+=statusmessage.charAt(i)+"";				

			}
			computernum.add(message);
			alpha.add(message.charAt(0)+"");//字母重複嗎?沒有的話加入字母。

			if(message.charAt(0)=='A'){
				max=Integer.valueOf(message.replace("A",""));
			}//取出數字大小。
			message="";
			for(int j=length+1;j<statusmessage.length();j++){//讀學號

				message+=statusmessage.charAt(j)+"";

			}
			status.add(message);
			message="";
		}
		for(int i=0;i<status.size();i++){
			
			System.out.println(computernum.get(i)+"\t"+status.get(i));//印

		}
		String [][]stustatus=new String[alpha.size()][max];
		String [][]stuid=new String[alpha.size()][max];
		int k=0;
		for(int i=0;i<alpha.size();i++){//把位置+學號存成2維陣列

				for(int j=0;j<max;j++){
					stustatus[i][j]=computernum.get(k);
					stuid[i][j]=status.get(k);
					k++;
				}
		}
		computernum.clear();//清空
		status.clear();	//清空
	//}
//}
%>
</body>
</html>