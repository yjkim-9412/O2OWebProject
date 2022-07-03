package com.itwillbs.chat.model.service;

import com.itwillbs.chat.model.domain.Chat;
import com.itwillbs.chat.model.domain.ChatRoomDTO;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;


public interface ChatService {
    public List<ChatRoomDTO> findAllRoom();

    public ChatRoomDTO findRoom(String roomId);

    public ChatRoomDTO createRoom(String name);
}
