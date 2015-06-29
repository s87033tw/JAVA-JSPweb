import java.util.*;

import java.io.*;


class user{


	public static void main(String[]args)throws Exception{
		ArrayList<String>pw=new ArrayList<String>();
		Set <String>account=new HashSet<String>();
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
			while((accountdetail=br.readLine())!=null){
			
				account.add(accountdetail);
		
			}
			if(account.add(username)){
						System.out.println("create success");
						fw.write(username+" \r\n");
						fw.flush();	
				if(pw.add(password)){
							System.out.println("create success");
							fw1.write(password+" \r\n");
							fw1.flush();	
	
						}
	
					}
			
					else
						System.out.println("woring");
			}
			if(a==2){
				quit=false;
			}
			
			}
		
			fw.close();
	}

}