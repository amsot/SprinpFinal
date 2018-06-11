package mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mvc.dto.Mygroup;
import mvc.dto.User;
import mvc.service.MygroupService;
import mvc.service.UserService;

@Controller
public class MygroupController {
private static final Logger logger = LoggerFactory.getLogger(MygroupController.class);

	@Autowired MygroupService mygroupService;
	@Autowired UserService userService;

	@RequestMapping(value="/mygroup/mygroup.do", method=RequestMethod.GET)
	public void mygroup(Mygroup mygroup, Model model, User user, HttpSession session) {
		logger.info("모임리스트 활성화");
		List<Mygroup> list = mygroupService.getList(mygroup);
		logger.info(list.toString());
		model.addAttribute("list", list);
		
//		user.setU_id((String) session.getAttribute("userid"));
//		model.addAttribute("user", userService.getUser(user));
//		logger.info(user.toString());
	}
	
	@RequestMapping(value="/mygroup/viewMygroup.do", method=RequestMethod.GET)
	public void viewMygroup(Mygroup mygroup, Model model, User user, HttpSession session) {
		logger.info("상세보기 폼 활성화");
		model.addAttribute("mygroup", mygroupService.getViewMygroup(mygroup));
		
		logger.info(mygroup.toString());

		
	}
	
	@RequestMapping(value="/mygroup/groupRegistration.do", method=RequestMethod.GET)
	public void groupRegist_form(HttpSession session) {
		session.setAttribute("u_id", session.getAttribute("userid"));
//		session.setAttribute("u_nick", session.getAttribute("usernick"));
	}
	
	@RequestMapping(value="/mygroup/groupRegistration.do", method=RequestMethod.POST)
	public String groupRegist_proc(Mygroup mygroup, User user, HttpSession session) {
		user.setU_id(session.getAttribute("userid").toString());
//		user.setU_nick(session.getAttribute("usernick").toString());
		mygroupService.groupRegistration(mygroup);
		return "redirect:/mygroup/mygroup.do";
	}
	
	@RequestMapping(value="/mygroup/mygroupDelete.do", method=RequestMethod.GET)
	public String mygroupDelete(Mygroup mygroup) {
		logger.info("모임삭제 활성화");
		logger.info(mygroup.toString());
		mygroupService.mygroupDelete(mygroup);
		
		return "redirect:/mygroup/mygroup.do";
	}
	
	
	
}
