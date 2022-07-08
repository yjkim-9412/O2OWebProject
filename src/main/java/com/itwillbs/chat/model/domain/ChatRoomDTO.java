package com.itwillbs.chat.model.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.*;

@Getter
@Setter
public class ChatRoomDTO {

    private String  session_name;
    public ChatRoomDTO() {
        this.session_name = UUID.randomUUID().toString();
    }



}
