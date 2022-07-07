package com.itwillbs.chat.model.domain;


import lombok.*;

import java.time.LocalDate;


@Getter
@Setter
public class ChatMessageDTO {

    //채팅방 ID
    private String roomId;
    //보내는 사람
    private String sender;
    //내용
    private String message;

    private String senderM;

    private LocalDate time;

    private ChatRoomDTO chatRoomDTO;


}
