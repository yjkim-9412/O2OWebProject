package com.itwillbs.chat.model.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.*;

@Getter
@Setter
@NoArgsConstructor
public class ChatRoomDTO {

    private Long roomId;
    public static ChatRoomDTO create(Long roomId) {
        ChatRoomDTO room = new ChatRoomDTO();
        room.roomId = Long.parseLong(UUID.randomUUID().toString());
        return room;
    }



}
