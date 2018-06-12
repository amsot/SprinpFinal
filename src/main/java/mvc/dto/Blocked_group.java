package mvc.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component 
public class Blocked_group {
	
	private int group_no;
	
	private String blocked_at;
	
	private String block_term;
	
	private String reason;
	
}
