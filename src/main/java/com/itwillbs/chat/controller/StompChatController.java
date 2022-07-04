package com.itwillbs.chat.controller;



import com.itwillbs.chat.model.domain.ChatMessageDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.web.bind.annotation.RestController;


@Slf4j
@RestController
public class StompChatController {


    @Autowired
    private SimpMessageSendingOperations messagingTemplate;


    @MessageMapping("/chat/message")
    public ChatMessageDTO sendMessage(ChatMessageDTO message) throws Exception {
        System.out.println("sendMessage>>" + message);
        System.out.println("ID=" + message.getSender());
        System.out.println("MSG=" + message.getMessage());
        System.out.println("RoomId= " + message.getRoomId());

        messagingTemplate.convertAndSend("/topic/room/" + message.getRoomId(), message);
//		messagingTemplate.convertAndSendToUser(message.getId(), "/topic/" + message.getRoomid(), message.getMsg());

        return message;
    }
    @MessageMapping("/chat/enter")
    public void enter(ChatMessageDTO message){
        message.setMessage(message.getSender()+"님이 입장했습니다");
        System.out.println(message.getMessage());
        messagingTemplate.convertAndSend("/topic/room/" + message.getRoomId(), message);
    }


}
