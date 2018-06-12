package mvc.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mvc.dto.Groups;
import mvc.dto.Member;
import mvc.service.BoardService;
import mvc.service.GroupService;
import mvc.service.MeetingService;

@Controller
public class GroupController {
	
	@Autowired ServletContext context;
	@Autowired GroupService groupService;
	@Autowired BoardService boardService;
	@Autowired MeetingService meetingService;
 
	@RequestMapping(value="/group/list.do")
	public void groupList() {
		groupService.getGroupList();
	}
	
	@RequestMapping(value="/group/main.do", method=RequestMethod.GET)
	public String groupMain(Groups group, Model model) {
		
		Member member = new Member();
		member.setGroup_no(group.getGroup_no());
		member.setU_id("id1");
		model.addAttribute("u_id", "id1");
		model.addAttribute("group", groupService.getGroupInfo(group));
		model.addAttribute("meeting", meetingService.getCurrentMeeting(group));
		model.addAttribute("boardList", boardService.getBoardList(group));
		model.addAttribute("boardCount", boardService.getBoardCount(group));
		model.addAttribute("photoList", boardService.getPhotoList(group));
		model.addAttribute("photoCount", boardService.getPhotoCount(group));
		model.addAttribute("meeting", meetingService.getCurrentMeeting(group));
		model.addAttribute("notice", boardService.getNoticeView(group));
		model.addAttribute("isMember", groupService.isMember(member));
	
		return "group/main";
	}
	
	@RequestMapping(value="/group/chat.do")
	public void groutChat() {
		
	}
	
	@RequestMapping(value="/group/manager.do", method=RequestMethod.GET)
	public String groupManager(Model model, Groups group) {
		
		model.addAttribute("group", groupService.getGroupInfo(group));
		model.addAttribute("meeting", meetingService.getCurrentMeeting(group));
		model.addAttribute("boardList", boardService.getBoardList(group));
		model.addAttribute("boardCount", boardService.getBoardCount(group));
		model.addAttribute("photoList", boardService.getPhotoList(group));
		model.addAttribute("photoCount", boardService.getPhotoCount(group));
		
		return "group/manager/managerMain";
	}
	
	@RequestMapping(value="/group/manager/memberlist.do", method=RequestMethod.GET)
	public String memberlist(Model model, Groups group) {
		model.addAttribute("list", groupService.getMemberList(group));
		return "group/manager/memberList";
	}
	
	@RequestMapping(value="/group/registration.do", method=RequestMethod.GET)
	public String groupRegistration(Member member, Model model) {
		int gno=member.getGroup_no();

		String msg=null;
		String url="/group/main.do?group_no="+gno;
		if(groupService.isMember(member)>0) {
			msg="이미 가입된 모임입니다.";
		}else {
			groupService.memberRegistration(member);
			msg="가입이 완료되었습니다.";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "group/redirect";
	}
	
	@RequestMapping(value="/group/secession.do", method=RequestMethod.GET)
	public String groupSecession(Member member, Model model) {
	
		int gno=member.getGroup_no();
		String msg=null;
		String url="/group/main.do?group_no="+gno;
		
		if(groupService.isMember(member)<1) {
			msg="아직 가입하지 않은 모임입니다.";
		}else {
			groupService.memberSecession(member);
			msg="탈퇴가 완료되었습니다.";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return "group/redirect";	
	}
	
	@RequestMapping(value="/group/create.do")
	public void groupCreate() {
		groupService.createGroup();
	}
	
	@RequestMapping(value="/group/delete.do")
	public void groupDelete() {
		groupService.deleteGroup();
	}
	
	
	
}
