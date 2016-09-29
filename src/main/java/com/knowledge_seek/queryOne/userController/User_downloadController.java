package com.knowledge_seek.queryOne.userController;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.knowledge_seek.queryOne.domain.Download;
import com.knowledge_seek.queryOne.service.impl.DownServiceImpl;
import com.knowledge_seek.queryOne.service.impl.FileServiceImpl;
import com.knowledge_seek.queryOne.util.PagingUtil;

@Controller
public class User_downloadController {
	
	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="downService")
	DownServiceImpl down; 
	
	@Resource(name="fileService")
	FileServiceImpl fileServiceImpl;
	
	
	@RequestMapping("/user/download.do")
	public String download(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage,
			HttpServletRequest req) {
		//��ġ��� ����¡
		{
			map.put("user", "use");
			map.put("account","��ġ");
			int totalRecordCount =down.getTotalRecordCount(map);
			int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
			//���� �� �� ROWNUM���ϱ�]
					int start= (nowPage-1)*pageSize+1;
					int end = nowPage*pageSize;		
					map.put("start", start);
					map.put("end",end);
					
			String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/user/download.do?");
			model.addAttribute("pagingString1",pagingString);
			
			List<Download> p_lists=down.selectList(map);
			model.addAttribute("p_lists",p_lists);
			model.addAttribute("nowPage",nowPage);
			/*model.addAttribute("totalPage1",totalPage);
			
			model.addAttribute("totalRecordCount1",totalRecordCount);
			model.addAttribute("pageSize1",pageSize);
			 */
			
		}
		//������� ����¡
		{
			map.put("user", "use");
			map.put("account","����");
			int totalRecordCount =down.getTotalRecordCount(map);
			int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
			//���� �� �� ROWNUM���ϱ�]
					int start= (nowPage-1)*pageSize+1;
					int end = nowPage*pageSize;		
					map.put("start", start);
					map.put("end",end);
					
			String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/user/download.do?");
			model.addAttribute("pagingString2",pagingString);

			List<Download> d_lists=down.selectList(map);
			model.addAttribute("d_lists",d_lists);	
			model.addAttribute("nowPage",nowPage);
			/*model.addAttribute("totalPage2",totalPage);
			
			model.addAttribute("totalRecordCount2",totalRecordCount);
			model.addAttribute("pageSize2",pageSize);*/

			
		}
		return "/user/download";
	}
	//Ajax�� �ٲٱ�
	@RequestMapping("/user/downHits.do")
	public String hits(@RequestParam("downNo") String downNo,@RequestParam("nowPage") String nowPage){
		
		down.update_hits(downNo);
		
		return "forward:/user/download.do?downNo="+downNo+"&nowPage="+nowPage;
	}
}
