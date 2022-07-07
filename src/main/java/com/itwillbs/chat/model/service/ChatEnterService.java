package com.itwillbs.chat.model.service;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;

import java.util.List;

public interface ChatEnterService {
    public String newRoom(String member, String pro);

    public String checkRoom(String member, String pro);

    public Long checkByRoomId(Long roomId);
    public void createRoom(String pro_email ,String member_email, String roomId);

    public void  createRoomSelf(String user,String roomId);

    public List<ChatRoomEnterDTO> findByChatRoom(ChatRoomDTO chatRoomDTO);

    public void delete(ChatRoomEnterDTO chatRoomJoin);
    
}
