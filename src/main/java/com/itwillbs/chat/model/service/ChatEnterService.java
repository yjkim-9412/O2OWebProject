package com.itwillbs.chat.model.service;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.chat.model.domain.GetChatRoomDTO;

import java.util.List;

public interface ChatEnterService {
    public String newRoom(String account_email, String pro_email, String account_name, String pro_name);

    public String checkRoom(String member_email, String pro_email);

    public void createRoom(ChatRoomDTO chatRoomDTO);

    public void  createRoomSelf(String user,String roomId);

    public void delete(ChatRoomEnterDTO chatRoomJoin);

    public GetChatRoomDTO checkRoomPro(String pro_email, String session_name);

    public GetChatRoomDTO checkRoomAccount(String account_email, String session_name);

    
}
