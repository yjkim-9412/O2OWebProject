package com.itwillbs.chat.model.domain;


import lombok.*;



@Getter
@Setter
public class ChatMessageDTO {

    //채팅방 ID
    private Long roomId;
    //보내는 사람
    private String sender;
    //내용
    private String message;

    private String receiver;

    private String senderM;

}