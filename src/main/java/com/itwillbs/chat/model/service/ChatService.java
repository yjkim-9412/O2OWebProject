package com.itwillbs.chat.model.service;


import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.domain.ChatRoomDTO;



import java.util.List;



public interface ChatService {

    public void save(ChatMessageDTO message);


}
