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
    public String newRoom(String account_email, String pro_email) {
        String check = checkRoom(account_email, pro_email);
        if (check!=null){

            return check;
        }
        ChatRoomDTO chatRoomDTO = ChatRoomDTO.create(check);
        String session_name = chatRoomDTO.getSession_name();
        if (account_email.equals(pro_email)){
            createRoomSelf(account_email,session_name);
        }else {
            createRoom(pro_email,account_email,session_name);

        }
        return check;
    }
    @Override
    public String checkRoom(String account_email, String pro_email) {
        List<ChatRoomEnterDTO> firstList = chatRoomEnterRepository.findRoomAccount_email(account_email);
        Set<ChatRoomEnterDTO> setFirst = new HashSet<>(firstList);


        //Pro가 될예정
        List<ChatRoomEnterDTO> secondList = chatRoomEnterRepository.findRoomPro_email(pro_email);
        for (ChatRoomEnterDTO chatRoomEnterDTO :secondList){
            if(setFirst.contains(chatRoomEnterDTO.getSession_name())){
                return chatRoomEnterDTO.getSession_name();
            }
        }
        return "";
    }
    public void createRoom(String pro_email ,String account_email, String session_name){
        ChatRoomEnterDTO chatRoomEnterDTO = new ChatRoomEnterDTO(pro_email, account_email, session_name);
        chatRoomEnterRepository.saveJoinUsers(chatRoomEnterDTO);
    }
    @Override
    public void createRoomSelf(String user, String session_name) {

    }

    @Override
    public List<ChatRoomEnterDTO> findByChatRoom(String roomId) {
        return chatRoomEnterRepository.findByChatRoom(roomId);
    }

    @Override
    public void delete(ChatRoomEnterDTO chatRoomJoin) {

    }


}
