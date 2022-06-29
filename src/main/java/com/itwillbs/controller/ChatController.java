package com.itwillbs.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.web.socket.*;
import org.springframework.web.socket.handler.TextWebSocketHandler;
import java.util.HashSet;
import java.util.Set;



public class ChatController extends TextWebSocketHandler implements InitializingBean {

    private static final Set<WebSocketSession> sessionSet= new HashSet<WebSocketSession>();
    private  static  final Logger logger = LoggerFactory.getLogger(ChatController.class);

    public ChatController() {
        super();
        logger.info("create SocketHandler instance");
    }

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        super.afterConnectionEstablished(session);

        sessionSet.add(session);
        logger.info("add session");
    }

    @Override
    public void handleMessage(WebSocketSession session, WebSocketMessage<?> message) throws Exception {
        super.handleMessage(session, message);
        logger.info("receive message"+message.toString());
    }

    @Override
    public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
        super.handleTransportError(session, exception);
        logger.error("web socket error");
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        super.afterConnectionClosed(session, status);
        sessionSet.remove(session);
        logger.info("remove session");

    }

    @Override
    public boolean supportsPartialMessages() {
        logger.info("call method");

        return super.supportsPartialMessages();
    }

    public void sendMessage(String message) {
        for (WebSocketSession session : sessionSet) {
            if (session.isOpen()) {
                try {
                    session.sendMessage(new TextMessage(message));
                } catch (Exception ignored) {
                    logger.error("fail to send message!", ignored);
                }
            }
        }
    }
    @Override
    public void afterPropertiesSet() throws Exception {
        Thread thread = new Thread(){
            int i=0;
            @Override
            public void run() {
                while (true){
                    try {
                        sendMessage ("send message index "+i++);

                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        break;
                    }
                }
            }
        };
        thread.start();
    }

}//Chatcontroller


