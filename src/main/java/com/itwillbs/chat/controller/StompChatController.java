package com.itwillbs.chat.controller;



import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.service.ChatService;
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
    @Autowired
    private ChatService chatService;


    @MessageMapping("/chat/message")
    public ChatMessageDTO sendMessage(ChatMessageDTO messages) throws Exception {
        System.out.println("세션이름 :" + messages. getSession_name());
        System.out.println("보낸내용 :" + messages.getMessage());
        System.out.println("송신자 :" + messages.getSender_name());
        System.out.println("수진자 :" + messages.getReceiver_name());
        chatService.saveChat(messages);
        sendAlarm(messages);

        messagingTemplate.convertAndSend("/topic/room/" + messages.getSession_name(), messages);


        return messages;
    }
    @MessageMapping("/chat/enter")
    public void enter(ChatMessageDTO message){
        message.setMessage(message.getSender_name()+"님이 입장했습니다");
        System.out.println(message.getMessage());
        messagingTemplate.convertAndSend("/topic/room/" + message.getSession_name(), message);
    }

    public void sendAlarm(ChatMessageDTO chatMessageDTO){
        System.out.println("알림전송!" + chatMessageDTO.getReceiver());
        messagingTemplate.convertAndSend("/topic/inc/top/"+chatMessageDTO.getReceiver(),chatMessageDTO);
    }


}
