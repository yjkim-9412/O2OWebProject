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


    @Override
    public String newRoom(String member_email, String pro_email) {
        String check = checkRoom(member_email, pro_email);
        if (check!=null){

            return check;
        }
        ChatRoomDTO chatRoomDTO = ChatRoomDTO.create(check);
        String roomId = chatRoomDTO.getRoomId();
        if (member_email.equals(pro_email)){
            createRoomSelf(member_email,roomId);
        }else {
            createRoom(pro_email,member_email,roomId);

        }
        return check;
    }
    @Override
    public String checkRoom(String member_email, String pro_email) {
        List<ChatRoomEnterDTO> firstList = chatRoomEnterRepository.findRoomByEmail(member_email);
        Set<ChatRoomEnterDTO> setFirst = new HashSet<>(firstList);

        //Pro가 될예정
        List<ChatRoomEnterDTO> secondList = chatRoomEnterRepository.findRoomByEmailPro(pro_email);
        for (ChatRoomEnterDTO chatRoomEnterDTO :secondList){
            if(setFirst.contains((chatRoomEnterDTO))){
                return chatRoomEnterDTO.getRoomId();
            }
        }
        return null;
    }
    public void createRoom(String pro_email ,String member_email, String roomId){
        ChatRoomEnterDTO chatRoomEnterDTO = new ChatRoomEnterDTO(pro_email,member_email,roomId);
        chatRoomEnterRepository.saveJoinUsers(chatRoomEnterDTO);
    }
    @Override
    public void createRoomSelf(String user, String roomId) {

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
