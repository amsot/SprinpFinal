package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.dto.Payment;

@Repository
public interface PaymentDAO {
	
	public List getPayList();
	
	public void insertPay(Payment payment);
	
	public void deletePay();
	
	public void completePay();
	
	public void refundPay(Payment payment);

	public Payment getPayInfo(int meeting_no);
	
}
