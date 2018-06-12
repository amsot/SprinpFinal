package mvc.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class Meeting_reservation {
	
	private int meeting_no;
	
	private int rstart;
	
	private int rend;
	
	private String reservation_location;
	
	private int personnel;

	private int group_no;
	
	private String status;
	
	private String res_day;
	
	private int guest;
	
	private int fee;
	
}
