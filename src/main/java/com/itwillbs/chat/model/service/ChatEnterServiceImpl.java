package com.itwillbs.chat.model.service;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.chat.repository.ChatRepository;
import com.itwillbs.chat.repository.ChatRoomEnterRepository;
import com.itwillbs.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class ChatEnterServiceImpl implements ChatEnterService{
   @Autowired
   private MemberService memberService;
   @Autowired
   private ChatRepository chatRepository;
   @Autowired
   private ChatRoomEnterRepository chatRoomEnterRepository;
    @Override
    public Long newRoom(String member_email, String pro_email) {
        Long check = checkRoom(member_email, pro_email);
        if (check != 0){

            return check;
        }
        ChatRoomDTO chatRoomDTO = new ChatRoomDTO();
        ChatRoomDTO newChatRoomDTO = chatRoomEnterRepository.init(chatRoomDTO);
        if (member_email.equals(pro_email)){
            insertRoom(member_email,newChatRoomDTO);
        }else {
            insertRoom(member_email,newChatRoomDTO);
            insertRoom(pro_email,newChatRoomDTO);
        }
        return check;
    }
    @Override
    public Long checkRoom(String member_email, String pro_email) {
        List<ChatRoomEnterDTO> firstList = chatRoomEnterRepository.findRoomByEmail(member_email);
        Set<ChatRoomDTO> setFirst = new HashSet<>();
        for (ChatRoomEnterDTO chatRoomEnterDTO : firstList){
            setFirst.add(chatRoomEnterDTO.getChatRoomDTO());
        }

        //Pro가 될예정
        List<ChatRoomEnterDTO> secondList = chatRoomEnterRepository.findRoomByEmail(pro_email);
        for (ChatRoomEnterDTO chatRoomEnterDTO :secondList){
            if(setFirst.contains((chatRoomEnterDTO.getChatRoomDTO()))){
                return chatRoomEnterDTO.getChatRoomDTO().getRoomId();
            }
        }
        return 0L;
    }
    public void insertRoom(String user_email, ChatRoomDTO chatRoomDTO){
        ChatRoomEnterDTO chatRoomEnterDTO = new ChatRoomEnterDTO();
        chatRoomEnterDTO.setChatRoomDTO(chatRoomDTO);
        chatRoomEnterDTO.setMemberDTO(memberService.getMemberE(user_email));
        chatRoomEnterRepository.init(chatRoomEnterDTO);
    }



}
