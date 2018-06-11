package mvc.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mvc.dto.User;
import mvc.service.UserService;

@Controller
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired UserService userService;
	
	@RequestMapping(value="/user/main.do", method=RequestMethod.GET)
	public String main() {
		logger.info("메인 폼 활성화");
		return "final/user/main";
		
	}
	
	@RequestMapping(value="/user/join.do", method=RequestMethod.GET)
	public void joinForm() {
		logger.info("회원가입 폼 활성화");
	}
	
	@RequestMapping(value="/user/join.do", method=RequestMethod.POST)
	public String joinProcess(User user, Model model) {
		boolean joinResult = userService.join(user);

		if (joinResult) {
			logger.info("회원가입 성공");
			model.addAttribute("msg", "회원가입 성공");
			model.addAttribute("url", "/user/main.do");
		} else {
			logger.info("회원가입 실패");
			model.addAttribute("msg", "회원가입 실패");
			model.addAttribute("url", "/user/join.do");
		}
		return "/util/alert";
	}
	
	@RequestMapping(value="/user/login.do", method=RequestMethod.GET)
	public void loginForm() {
		logger.info("로그인 폼 활성화");
	}
	
	@RequestMapping(value="/user/login.do", method=RequestMethod.POST)
	public String loginProcess(User user, Model model, HttpSession session) {
		boolean loginResult = userService.Login(user);
		
		if(loginResult) {
			logger.info("로그인 성공");
			model.addAttribute("msg", "로그인 성공");
			model.addAttribute("url", "/user/main.do");
			
			session.setAttribute("login", true);
			session.setAttribute("userid", user.getU_id());
			session.setAttribute("userno", user.getU_no());
			session.setAttribute("usernick", userService.getUsernick(user).getU_nick());
			
			logger.info("세션상태 : " + session.getAttribute("login"));
			logger.info("세션 아이디 : " + session.getAttribute("userid"));
			logger.info("세션 닉네임 : " + session.getAttribute("usernick"));
			
		} else {
			logger.info("로그인실패");
			model.addAttribute("msg", "로그인 실패");
			model.addAttribute("url", "/user/login.do");
		}
		
		return "/util/alert";
	}
	
	@ResponseBody
	@RequestMapping(value="/user/idCheck.do", method=RequestMethod.POST, produces = "application/json")
	public boolean idCheck(User user) {
		
		return userService.idCheck(user);
	}
	
	@RequestMapping(value="/user/logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/user/main.do";
	}
	
	@RequestMapping(value="/user/editUserInfo.do", method=RequestMethod.GET)
	public void editUser(User user, Model model, HttpSession session) {
		logger.info("회원정보수정 폼 활성화");
		user.setU_id((String) session.getAttribute("userid"));
		model.addAttribute("user", userService.getUser(user));
		
	}
	
	@RequestMapping(value="/user/editUserInfo.do", method=RequestMethod.POST)
	public void editUserProcess(User user, Model model) {
		
		userService.editUserProc(user);
		model.addAttribute("user", userService.getUser(user));
		logger.info("회원정보수정  완료");
	}
	
	@RequestMapping(value="/user/delete.do", method=RequestMethod.GET)
	public String delete(User user, HttpSession session, Model model) {
		logger.info("회원탈퇴 활성화");
		System.out.println(user.getU_no());
		user.setU_no(user.getU_no());
		System.out.println(user.getU_no());
		userService.deleteUser(user);
		session.invalidate();
		return "/user/main";
	}
	
	@RequestMapping(value="/user/question.do", method=RequestMethod.GET)
	public void question() {
		
	}
	
}
