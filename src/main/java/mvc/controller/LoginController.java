package mvc.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mvc.dto.Writer;
import mvc.service.MemberService;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	//로거 이름 변경 
	
	@Autowired MemberService m;
	
	//메인
	@RequestMapping(value="/login/main.do", method=RequestMethod.GET)
	 public void main() {
		logger.info("메인페이지활성화");
		System.out.println("메인페이지");
	}
	
	//로그인폼
	@RequestMapping(value="/login/login.do", method=RequestMethod.GET)
	public void login() {
		
	}
	//로그인활성화
	@RequestMapping(value="/login/main.do", method=RequestMethod.POST)
	public void loginProc(Writer writer,HttpSession session) {
		
		System.out.println("로그인페이지 활성화");
		if( m.getOneUser(writer) ) {
			session.setAttribute("userid",writer.getUserid() );
		}
		
	}
	
	//회원가입
	@RequestMapping(value="/login/join.do", method=RequestMethod.GET)
	public void join() {

	}
	
	//회원가입Proc
	@RequestMapping(value="/login/join.do", method=RequestMethod.POST)
	public String joinProc(Writer writer, Model model) {
		System.out.println(writer);
		 boolean joinResult = m.join(writer);
		 
		 if(joinResult) {
			 logger.info("회원가입성공");
			 model.addAttribute("msg","회원가입성공");
			 model.addAttribute("url","/login/main.do");
		 }else {
			 logger.info("회원가입실패");
			 model.addAttribute("msg","회원가입실패 ");
			 model.addAttribute("url","/login/join.do");
		 }
		return "util/alert";
	}
	//로그아웃
	@RequestMapping(value="/login/logout.do",method=RequestMethod.GET)
	public String logout(HttpSession session,Model model ) {
		 session.invalidate();
		System.out.println("로그아웃");
		
		return "redirect:/login/main.do";
	}				
	
	
}
