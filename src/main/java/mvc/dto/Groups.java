package mvc.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data 
@Component
public class Groups {

	private int group_no;
	
	private String group_id;
	
	private String location;
	
	private String manager_id;
		
	private int personnel;
	
	private String chat_id;
	
	private String intro;
	
	private String main_cat;
	
	private String small_cat;
	
}
