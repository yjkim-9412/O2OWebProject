package com.itwillbs.chat.model.service;


import com.itwillbs.chat.model.domain.ChatRoomDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;


@Service
@Slf4j
@RequiredArgsConstructor
public class ChatServiceImpl implements ChatService{

    private Map<String,ChatRoomDTO> chatRooms;

    @Override
    public List<ChatRoomDTO> findAllRoom() {
        List<ChatRoomDTO> result = new ArrayList<>(chatRooms.values());
        Collections.reverse(result);
        return result;
    }

    @Override
    public ChatRoomDTO findRoom(String roomId) {
        return chatRooms.get(roomId);
    }

    @Override
    public ChatRoomDTO createRoom(String name) {
        ChatRoomDTO chatRoomDTO = ChatRoomDTO.createRoom(name);
        chatRooms.put(chatRoomDTO.getRoomdId(), chatRoomDTO);
        return chatRoomDTO;
    }
}
