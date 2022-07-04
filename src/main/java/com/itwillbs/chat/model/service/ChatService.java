package com.itwillbs.chat.model.service;


import com.itwillbs.chat.model.domain.ChatRoomDTO;



import java.util.List;



public interface ChatService {
    public List<ChatRoomDTO> findAllRoom();

    public ChatRoomDTO findRoom(String roomId);

    public ChatRoomDTO createRoom(String name);


}
