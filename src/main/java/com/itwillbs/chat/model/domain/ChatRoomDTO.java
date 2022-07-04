package com.itwillbs.chat.model.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.socket.WebSocketSession;

import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
public class ChatRoomDTO {

    private String roomdId;
    private String roomName;
    private Set<WebSocketSession> sessions = new HashSet<>();

    public static ChatRoomDTO createRoom(String name){
        ChatRoomDTO roomDTO = new ChatRoomDTO();
        roomDTO.roomdId = UUID.randomUUID().toString();
        roomDTO.roomName = name;
        return roomDTO;
    }
}
