package mvc.dao;

import java.util.List;

import mvc.dto.ChatDto;

public interface ChatDao {

	public void insertChat(ChatDto dto);
	public List<ChatDto> selectChat(String chatRoom);
	
}
