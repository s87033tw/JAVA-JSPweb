import java.util.*;
import java.io.*;

class test{

	public static void main(String[]args)throws Exception{
	
		String a,b;
		String id;
		int count,count2;
		
		Scanner input=new Scanner(System.in);

		
		
			count=input.nextInt();
			count2=input.nextInt();	
		

		int i=0;
		int j=0;
		int alpha=65;
		int alpha2=49;
		String temp,temp2;
		String temp3;
		
		String classstate[][]=new String[count][count2];	
		String student[][]=new String[count][count2];
				System.out.println("¹q¸£½s¸¹");
		for( i=0;i<count;i++){

			for(j=0;j<count2;j++){
				
				temp=(char)alpha+"";
				temp2=(char)alpha2+"";				
				temp3=temp+temp2;
				classstate[i][j]=temp3;
				alpha2++;	
				System.out.println("id");
				student[i][j]=input.next();
				if((student[i][j].equals("n"))&&(j+1)<count2){
					classstate[i][j+1]=classstate[i][j];
					classstate[i][j]=" ";
					student[i][j]=" ";
				}
				//System.out.print(classstate[i][j]+" "+student[i][j]+"\t");
			
			}	
				alpha2=49;
				System.out.println();
			alpha++;		
			
		
		}
		for( i=0;i<count;i++){

			for(j=0;j<count2;j++){
				
				
				System.out.print(classstate[i][j]+" "+student[i][j]+"\t");
			
			}	
					
				System.out.println();
		
		}

		
		
		
		
		save sa = new save();
		sa.save(classstate,student);
		}


}