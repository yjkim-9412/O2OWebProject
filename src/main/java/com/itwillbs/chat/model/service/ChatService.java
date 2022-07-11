package com.itwillbs.chat.model.service;


import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.chat.model.domain.GetChatRoomDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;


import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Optional;


public interface ChatService {


    public void saveChat(ChatMessageDTO message);

    public List<ChatMessageDTO> getChatMessage(String session_name);

    public List<GetChatRoomDTO> getChatList(HttpSession session);






}
