package mvc.service;

import mvc.dto.ChatDto;

public interface ChatService {

	
	public void insertChat(ChatDto dto);
	public ChatDto selectChat(ChatDto dto);
}
