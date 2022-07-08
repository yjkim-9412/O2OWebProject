package com.itwillbs.chat.model.service;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;

import java.util.List;

public interface ChatEnterService {
    public String newRoom(String account_email,String pro_email);

    public String checkRoom(String member_email, String pro_email);

    public void createRoom(String member_email ,String pro_email, String session_name);

    public void  createRoomSelf(String user,String roomId);

    public void delete(ChatRoomEnterDTO chatRoomJoin);

    public String checkUser(int user,String session_name);
    
}
