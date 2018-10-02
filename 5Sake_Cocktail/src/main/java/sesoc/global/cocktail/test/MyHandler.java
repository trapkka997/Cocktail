package sesoc.global.cocktail.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.BinaryMessage;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.PongMessage;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import sesoc.global.cocktail.vo.User;

public class MyHandler extends TextWebSocketHandler{
	private static Logger logger = LoggerFactory.getLogger(MyHandler.class);
	private List<WebSocketSession> sessionList = new ArrayList<>();
	
	@Override
	protected void handleBinaryMessage(WebSocketSession arg0, BinaryMessage arg1) {
		super.handleBinaryMessage(arg0, arg1);
	}
	// 클라이언트와 연결이후 실행
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// TODO Auto-generated method stub
		logger.info("{} 연결됨", session.getId());
		sessionList.add(session);
		super.afterConnectionEstablished(session);
	}

	@Override
	public void handleMessage(WebSocketSession session, WebSocketMessage<?> message) throws Exception {
		// TODO Auto-generated method stub
		super.handleMessage(session, message);
	}
	// 클라이언트가 서버로 메시지를 전송했을 때 실행되는 메서드
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		logger.info("{}로 부터 {} 받음", session.getId(), message.getPayload());
		Map<String, Object> map = session.getAttributes();
		System.out.println(map.get("useremail"));
		System.out.println(map.get("savedFileName"));
		for(WebSocketSession sess : sessionList) {
			sess.sendMessage(new TextMessage(map.get("useremail")+" : "+map.get("savedFileName") +" : "+ message.getPayload()));
		}
	}

	@Override
	protected void handlePongMessage(WebSocketSession session, PongMessage message) throws Exception {
		// TODO Auto-generated method stub
		super.handlePongMessage(session, message);
	}

	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		// TODO Auto-generated method stub
		super.handleTransportError(session, exception);
	}
	 // 클라이언트와 연결을 끊었을 때 실행되는 메소드
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		 logger.info("{} 연결 끊김", session.getId());
		 sessionList.remove(session);
		super.afterConnectionClosed(session, status);
	}

	@Override
	public boolean supportsPartialMessages() {
		// TODO Auto-generated method stub
		return super.supportsPartialMessages();
	}
	
	
	

}
