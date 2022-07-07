package com.itwillbs.chat.model.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.*;

@Getter
@Setter
@NoArgsConstructor
public class ChatRoomDTO {

    private String  roomId;
    public static ChatRoomDTO create(String roomId) {
        ChatRoomDTO room = new ChatRoomDTO();
        room.roomId = UUID.randomUUID().toString();
        return room;
    }



}
