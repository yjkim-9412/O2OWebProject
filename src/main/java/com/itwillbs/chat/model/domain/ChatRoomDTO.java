package com.itwillbs.chat.model.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.*;

@Getter
@Setter
@NoArgsConstructor
public class ChatRoomDTO {

    private String  session_name;
    public static ChatRoomDTO create(String session_name) {
        ChatRoomDTO room = new ChatRoomDTO();
        room.session_name = UUID.randomUUID().toString();
        return room;
    }



}
