package mvc.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class Meeting_guest {
	
	private int meeting_no;
	
	private String u_id;

}
 