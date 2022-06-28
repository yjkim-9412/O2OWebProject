package com.itwillbs.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.util.ArrayList;
import java.util.List;

@Controller
@ServerEndpoint(value = "/chat")
public class ChatController {

    private static final List<Session> sessionList= new ArrayList<Session>();
    private  static  final Logger logger = LoggerFactory.getLogger(ChatController.class);
    public ChatController() {
        System.out.println("웹소켓 실행 객체생성");

    }


    @OnOpen

    public void onOpen(Session session){
        logger.info("Open session id:"+session.getId());
        try {
            final RemoteEndpoint.Basic basic=session.getBasicRemote();
            basic.sendText("대화방이 열렸습니다");
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
        sessionList.add(session);

    }

    private void sendAllSessionToMessage(Session self, String sender, String message) {
        try {
            for (Session session : ChatController.sessionList){
                if(!self.getId().equals(session.getId())){
                    session.getBasicRemote().sendText(sender+" : "+message);
                }
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }

    }

    @OnMessage
    public void onMessage(String message, Session session) {

        String sender = message.split(",")[1];
        message = message.split(",")[0];

        logger.info("Message From"+sender+" : "+message);
        try{
            final RemoteEndpoint.Basic basic = session.getBasicRemote();
            basic.sendText("자신 : "+message);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }

        sendAllSessionToMessage(session, sender, message);
    }

    @OnError
    public void onError(Throwable e,Session session){

    }
    @OnClose
    public void onClose(Session session) {
        logger.info("Session"+session.getId()+" has ended");
        sessionList.remove(session);
    }
}


