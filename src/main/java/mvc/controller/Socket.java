package mvc.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.WebSocketSession;

import mvc.dao.ChatDao;
import mvc.dto.ChatDto;
import mvc.service.ChatService;
import mvc.service.ChatServiceImpl;

@Controller
public class Socket {

	
	private List<String> userList;
	private Map<String,List<String>> chatRoomUser;
	private List<String> chatRoomList;
	public Socket() {
		userList = new ArrayList<String>();
		chatRoomUser = new  HashMap<String, List<String>>();
		chatRoomList = new ArrayList<String>();
	}


	@Autowired ChatService s;
	
	@RequestMapping("/login")
	public String login() {
		return "chatting/login";
	}
	@RequestMapping("/chat")
	public String viewChattingPage(String id,String chatRoom, HttpSession session) {

		session.setAttribute("id", id);
		session.setAttribute("chatRoom", chatRoom);

		if(!chatRoomList.contains(chatRoom)) {
			chatRoomList.add(chatRoom);
		}
		if(chatRoomList.size() != chatRoomUser.size()) {
			chatRoomUser.put(chatRoom, new ArrayList<String>());
			chatRoomUser.get(chatRoom).add(id);
		}else if(chatRoomList.size() == chatRoomUser.size() && !chatRoomUser.get(chatRoom).contains(id)) {
			chatRoomUser.get(chatRoom).add(id);
		}

		System.out.println(chatRoomUser);

		for(String chat_id : chatRoomList) {
			if(chat_id.equals(chatRoom)) {
				session.setAttribute("userLiest", chatRoomUser.get(chat_id));
			}
		}

		return "chatting/chat";
	}
	
	@ResponseBody
	@RequestMapping(value="/chat/db",method = RequestMethod.POST)
	public String chatdb(@RequestBody String message,HttpSession session) {
		
		ChatDto dto = new ChatDto();
		System.out.println(message);
		System.out.println((String)session.getAttribute("chatRoom"));
		System.out.println((String)session.getAttribute("id"));
		dto.setChat_content(message);
		dto.setChatroom_id((String)session.getAttribute("chatRoom"));
		dto.setUESR_ID((String)session.getAttribute("id"));
		
		s.insertChat(dto);

		return "hihi";
		
	}



}
