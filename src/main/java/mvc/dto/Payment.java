package mvc.dto;

import java.math.BigDecimal;
import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data 
@Component
public class Payment {
	
	private int payment_no;
	
	private String imp_uid;
	
	private String merchant_uid;
	
	private BigDecimal amount;
	
	private String pay_method;
	
	private String pg;
	
	private String apply_num;
	
	private String buyer_name;
	
	private String buyer_tel;
	
	private Date paid_at;
	
	private String status;
	
	private String res_id;
	
	private String company_name;
	
	private int meeting_no;
	
	private String u_id;
	
}
