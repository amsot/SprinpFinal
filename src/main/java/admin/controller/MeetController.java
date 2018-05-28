package admin.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import admin.dto.Meet;
import admin.service.MeetService;
import admin.util.Paging;

@Controller
public class MeetController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired MeetService meetService;
	
	/**
	 *  정모 예약 관리
	 */
	@RequestMapping(value="/admin/meet/meetReserv.do")
	public void meetReserv(@RequestParam(defaultValue="0")int curPage,Model model) {
		meetService.updateMeetList();
		int total = meetService.getMeetReservTotal();
		System.out.println(total);
		
		Paging paging = new Paging(total,curPage);
		model.addAttribute("paging", paging);
		
		List meetReservList = meetService.getMeetReservPagingList(paging);
		System.out.println(meetReservList);
		model.addAttribute("meetReservList", meetReservList);
		
		
	}
	/**
	 * 정모 예약 자세히
	 */
	@RequestMapping(value="/admin/meet/meetReservDetail.do")
	public void meetReservDetail(Meet meet, Model model) {
		meet = meetService.getMeetDetail(meet);
		System.out.println(meet);
		model.addAttribute("meetDetail", meet);
	}
	
	/**
	 * 
	 * @param meet
	 * @param pw
	 * @param model
	 * 정모 삭제~!
	 */
	@RequestMapping(value="/admin/meet/meetDelete.do")
	public String meetDelete(Meet meet,@RequestParam("pw") String pw, Model model) {
		System.out.println(meet);
		if(!pw.equals("1234")) {
			model.addAttribute("msg", "삭제 실패");
			model.addAttribute("url", "/admin/meet/meetReserv.do");
			return "admin/util/alert";
		}
		boolean res = meetService.meetDelete(meet);
		if(res) {
			model.addAttribute("msg", "삭제 성공");
			model.addAttribute("url", "/admin/meet/meetReserv.do");
		}
		return "admin/util/alert";
	}
	
	
	/**
	 *  종료된 정모
	 */
	@RequestMapping(value="/admin/meet/meetEnd.do")
	public void meetEnd(@RequestParam(defaultValue="0")int curPage, Model model) {
		int cnt = meetService.getEndMeetCount();
		Paging paging = new Paging(cnt,curPage);
		
		model.addAttribute("paging", paging);
		List endMeetList = meetService.getEndMeetList(paging);
		
		model.addAttribute("endMeetList", endMeetList);
	}
	
	/**
	 * 
	 * @param meet
	 * 종료된 정모 삭제하기
	 */
	@RequestMapping(value="/admin/meet/meetEndDelete.do")
	public String meetEndDelete(Meet meet,Model model) {
		boolean res = meetService.meetDelete(meet);
		if(res) {
			model.addAttribute("msg", "삭제 성공");
			model.addAttribute("url", "/admin/meet/meetEnd.do");
		}
		return "admin/util/alert";
	}
	/**
	 *  정모 결제 승인 목록
	 */
	@RequestMapping(value="/admin/meet/meetPay.do")
	public void meetPay() {
		
	}
}
