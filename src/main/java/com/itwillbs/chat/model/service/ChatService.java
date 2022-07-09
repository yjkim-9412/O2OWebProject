package com.itwillbs.chat.model.service;


import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;


import java.util.List;
import java.util.Optional;


public interface ChatService {


    public Optional<ChatRoomEnterDTO> findById(String session_name);
    public void saveChat(ChatMessageDTO message);

    public List<ChatMessageDTO> getChatMessage(String session_name);

    public List<ChatRoomEnterDTO> findByUser(MemberDTO user);
    public List<ChatRoomEnterDTO> findByPro(ProDTO pro);
    public List<ChatRoomEnterDTO> findByChatRoom(String roomId);


}
