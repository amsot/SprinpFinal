package mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.siot.IamportRestHttpClientJava.IamportClient;
import com.siot.IamportRestHttpClientJava.request.CancelData;
import com.siot.IamportRestHttpClientJava.response.IamportResponse;

import mvc.dto.Groups;
import mvc.dto.Meeting_reservation;
import mvc.dto.Payment;
import mvc.service.PayService;

@Controller
public class PayController {
	
	@Autowired PayService payService;

	@RequestMapping(value="/pay.do", method=RequestMethod.GET)
	public String payAPI(Groups group, Model model) {
		model.addAttribute("group_no", group.getGroup_no());
		return "group/manager/pay";
	}
	
	@RequestMapping(value="/pay.do", method=RequestMethod.POST)
	public void payAPIProc(HttpServletRequest request, HttpServletResponse response) {
		final long serialVersionUID = 1L;
		
		Payment p = new Payment();
		IamportClient client = new IamportClient("4404294394442286", "xYCKnNoMdrbroGKlbcOnuE2XeuQhdoLKnouLbTxpkJQJpA5AMTYhy0eMv54ItPtRdXCpRaPbTFVjf0U2");
		IamportResponse<com.siot.IamportRestHttpClientJava.response.Payment> payment = new IamportResponse<com.siot.IamportRestHttpClientJava.response.Payment>();	
			
		String uid = request.getParameter("imp_uid");
		String res_id = request.getParameter("res_id");
		int meeting_no = Integer.parseInt(request.getParameter("meeting_no"));
		
		try {
			payment = client.paymentByImpUid(uid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		p.setAmount(payment.getResponse().getAmount());
		p.setApply_num(payment.getResponse().getApplyNum());
		p.setBuyer_tel(payment.getResponse().getBuyerTel());
		p.setBuyer_name(payment.getResponse().getBuyerName());
		p.setImp_uid(uid);
		p.setMerchant_uid(payment.getResponse().getMerchantUid());
		p.setPaid_at(payment.getResponse().getPaidAt());
		p.setPay_method(payment.getResponse().getPayMethod());
		p.setPg(payment.getResponse().getPgProvider());
		p.setPaid_at(payment.getResponse().getPaidAt());
		p.setStatus("결제완료");
		p.setU_id("id1");
		p.setRes_id(res_id);
		p.setMeeting_no(meeting_no);
		payService.insertPay(p);
	}
	
	@RequestMapping(value="/pay/refund.do")
	public void refund(Meeting_reservation meeting) {
		payService.refundPay(meeting);
	}
	
	@RequestMapping(value="/pay/complete.do")
	public void payComplete() {
		payService.completePay();
	}
	
}
