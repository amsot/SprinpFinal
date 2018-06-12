package mvc.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class Member {
	
	private int group_no;
	
	private String u_id;
	
}
