import java.util.*;

import java.io.*;


class user{


	public static void main(String[]args)throws Exception{
		ArrayList<String>pw=new ArrayList<String>();//�K�X��list
		Set <String>account=new HashSet<String>();//�b��
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
			while((accountdetail=br.readLine())!=null){//�q�oŪ���
			
				account.add(accountdetail);
		
			}//��o
			if(account.add(username)){//�b�����ƤF��?
						System.out.println("create success");
						fw.write(username+" \r\n");//�g�b��
						fw.flush();	
				if(pw.add(password)){//�s�J�K�X
							System.out.println("create success");
							fw1.write(password+" \r\n");//�g�K�X
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
		
			fw.close();//�s��
	}

}