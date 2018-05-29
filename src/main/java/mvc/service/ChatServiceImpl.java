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
		System.out.println("5555");
		
		System.out.println(dto.getUESR_ID());
		System.out.println(dto.getChatroom_id());
		System.out.println(dto.getChat_content());
		dao.insertChat(dto);
		System.out.println("6666");
		
	}

	@Override
	public List<ChatDto> selectChat(String chatRoom) {
		
		return dao.selectChat(chatRoom);
	}

}
