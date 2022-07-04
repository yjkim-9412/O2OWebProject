package com.itwillbs.chat.controller;



import com.itwillbs.chat.model.domain.ChatMessageDTO;

import lombok.RequiredArgsConstructor;

import lombok.extern.slf4j.Slf4j;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.Message;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@Slf4j
@RestController
public class StompChatController {

    //private  final SimpMessageSendingOperations sendingOperations;
    @Autowired
    private SimpMessageSendingOperations messagingTemplate;

    @MessageMapping("/chatx")
    @SendTo("/topic/message")
    public String tttx(String message) throws Exception {
        System.out.println("TTT>>" + message);
        return message;
    }
    @MessageMapping("/chat")
//	@SendTo("/topic/message")
    public ChatMessageDTO sendMessage(ChatMessageDTO message) throws Exception {
        System.out.println("TTT>>" + message);
        System.out.println("ID=" + message.getSender());
        System.out.println("MSG=" + message.getMessage());

        messagingTemplate.convertAndSend("/topic/" + message.getRoomId(), message);
//		messagingTemplate.convertAndSendToUser(message.getId(), "/topic/" + message.getRoomid(), message.getMsg());

        return message;
    }
    @MessageMapping("/chat/json")
    @SendTo("/topic/message")
    public ChatMessageDTO enter(ChatMessageDTO chatMessageDTO){
        //if(ChatMessageDTO.MessageType.ENTER.equals(chatMessageDTO.getType())){
            chatMessageDTO.setMessage(chatMessageDTO.getSender()+"님이 입장했습니다");

       // }
        //sendingOperations.convertAndSend("/topic/chat/room/"+chatMessageDTO.getRoomId(),chatMessageDTO);
        return chatMessageDTO;
    }


}
