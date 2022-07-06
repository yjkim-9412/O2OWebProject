package com.itwillbs.chat.model.service;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
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
   private ChatRoomEnterRepository chatRoomEnterRepository;
   @Autowired
   private ChatService chatService;
    @Override
    public Long newRoom(String member_email, String pro_email) {
        Long check = checkRoom(member_email, pro_email);
        if (check != 0){

            return check;
        }
        ChatRoomDTO chatRoomDTO = new ChatRoomDTO();

        if (member_email.equals(pro_email)){
            createRoom(member_email,chatRoomDTO);
        }else {
            createRoom(member_email,chatRoomDTO);
            createRoom(pro_email,chatRoomDTO);
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
        List<ChatRoomEnterDTO> secondList = chatRoomEnterRepository.findRoomByEmailPro(pro_email);
        for (ChatRoomEnterDTO chatRoomEnterDTO :secondList){
            if(setFirst.contains((chatRoomEnterDTO.getChatRoomDTO()))){
                return chatRoomEnterDTO.getChatRoomDTO().getRoomId();
            }
        }
        return 0L;
    }
    public void createRoom(String user_email, ChatRoomDTO chatRoomDTO){
        ChatRoomEnterDTO chatRoomEnterDTO = new ChatRoomEnterDTO(memberService.getMemberE(user_email),chatRoomDTO);
        chatRoomEnterRepository.saveRoom(chatRoomEnterDTO);
    }

    @Override
    public Long checkByRoomId(Long roomId) {
        return null;
    }

    @Override
    public List<ChatRoomEnterDTO> findByChatRoom(ChatRoomDTO chatRoomDTO) {
        return chatRoomEnterRepository.findByChatRoom(chatRoomDTO);
    }

    @Override
    public void delete(ChatRoomEnterDTO chatRoomJoin) {

    }

}
