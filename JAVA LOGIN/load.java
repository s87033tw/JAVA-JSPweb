import java.util.*;
import java.io.*;


class load{


	public static void main(String[]args)throws Exception{

		ArrayList<String>status=new ArrayList<>();//�Ǹ�	
		ArrayList<String>computernum=new ArrayList<>();//�q����l
		Set <String> alpha=new HashSet<>();//�P�_���X�Ӥ����ƭ^��r��
		File f1=new File("save.txt");
		FileReader fr=new FileReader(f1);
		BufferedReader br=new BufferedReader(fr);
		String statusmessage="";
		int max=0;
		int statuscount=0,alphacount=0;
		String message="";
		
		int length=0;
		while((statusmessage=br.readLine())!=null){

			length=statusmessage.indexOf(" ");//�ťզ�m�b��?
			for(int i=0;i<length;i++){//Ū��m

				message+=statusmessage.charAt(i)+"";				

			}
			computernum.add(message);
			alpha.add(message.charAt(0)+"");//�r�����ƶ�?�S�����ܥ[�J�r���C

			if(message.charAt(0)=='A'){
				max=Integer.valueOf(message.replace("A",""));
			}//���X�Ʀr�j�p�C
			message="";
			for(int j=length+1;j<statusmessage.length();j++){//Ū�Ǹ�

				message+=statusmessage.charAt(j)+"";

			}
			status.add(message);
			message="";
		}
		for(int i=0;i<status.size();i++){
			
			System.out.println(computernum.get(i)+"\t"+status.get(i));//�L


		}
		String [][]stustatus=new String[alpha.size()][max];
		String [][]stuid=new String[alpha.size()][max];
		int k=0;
		for(int i=0;i<alpha.size();i++){//���m+�Ǹ��s��2���}�C

				for(int j=0;j<max;j++){
					stustatus[i][j]=computernum.get(k);
					stuid[i][j]=status.get(k);
					k++;
				}
				

		}
		computernum.clear();//�M��
		status.clear();	//�M��

	}


}