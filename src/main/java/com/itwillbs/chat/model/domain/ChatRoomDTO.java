package com.itwillbs.chat.model.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
public class ChatRoomDTO {

    private String roomdId;
    private String roomName;

    public static ChatRoomDTO createRoom(String name){
        ChatRoomDTO roomDTO = new ChatRoomDTO();
        roomDTO.roomdId = UUID.randomUUID().toString();
        roomDTO.roomName = name;
        return roomDTO;
    }
}
