package mvc.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data 
@Component
public class Com_userble {
	
	private int pla_no;
	private String u_id;
	private int personnel;
	private int rstart;
	private int rend;
	private String reserDate;
	private int meeting_no;
	
}
