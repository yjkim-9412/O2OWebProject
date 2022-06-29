package com.itwillbs.controller;

import com.itwillbs.dao.ChatDAO;
import com.itwillbs.domain.ChatRoomDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.MessageDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.google.gson.Gson;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;


public class ChatController extends TextWebSocketHandler {
    @Inject
    private ChatDAO chatDAO;
    private final List<WebSocketSession> connectedUsers;
    private  static  final Logger logger = LoggerFactory.getLogger(ChatController.class);
    public ChatController() {
        connectedUsers = new ArrayList<WebSocketSession>();
    }

    private Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();


    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        logger.info(session.getId() + "연결 됨");
        users.put(session.getId(),session);
        connectedUsers.add(session);
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        logger.info(session.getId() + "연결 종료");
        users.put(session.getId(), session);
        connectedUsers.add(session);
    }

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        System.out.println(message.getPayload());

        Map<String,Object> map = null;

        MessageDTO messageDTO = MessageDTO.convertMessage(message.getPayload());

        System.out.println("1 : " +messageDTO.toString());

        ChatRoomDTO chatRoomDTO = new ChatRoomDTO();
        chatRoomDTO.setCLASS_class_id(messageDTO.getCLASS_class_id());
        chatRoomDTO.setPRO_pro_email(messageDTO.getPRO_pro_email());
        chatRoomDTO.setMember_member_email(messageDTO.getMember_user_email());

        ChatRoomDTO croom = null;
        if (!messageDTO.getMember_user_email().equals(messageDTO.getPRO_pro_email())){
            System.out.println("a");

            if(chatDAO.isRoom(chatRoomDTO)==null){
                System.out.println("b");
                chatDAO.createRoom(chatRoomDTO);
                System.out.println("d");
                croom = chatDAO.isRoom(chatRoomDTO);
            }else {
                System.out.println("C");
                croom = chatDAO.isRoom(chatRoomDTO);
            }
        }else {
            croom = chatDAO.isRoom(chatRoomDTO);
        }
        messageDTO.setCHATROOM_chatroom_id(croom.getChatroom_id());
        if(croom.getMember_member_email().equals(messageDTO.getMessage_sender())) {

            messageDTO.setMessage_receiver(chatRoomDTO.getPRO_pro_email());
        }else{
            messageDTO.setMessage_receiver(chatRoomDTO.getMember_member_email());
        }

        for(WebSocketSession webSocketSession : connectedUsers) {
            map = webSocketSession.getAttributes();
            MemberDTO login = (MemberDTO) map.get("login");

            //수신자
            if(login.getEmail().equals(messageDTO.getMessage_sender())) {
                Gson gson = new Gson();
                String msgJson = gson.toJson(messageDTO);
                webSocketSession.sendMessage(new TextMessage(msgJson));
            }
        }
    }

    @Override
    public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
        logger.info(session.getId() + "익셉션: " + exception.getMessage());
    }


}//Chatcontroller


