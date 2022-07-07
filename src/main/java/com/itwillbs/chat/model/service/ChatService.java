package com.itwillbs.chat.model.service;


import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;


import java.util.List;
import java.util.Optional;


public interface ChatService {


    public Optional<ChatRoomDTO> findById(String roomId);
    public void save(ChatMessageDTO message);

    public List<ChatMessageDTO> getChatMessage(String roomId);

    public List<ChatRoomEnterDTO> findByUser(MemberDTO user);
    public List<ChatRoomEnterDTO> findByPro(ProDTO pro);
    public List<ChatRoomEnterDTO> findByChatRoom(ChatRoomDTO chatRoom);


}
