package com.itwillbs.chat.repository;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import java.util.*;

@Repository
public class ChatRepository {
    private Map<String, ChatRoomDTO> chatRooms;

    @PostConstruct
    private void init() {
        chatRooms = new LinkedHashMap<>();

    }

    public List<ChatRoomDTO> findAllRoom() {
        List<ChatRoomDTO> result = new ArrayList<>(chatRooms.values());
        Collections.reverse(result);
        return result;
    }
    public ChatRoomDTO createRoom(String name) {
        ChatRoomDTO chatRoomDTO = ChatRoomDTO.createRoom(name);
        chatRooms.put(chatRoomDTO.getRoomdId(), chatRoomDTO);
        return chatRoomDTO;
    }

}
