package mvc.dto;

import java.util.Date;

public class ChatDto {

	private String chat_no;
	private String  chat_content;
	private Date chat_sendTime;
	private String  chatroom_no;
	private String UESR_ID;
	
	public String getChatroom_no() {
		return chatroom_no;
	}
	public void setChatroom_no(String chatroom_no) {
		this.chatroom_no = chatroom_no;
	}
	public String getUESR_ID() {
		return UESR_ID;
	}
	public void setUESR_ID(String uESR_ID) {
		UESR_ID = uESR_ID;
	}
	public String getChat_no() {
		return chat_no;
	}
	public void setChat_no(String chat_no) {
		this.chat_no = chat_no;
	}
	public String getChat_content() {
		return chat_content;
	}
	public void setChat_content(String chat_content) {
		this.chat_content = chat_content;
	}
	public Date getChat_sendTime() {
		return chat_sendTime;
	}
	public void setChat_sendTime(Date chat_sendTime) {
		this.chat_sendTime = chat_sendTime;
	}


}
