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
	@RequestMapping(value="/admin/group/groupList.do",method=RequestMethod.GET)
	public void groupList(@RequestParam(defaultValue="0") int curPage,Model model,Paging search) {
		
		//검색할 수 도 있으니 검색한 갯수 가져오도록 검색 paging도 보내줌 (daoImpl에서 어차피 if문으로 구분)
		int total = groupService.getGroupTotal(search);
		
		//페이징 객체 생성자 생성
		Paging paging = new Paging(total,curPage);
		
		//기본 페이징 객체에다가 검색한 값을 입력해줌
		paging.setSearch(search.getSearch());
		model.addAttribute("paging", paging);
		//위에서 search 설정했기 때문에 가져감 -> daoImpl에서 구분함.
		List groupList = groupService.getGroupPagingList(paging);
		//paging.jsp에서 계속 그 값을 가지고 있어야 해서 search 따로 보내줌.
		model.addAttribute("search", search.getSearch());
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
