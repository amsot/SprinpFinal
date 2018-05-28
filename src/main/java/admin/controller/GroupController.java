package admin.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import admin.dto.Group;
import admin.dto.Meet;
import admin.service.GroupService;
import admin.util.Paging;

@Controller
public class GroupController {

	private static final Logger logger = LoggerFactory.getLogger(GroupController.class);
	
	@Autowired GroupService groupService;
	
	/**
	 *  모임 목록 
	 */
	@RequestMapping(value="/admin/group/groupList.do")
	public void groupList(@RequestParam(defaultValue="0") int curPage, Model model) {
		int total = groupService.getGroupTotal();
	
		Paging paging = new Paging(total,curPage);
		model.addAttribute("paging", paging);
		List groupList = groupService.getGroupPagingList(paging);
		System.out.println(groupList);
		model.addAttribute("groupList", groupList);

	}
	/**
	 * 
	 * @param group
	 * 모임 자세히 
	 * + 모임의 정모들도 가져옴
	 */
	@RequestMapping(value="/admin/group/groupDetail.do")
	public void groupDetail(Group group,Meet meet,Model model) {
		group = groupService.getGroupDetail(group);
		model.addAttribute("group", group);
		List meetList = groupService.getMeetList(group);
		model.addAttribute("meetList", meetList);
	}
	
	/**
	 *  모임 변경
	 */
	@RequestMapping(value="/admin/group/groupModify.do")
	public void groupModify(Group group,Model model) {
		group  = groupService.getGroupDetail(group);
		model.addAttribute("group", group);
		
	}
	
	/**
	 *  모임 삭제
	 */
	@RequestMapping(value="/admin/group/groupDelete.do")
	public String groupDelete(Group group,Model model,@RequestParam("pw") String pw) {
		if(!pw.equals("1234")) {
			model.addAttribute("msg", "성공적으로 삭제가 실패하였습니다.");
			model.addAttribute("url", "/admin/group/groupList.do");
			return "admin/util/alert";
		}

	
		boolean res = groupService.deleteGroup(group);
		if(res) {
			model.addAttribute("msg", "성공적으로 삭제가 완료되었습니다.");
			model.addAttribute("url", "/admin/group/groupList.do");
		}else{
			model.addAttribute("msg", "성공적으로 삭제가 실패하였습니다.");
			model.addAttribute("url", "/admin/group/groupList.do");
		}
		
		return "admin/util/alert";
	}
	
	/**
	 *  모임 제재 페이지 (홍보성 모임)
	 */
	@RequestMapping(value="/admin/group/groupBlack.do",method=RequestMethod.GET)
	public void groupBlack(Group group, Model model) {
		model.addAttribute("group", group);
		
	}
	
	/**
	 *  모임 제재 등록
	 */
	@RequestMapping(value="/admin/group/groupBlock.do",method=RequestMethod.POST)
	public String groupBlockDo(Group group) {
		groupService.blockGroup(group);
		return "redirect:/admin/group/groupDetail.do?group_no="+group.getGroup_no();
	}
	
	/**
	 *  모임 제재 풀기
	 */
	@RequestMapping(value="/admin/group/groupNoBlock.do",method=RequestMethod.GET)
	public String groupNoBlock(Group group, Model model) {
		groupService.noBlockGroup(group);
		model.addAttribute("msg", "제재 풀었다.");
		model.addAttribute("url", "/admin/group/groupDetail.do?group_no="+group.getGroup_no());
		return "admin/util/alert";
	}
}
