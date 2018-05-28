package mvc.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.socket.WebSocketSession;

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


}
