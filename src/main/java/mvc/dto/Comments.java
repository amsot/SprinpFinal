package mvc.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data 
@Component
public class Comments {
	private String user_nick;
	private String comments;
	private int board_no;
	private int comments_no;
}
