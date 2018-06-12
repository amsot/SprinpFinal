package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.siot.IamportRestHttpClientJava.IamportClient;
import com.siot.IamportRestHttpClientJava.request.CancelData;
import com.siot.IamportRestHttpClientJava.response.IamportResponse;

import mvc.dao.PaymentDAO;
import mvc.dto.Meeting_reservation;
import mvc.dto.Payment;

@Service
public class PayServiceImpl implements PayService{
	
	@Autowired PaymentDAO dao;

	@Override
	public List getPayList() {
		return dao.getPayList();
	}

	@Override
	public void insertPay(Payment payment) {
		System.out.println(payment.toString());
		dao.insertPay(payment);
	}

	@Override
	public void deletePay() {
		dao.deletePay();
	}

	@Override
	public void completePay() {
		dao.completePay();
	}

	@Override
	public String refundPay(Meeting_reservation meeting) {
		final long serialVersionUID = 1L;
		CancelData cancelData;
		IamportClient client = new IamportClient("4404294394442286", "xYCKnNoMdrbroGKlbcOnuE2XeuQhdoLKnouLbTxpkJQJpA5AMTYhy0eMv54ItPtRdXCpRaPbTFVjf0U2");
		IamportResponse<com.siot.IamportRestHttpClientJava.response.Payment> cancelPayment = new IamportResponse<com.siot.IamportRestHttpClientJava.response.Payment>();
		
		Payment payment = dao.getPayInfo(meeting.getMeeting_no());
		System.out.println(meeting.getMeeting_no());
		System.out.println(payment.toString());
		
		String uid=payment.getU_id();
		
		cancelData = new CancelData(uid, true);
		try {
			cancelPayment = client.cancelPayment(cancelData);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String massege = null;
		String msg = cancelPayment.getMessage();
		
		if(msg!=null) {
			massege=msg;
		}else {
			dao.refundPay(payment);
			massege="환불처리가 완료되었습니다";
		}
		return massege;
	}

}
