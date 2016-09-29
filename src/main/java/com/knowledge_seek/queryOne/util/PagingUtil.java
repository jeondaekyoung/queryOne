package com.knowledge_seek.queryOne.util;

public class PagingUtil {

	public static String pagingText(int totalRecordCount,int pageSize,int blockPage,int nowPage,String page){
		String pagingStr="<ul class=\"pagination pagination-sm m-t-none m-b-none\">";
		
		//1.��ü ������ ���ϱ�
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		int intTemp = ((nowPage - 1) / blockPage) * blockPage + 1;

		//ó�� �� ������ ���� ����
		if(intTemp != 1){
                
			pagingStr+="<li><a href='"+page+"nowPage=1'><i class=\"fa fa-chevron-left\"></i><i class=\"fa fa-chevron-left\"></i></a></li>&nbsp;<li><a href='"+page+"nowPage="+(intTemp -blockPage)+"'><i class=\"fa fa-chevron-left\"></i></a></li>";
		}
		
		//������ ǥ�� ��� ���� ����
		int blockCount = 1;
		
		//�������� �ѷ��ִ� ����
		//��� ������ ����ŭ Ȥ�� ������ �������� �ɶ����� �������� ǥ���Ѵ�1 
		while(blockCount <= blockPage && intTemp <= totalPage){  // ������ ���� �� üũ
				//���� �������� �ǹ���
			if(intTemp == nowPage){  
				pagingStr+="<li><span style='Color:red'>"+intTemp+"</span></li>&nbsp;";
			}
		     else
		    	 pagingStr+="<li><a href='"+page+"nowPage="+intTemp+"'>"+intTemp+"</a></li>&nbsp;";
		       
			intTemp = intTemp + 1;
			blockCount = blockCount + 1;
		
		}

		//���� �� �������� ���� ����
			
		if(intTemp <= totalPage){

			pagingStr+="<li><a href='"+page+"nowPage="+intTemp+"'><i class=\"fa fa-chevron-right\"></i></a></li>&nbsp;<li><a href='"+page+"nowPage="+totalPage+"'><i class=\"fa fa-chevron-right\"></i><i class=\"fa fa-chevron-right\"></i></a></li>"; 

				   
		}
		
		return pagingStr+"</ul>";
	}
	public static String pagingImage(){
		
		return null;
	}
	
}
