package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.ChatDao;
import mvc.dto.ChatDto;

@Service
public class ChatServiceImpl implements ChatService{

	@Autowired ChatDao dao;
	
	public void insertChat(ChatDto dto) {
		dao.insertChat(dto);
		
	}

}
