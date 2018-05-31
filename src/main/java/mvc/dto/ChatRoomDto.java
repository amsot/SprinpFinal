package mvc.dto;

public class ChatRoomDto {

	private String chatroom_no;
	private String chatroom_id ;
	private String user_list;
	
	public String getChatroom_no() {
		return chatroom_no;
	}
	public void setChatroom_no(String chatroom_no) {
		this.chatroom_no = chatroom_no;
	}
	public String getChatroom_id() {
		return chatroom_id;
	}
	public void setChatroom_id(String chatroom_id) {
		this.chatroom_id = chatroom_id;
	}
	public String getUser_list() {
		return user_list;
	}
	public void setUser_list(String user_list) {
		this.user_list = user_list;
	}
	
}
