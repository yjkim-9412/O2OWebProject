package com.itwillbs.chat.repository;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import java.util.*;

@Repository
public class ChatRepository {
    private Map<String, ChatRoomDTO> chatRooms;

    @Autowired
    private MemberService memberService;

    @PostConstruct
    private void init() {
        chatRooms = new LinkedHashMap<>();

    }

    public List<ChatRoomDTO> findAllRoom() {
        List<ChatRoomDTO> result = new ArrayList<>(chatRooms.values());
        Collections.reverse(result);
        return result;
    }
    public ChatRoomDTO createRoom(String name) {
        ChatRoomDTO chatRoomDTO = ChatRoomDTO.createRoom(name);
        chatRooms.put(chatRoomDTO.getRoomdId(), chatRoomDTO);
        return chatRoomDTO;
    }
//    public Long newRoom(String member,String pro){
//        Long ret = check(member,pro);
//    }
//    public Long check(String member,String pro){
//         MemberDTO memberDTO = memberService.getMember(Integer.parseInt(member));
//
//        return 0L;
//    }
}
