package mvc.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;
 

 
public class EchoHandler extends TextWebSocketHandler {
	 
    private Logger logger = LoggerFactory.getLogger(EchoHandler.class);
 
    /**
     * 서버에 연결한 사용자들을 저장하는 리스트
     */
    private List<WebSocketSession> connectedUsers;
    private Map<String,List<WebSocketSession>> chatRoom;
    private List<String> chatRoomList;
    public EchoHandler() {
        connectedUsers = new ArrayList<WebSocketSession>();
        chatRoom = new HashMap<String, List<WebSocketSession>>();
        chatRoomList = new ArrayList<String>();
    }
 
    /**
     * 접속과 관련된 Event Method
     *
     * @param WebSocketSession
     *            접속한 사용자
     */
    
    
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        connectedUsers.add(session);
 
        logger.info(session.getId() + "님이 접속했습니다.");
        logger.info("연결 IP : " + session.getRemoteAddress().getHostName());
        Map<String,Object> map = session.getAttributes();
        String chatRoom_id = (String)map.get("chatRoom");
        
        
        if(!chatRoomList.contains(chatRoom_id)) {
        	chatRoomList.add(chatRoom_id);
        }
        
        if(chatRoomList.size() != chatRoom.size()) {
        	chatRoom.put(chatRoom_id, new ArrayList<WebSocketSession>());
        	chatRoom.get(chatRoom_id).add(session);
        }else if(chatRoomList.size() == chatRoom.size()) {
        	chatRoom.get(chatRoom_id).add(session);
        }
        

    }
 
    /**
     * 두 가지 이벤트를 처리
     *
     * 1. Send : 클라이언트가 서버에게 메시지를 보냄
     * 2. Emit : 서버에 연결되어 있는 클라이언트에게 메시지를 보냄
     *
     * @param WebSocketSession
     *            메시지를 보낸 클라이언트
     * @param TextMessage
     *            메시지의 내용
     */
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
 
        Map<String,Object> map = session.getAttributes();
        String chatRoom_id = (String)map.get("chatRoom");
        
        for (WebSocketSession webSocketSession : chatRoom.get(chatRoom_id)) {
                if (!session.getAttributes().get("id").equals(webSocketSession.getAttributes().get("id"))) {
                    webSocketSession.sendMessage(new TextMessage(session.getAttributes().get("id") + " ▶ " + message.getPayload()));
            } 
        }
 
        /*
         * Payload : 사용자가 보낸 메시지
         */
        logger.info(session.getId() + "님의 메시지 : " + message.getPayload());
    }
 
    /**
     * 클라이언트가 서버와 연결을 끊었을때 실행되는 메소드
     *
     * @param WebSocketSession
     *            연결을 끊은 클라이언트
     * @param CloseStatus
     *            연결 상태(확인 필요함)
     */
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        Map<String,Object> map = session.getAttributes();
        String chatRoom_id = (String)map.get("chatRoom");
        chatRoom.get(chatRoom_id).remove(session);
 
        for (WebSocketSession webSocketSession : chatRoom.get(chatRoom_id)) {
            if (!session.getAttributes().get("id").equals(webSocketSession.getAttributes().get("id"))) {
                webSocketSession.sendMessage(new TextMessage(session.getAttributes().get("id") + " ▶  퇴장했습니다." ));
        } 
    }
        
        logger.info(session.getAttributes().get("id") + "님이 퇴장했습니다.");
    }
}




