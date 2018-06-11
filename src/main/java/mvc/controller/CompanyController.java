package mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mvc.dto.Company;
import mvc.service.CompanyService;

@Controller
public class CompanyController {

	@Autowired CompanyService com;
	//메인
		@RequestMapping(value="/company/main.do", method=RequestMethod.GET)
		 public void main() {
			System.out.println("메인페이지");
		}
		
		//회원가입
		@RequestMapping(value="/company/join.do", method=RequestMethod.GET)
		public void join() {
			System.out.println("회원가입 페이지");
			

		}
		
		//회원가입Proc
		@RequestMapping(value="/company/join.do", method=RequestMethod.POST)
		public String joinProc(Company company, Model model) {
			System.out.println(company);
			 boolean joinResult = com.join(company);
			 
			 if(joinResult) {
				
				 model.addAttribute("msg","회원가입 성공했습니다");
				 model.addAttribute("url","/company/main.do");
			 }else {
				
				 model.addAttribute("msg","회원가입 실패했습니다. 다시 작성해주세요");
				 model.addAttribute("url","/company/join.do");
			 }
			return "util/alert";
		}
		
		//아이디 중복체크
		@ResponseBody
		@RequestMapping(value="/company/idCheck.do",method=RequestMethod.POST, produces = "application/json")
		public String idCheck(Company company) {
			return ""+com.idCheck(company);
		}
		
		//로그인폼
		@RequestMapping(value="/company/login.do",method=RequestMethod.GET)
		public void login() {
			
		}
		
		//로그인 활성화 
		@RequestMapping(value="/company/main.do",method=RequestMethod.POST)
		public void loginProcess(Company company,HttpSession session) {
			if(com.getOneCompany(company) ) {
				session.setAttribute("com_id", company.getCom_id() );
			}
		}
		//로그아웃
		@RequestMapping(value="/company/logout.do",method=RequestMethod.GET)
		public String logout(HttpSession session,Model model ) {
			 session.invalidate();
			System.out.println("로그아웃");
			
			return "redirect:/company/main.do";
		}	
		
}
