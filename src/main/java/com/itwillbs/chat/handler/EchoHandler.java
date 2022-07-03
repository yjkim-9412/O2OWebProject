package com.itwillbs.chat.handler;

import com.itwillbs.chat.domain.MessageDTO;
import com.itwillbs.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.google.gson.Gson;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.Map;


public class EchoHandler extends TextWebSocketHandler {


    @Inject
    private MemberService memberService;

    private static final Logger logger = LoggerFactory.getLogger(EchoHandler.class);
    private Map<String, WebSocketSession> sessionMap = new HashMap<String, WebSocketSession>();

   // private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {

        String chatMember = String.valueOf(session.getAttributes().get("user"));
        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>" + chatMember);
        sessionMap.put(chatMember,session);
        System.out.println(session);
        logger.info("{} 연결되었습니다.", session.getId()+":"+chatMember);
        System.out.println("체팅 참여자 : " + chatMember);

    }


    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        String chatMember = (String) session.getAttributes().get("user");
        logger.info("{}로 부터 {}를 전달 받았습니다.", chatMember, message.getPayload());
        Gson gson = new Gson();
        MessageDTO msg = gson.fromJson(message.getPayload(), MessageDTO.class);
        System.out.println(msg);
        TextMessage sendMsg = new TextMessage(gson.toJson(msg));
        for (WebSocketSession webSocketSession : sessionMap.values()) {
            webSocketSession.sendMessage(sendMsg);
        }
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        String chatMember = (String) session.getAttributes().get("user");
        sessionMap.put(chatMember,session);
        logger.info("{} 연결이 끊김", session.getId() + chatMember);
        System.out.println("체팅 퇴장 : " + chatMember);
    }
}//Chatcontroller


