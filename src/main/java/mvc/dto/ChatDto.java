package mvc.dto;

import java.util.Date;

public class ChatDto {

  private String chat_no;
  private String  chat_content;
  private Date chat_sendTime;
  private String  chatroom_id;
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
public String getChatroom_id() {
	return chatroom_id;
}
public void setChatroom_id(String chatroom_id) {
	this.chatroom_id = chatroom_id;
}
public int getUesr_no() {
	return uesr_no;
}
public void setUesr_no(int uesr_no) {
	this.uesr_no = uesr_no;
}
int uesr_no;
	
}
