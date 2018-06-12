package mvc.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import mvc.dto.Com_userble;
import mvc.dto.Groups;
import mvc.dto.Meeting_guest;
import mvc.dto.Meeting_reservation;

import mvc.service.GroupService;
import mvc.service.MeetingService;
import mvc.service.PayService;

@Controller
public class MeetingController {
	
	@Autowired GroupService groupService;
	@Autowired MeetingService meetingService;
	@Autowired PayService payService;
	
	@RequestMapping(value="/group/meeting/registration.do", method=RequestMethod.GET)
	public String groupMeeting(Groups group, Model model) {
		model.addAttribute("group", group);
		model.addAttribute("id", "id1");
		model.addAttribute("uName", "name1");
		model.addAttribute("uPNo", "000-0000-0000");
		return "group/manager/meetingRegistration";
	}
	
	@RequestMapping(value="/group/meeting/registration.do", method=RequestMethod.POST)
	public String groupMeetingProc(Meeting_reservation meeting, String addr, String addrDetail, String uId, @RequestParam("pla_no") int pla_no) {
		String reservation_location = addr + addrDetail;
		meeting.setReservation_location(reservation_location);
		meeting.setStatus("예약");
		meetingService.insertMeeting(meeting);
		String res_id = uId+meeting.getRstart();
		int amount = (int) (meeting.getFee()*meeting.getPersonnel()*0.1);
		Groups group = new Groups();
		group.setGroup_no(meeting.getGroup_no());
		Meeting_reservation mno = meetingService.getCurrentMeeting(group);
		if(pla_no!=0) {
			Com_userble userble = new Com_userble();
			userble.setPla_no(pla_no);
			userble.setPersonnel(meeting.getPersonnel());
			userble.setRend(meeting.getRend());
			userble.setRstart(meeting.getRstart());
			userble.setReserDate(meeting.getRes_day());
			userble.setU_id(uId);
			userble.setMeeting_no(mno.getMeeting_no());
			meetingService.insertUserble(userble);
		}
		return "redirect:/pay.do?id="+uId+"&price="+amount+"&s_name="+reservation_location+"&res_id="+res_id+"&amount="+amount+"&meeting_no="+mno.getMeeting_no()+"&group_no="+meeting.getGroup_no();
	}
	
	@RequestMapping(value="/group/meeting/detail.do")
	public void meetingInfo(Meeting_reservation meeting) {
		meetingService.getMeetingInfo(meeting);
	}
	
	@RequestMapping(value="/group/meeting/join.do", method=RequestMethod.POST, produces = "application/text; charset=utf8")
	public @ResponseBody String meetingJoin(Meeting_guest guest, Model model) {
		String msg = null;
		if(meetingService.isGuest(guest)<1) {
			meetingService.insertMeetingGuest(guest);
			Meeting_reservation meeting = new Meeting_reservation();
			meeting.setMeeting_no(guest.getMeeting_no());
			meetingService.updateMeeting(meeting);
			msg = "신청이 완료되었습니다";
		}else {
			msg="이미 신청된 모임입니다";
		}
		return msg;
	}
	
	@RequestMapping(value="/group/meeting/list.do")
	public String meetingList(Groups group, Model model) {
		model.addAttribute("group", groupService.getGroupInfo(group));
		model.addAttribute("list", meetingService.getMeetingList(group));
		model.addAttribute("uid", "id1");
		return "group/manager/meetingList";
	}
	
	@RequestMapping(value="/group/meeting/guestList.do")
	public void meetingGuest(Meeting_reservation meeting, Model model) {
		model.addAttribute("member", meetingService.getMeetingGuest(meeting));
	}
	
	@RequestMapping(value="/group/meeting/locList.do")
	public String meetingLocationList(Model model) {
		model.addAttribute("list", meetingService.getPlaceList());
		return "group/manager/locationSelect";
	}
	

	@RequestMapping(value="/group/meeting/cancel.do", method=RequestMethod.GET)
	public String meetingCancel(Meeting_reservation meeting, Model model) {
		Date memDelStartDate = null; // 삭제 시작일

		Date currentDate = null; // 현재날짜 Date

		String oTime = ""; // 현재날짜

		String compareVal = "N";
		
		String msg;
		String url = "/group/meeting/list.do?group_no="+meeting.getGroup_no();
		
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
		Date currentTime = new Date();
		oTime = mSimpleDateFormat.format ( currentTime ); //현재시간 (String)

		try {
			memDelStartDate = mSimpleDateFormat.parse(meeting.getRes_day());
			currentDate =  mSimpleDateFormat.parse( oTime );

		} catch (ParseException e) {
			e.printStackTrace();
		}
					
		int compare = currentDate.compareTo( memDelStartDate ); // 날짜비교
		if(compare>0) {
			msg="예약일자가 이미 지난 경우에는 취소가 불가합니다.";
			msg+="특수한 사정(재해, 질병, 예약한 제휴업체의 문제)의 경우로 취소하시는 경우에는 문의 후 운영진 판단하에 취소 및 환불 처리해드립니다.";
		}else {
			msg = payService.refundPay(meeting);
			meetingService.deleteMeeting(meeting);
			
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "group/redirect";
	}
}
