package admin.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	/**
	 * 관리자 로그인 페이지
	 * id : jimin
	 * pw : 1234
	 * -> 관리자 정보 디비는 아직 따로 안 만들어놈.
	 * 
	 * /admin/login/login.do
	 * /admin/login/loginProc.do
	 */
	@RequestMapping(value="/admin/login/login.do", method=RequestMethod.GET)
	public void login() {
		
	}
	
	@RequestMapping(value="/admin/login/loginProc.do", method=RequestMethod.POST)
	public String loginProc(@RequestParam(value="adminId") String adminId, 
			@RequestParam(value="adminPw") String adminPw, HttpSession session  ) {

		if(adminId!=null&&adminPw!=null) {
			System.out.println("11");
			if(adminId.equals("jimin")&&adminPw.equals("1234")) {
				System.out.println("관리자로 로그인");
				session.setAttribute("login", true);
				session.setAttribute("id", "관리자");
				return "redirect:/admin/main.do";
			}else {
				//아이디와 비밀번호가 틀린 경우
				System.out.println("12");
				return "redirect:/admin/login/login.do";
			}
		}
		System.out.println("13");
		return "redirect:/admin/login/login.do";
		
	}
	
	/**
	 * /admin/login/loginError.do
	 * 관리자로 로그인 안 했을 시
	 * 인터셉터 발동
	 * 
	 */
	@RequestMapping(value="/admin/login/loginError.do")
	public void loginError() {
		
	}
	
	/**
	 * /admin/login/logout.do
	 * 로그아웃
	 */
	@RequestMapping(value="/admin/login/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/admin/login/login.do";
	}
}
