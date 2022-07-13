package com.itwillbs.chat.model.domain;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class ChatRoomEnterDTO {
    private String session_name;
    private String pro_email;
    private String account_email;
    private String account_name;
    private String pro_name;





    public ChatRoomEnterDTO(ChatRoomDTO chatRoomDTO) {
        this.account_email = chatRoomDTO.getAccount_email();
        this.pro_email = chatRoomDTO.getPro_email();
        this.session_name = chatRoomDTO.getSession_name();
        this.pro_name=chatRoomDTO.getPro_name();
        this.account_name=chatRoomDTO.getAccount_name();
    }
}
