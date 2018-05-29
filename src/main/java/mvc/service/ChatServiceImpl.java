package mvc.service;

import java.util.List;

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

	@Override
	public List<ChatDto> selectChat(String chatRoom) {
		
		return dao.selectChat(chatRoom);
	}

}
