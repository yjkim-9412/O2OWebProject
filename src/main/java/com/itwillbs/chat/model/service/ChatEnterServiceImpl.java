package com.itwillbs.chat.model.service;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.chat.repository.ChatRoomEnterRepository;

import com.itwillbs.dao.ProDAO;
import com.itwillbs.domain.GetProDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProService;
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
   private ProService proService;
   @Autowired
   private ChatRoomEnterRepository chatRoomEnterRepository;


    @Override
    public String newRoom(String account_email, String pro_email) {
        String check = checkRoom(account_email, pro_email);
        if (!check.equals("")){
            System.out.println("기존세션 : " + check);
            return check;
        }
        ChatRoomDTO chatRoomDTO = new ChatRoomDTO();
        String session_name = chatRoomDTO.getSession_name();
        System.out.println("생성된 세션 : "+ session_name);
        if (account_email.equals(pro_email)){
            createRoomSelf(account_email,session_name);
            return session_name;
        }else {
            createRoom(pro_email,account_email,session_name);
            return session_name;
        }
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
    public String checkUser(int user,String session_name) {
        ChatRoomEnterDTO chatRoomEnterDTO = chatRoomEnterRepository.findBySession_name(session_name);

        MemberDTO memberDTO = memberService.getMember(user);
        GetProDTO proDTO = proService.getProid(user);
        String account_email = memberDTO.getEmail();
        String pro_email = proDTO.getEmail();
        if (chatRoomEnterDTO.getAccount_email().equals(account_email)){
            return account_email;
        } else if (chatRoomEnterDTO.getPro_email().equals(pro_email)){
            return pro_email;
        }
        return null;
    }

    @Override
    public void delete(ChatRoomEnterDTO chatRoomJoin) {

    }


}
