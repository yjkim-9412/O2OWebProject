package com.itwillbs.chat.model.service;


import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.domain.DeleteChatDTO;
import com.itwillbs.chat.model.domain.GetChatRoomDTO;


import javax.servlet.http.HttpSession;
import java.util.List;


public interface ChatService {


    public void saveChat(ChatMessageDTO message);

    public List<ChatMessageDTO> getChatMessage(String session_name);

    public List<GetChatRoomDTO> getChatList(HttpSession session);

    public void deleteChatAccount(GetChatRoomDTO getChatRoomDTO);
    public void deleteChatPro(GetChatRoomDTO getChatRoomDTO);






}
