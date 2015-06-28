import java.util.*;

import java.io.*;


class user{


	public static void main(String[]args)throws Exception{
		ArrayList<String>pw=new ArrayList<String>();//密碼的list
		Set <String>account=new HashSet<String>();//帳號
		FileWriter fw=new FileWriter("username.txt",true);
		FileReader fr=new FileReader("username.txt");
		FileWriter fw1=new FileWriter("password.txt",true);
		FileReader fr1=new FileReader("password.txt");
		BufferedReader br=new BufferedReader(fr);
		String accountdetail="";
		Scanner input=new Scanner(System.in);
		String username="";
		String password="";
		Boolean quit=true;
		int a = 0;
		while(quit){
			System.out.println("1=ADD  2=QUIT");
			a=input.nextInt();	
			if(a==1){
			username=input.next();
			password=input.next();
			while((accountdetail=br.readLine())!=null){//從這讀資料
			
				account.add(accountdetail);
		
			}//到這
			if(account.add(username)){//帳號重複了嗎?
						System.out.println("create success");
						fw.write(username+" \r\n");//寫帳號
						fw.flush();	
				if(pw.add(password)){//存入密碼
							System.out.println("create success");
							fw1.write(password+" \r\n");//寫密碼
							fw1.flush();//	
	
						}//if(password)
	
					}
			
					else
						System.out.println("woring");//else
			}//if(1)
			if(a==2){
				quit=false;//exit
			}//if(2)
			
			}
		
			fw.close();//存檔
	}

}