package com.itwillbs.chat.model.service;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.chat.model.domain.GetChatRoomDTO;

import java.util.List;

public interface ChatEnterService {
    public String newRoom(String account_email,String pro_email);

    public String checkRoom(String member_email, String pro_email);

    public void createRoom(String member_email ,String pro_email, String session_name);

    public void  createRoomSelf(String user,String roomId);

    public void delete(ChatRoomEnterDTO chatRoomJoin);

    public GetChatRoomDTO checkUser(int user, String session_name);
    
}
