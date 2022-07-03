package com.itwillbs.chat.controller;



import com.itwillbs.chat.model.domain.ChatMessageDTO;

import lombok.RequiredArgsConstructor;

import lombok.extern.slf4j.Slf4j;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@Slf4j
@RestController
public class StompChatController {

    private final SimpMessageSendingOperations sendingOperations;

    @MessageMapping("/chat/message")
    public void enter(ChatMessageDTO chatMessageDTO){
        if(ChatMessageDTO.MessageType.ENTER.equals(chatMessageDTO.getType())){
            chatMessageDTO.setMessage(chatMessageDTO.getSender()+"님이 입장했습니다");

        }
        sendingOperations.convertAndSend("/topic/chat/room/"+chatMessageDTO.getRoomId(),chatMessageDTO);
    }


}
