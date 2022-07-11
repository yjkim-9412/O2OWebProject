package com.itwillbs.chat.model.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.*;

@Getter
@Setter
public class ChatRoomDTO {

    private String  session_name;
    private String account_email;
    private String pro_email;
    private String account_name;
    private String pro_name;
    public ChatRoomDTO( String account_email,String pro_email,String account_name,String pro_name) {
        this.pro_email=pro_email;
        this.pro_name = pro_name;
        this.account_email=account_email;
        this.account_name = account_name;

        this.session_name = UUID.randomUUID().toString();
    }



}
