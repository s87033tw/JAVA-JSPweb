import java.io.*;
import java.util.*;
class save{
	public void save(String a[][],String b[][])throws Exception{

		FileWriter fw=new FileWriter("save.txt");	
        	BufferedWriter bw = new BufferedWriter(fw);
		int i=0;
        	for(i=0;i<a.length;i++){
			for(int j = 0; j < a[0].length; j++){ 
				bw.write(a[i][j]+"  "+b[i][j]);
				bw.newLine(); 
			}
		}
       		 bw.close();


		}
}