package com.itwillbs.chat.model.service;

import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.domain.ChatRoomDTO;

import java.util.Optional;

public interface ChatEnterService {
    public Long newRoom(String member, String pro);

    public Long checkRoom(String member, String pro);

    public Long checkByRoomId(Long roomId);
    public void insertRoom(String user_email, ChatRoomDTO chatRoomDTO);

    
}
