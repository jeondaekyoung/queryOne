package com.knowlege_seek.queryOne.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class FileUpDownUtils {
	
	 //[���� �̸� �ߺ� üũ�� �޼ҵ�] - ���ϸ��� �����ϸ�.. ���ϸ�_index.Ȯ����  �� �����Ѵ�..
	public static String getNewFileName(String path, String fileName){
	 	//fileName=����.txt
			 
		File file= new File(path+File.separator+fileName);
		
		if(!file.exists()){  // ������ �������� ������...
		
			return fileName;
		} else{ //������ �����ϸ�
			//���� Ȯ����
			String ext = fileName.substring(fileName.lastIndexOf(".")+1).trim();
			//���� ��
			String fileNameExcludeExt =fileName.substring(0,fileName.lastIndexOf("."));
			
			String newFileName;
			while(true){
		   
				newFileName="";
		 
				if(fileNameExcludeExt.indexOf("_") !=-1){//���ϸ� _�� ���Ե�
		  
					String[] arrFiles=fileNameExcludeExt.split("_");
					String lastName=arrFiles[arrFiles.length-1];
	
					try{
						int index=Integer.parseInt(lastName);
						for(int i=0; i < arrFiles.length;i++){
							if(i != arrFiles.length-1)
								newFileName+=arrFiles[i]+"_";
							else 
								newFileName+=String.valueOf(index+1);
						}
						
						newFileName+="."+ext;
						 
					} catch(Exception e){
					 
						newFileName+=fileNameExcludeExt+"_1."+ext;
					}
				    
				} else{//_�� ����

					newFileName+=fileNameExcludeExt+"_1."+ext;
					
				}   
				File f= new File(path+File.separator+newFileName);
				   
				if(f.exists()){     
					fileNameExcludeExt=newFileName.substring(0,newFileName.lastIndexOf("."));
					continue;   
				} else
					break;
			}////////////while
				  
			return newFileName;
		} /////////if
	} //////////// getNewFileName
	
	//���� ���� ����
	public static void deleteFile(HttpSession session, String directory, String fileName){
		String saveDirectory =  session.getServletContext().getRealPath(directory);
		
		//���� ��ü ����
		File file = new File(saveDirectory + File.separator + fileName);
		
		//���� ���� ���� �Ǵ��� ����
		if(file.exists()) file.delete();
		
		
	} //////////////////////////////////////
	 
	//�ٿ�ε� ���� ����]
		public static void download(HttpServletRequest request,HttpServletResponse response,String filename,String directory){
			try{
				//3]������ ����� ������ ������ ��� ���]
				String saveDirectory =request.getSession().getServletContext().getRealPath(directory);
				//4]���� ũ�⸦ ��� ���� ���� ��ü ����
				//  -�ٿ�ε�� ���α׷����ٸ� ǥ���ϱ� ����.
				File file= new File(saveDirectory+File.separator+filename);
				
				/* �ٿ�ε带 ���� ���� ��� ���� */
				//5]�ٿ�ε�â�� �����ֱ� ���� ������� ����
				//5-1]���������� �ν����� ���ϴ� ������Ÿ��(MIME)Ÿ�� ����.
				response.setContentType("binary/octect-stream");
				//5-2]�ٿ�ε�� ���α׷����ٸ� ǥ���ϱ� ���� 
				//    ������ ���� ����
				response.setContentLength((int)file.length());
				//5-3] ���������: Content-Disposition
				//     ��������� ���� ��:attachment;filename=���ϸ�
				//     setHeader(���������,�����)���� �߰�
				//������ ������ ���� �ѱ� ���ϸ��� ������ ��찡 ��������
				//�������� ���ڵ� ����� �޸� ����(���ϸ��� ���ڵ�)
				
				boolean bFlag = request.getHeader("user-agent").toUpperCase().indexOf("MSIE") !=-1 ||
						request.getHeader("user-agent").toUpperCase().indexOf("11.0") !=-1;
				
				String encFileName;
				if(bFlag){//IE
					encFileName = URLEncoder.encode(filename, "UTF-8");
				}
				else{//��Ÿ ��������
					//new String(byte[] bytes, String charset)���
			 		//1]���ϸ��� byte�� �迭�� ��ȯ
			 		//2]StringŬ������ �����ڿ�  ��ȯ�� �迭�� 
			 		//  charset�� 8859_1�� ����
					encFileName = new String(filename.getBytes("UTF-8"),"8859_1");
				}
				
				response.setHeader("Content-Disposition", "attachment;filename="+encFileName);
				
		
				/* IO�۾��� ���ؼ� ������ �ִ� ������ ���������� �ٷ� ���*/
				/*
				 ����Ÿ �ҽ�:���� -��� ��Ʈ��:FileInputStream
				                   ���� ��Ʈ��:BufferedInputStream
				                   
				 ����Ÿ ������:��������-��� ��Ʈ��:response.getOutputStream()
				                          ���� ��Ʈ��:BufferedOutputStream
				*/
				
				//6]���Ͽ� ������ �Է� ��Ʈ�� ����
				BufferedInputStream bis = 
							new BufferedInputStream(
									new FileInputStream(file)
									);	
				//7]���������� ������ ��� ��Ʈ�� ����	
				BufferedOutputStream bos = 
							new BufferedOutputStream(
									response.getOutputStream()
									);
				//8]bis�� ���Ͽ��� �а� bos�� ���������� ���
				int data=0;
				while((data=bis.read())!=-1){
					bos.write(data);
					bos.flush();
				}
				//9]��Ʈ�� �ݱ�
				bis.close();bos.close(); 
			}
			catch(Exception e){}
		}////////////////////////////////////////////////////////
}
