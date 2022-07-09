package com.itwillbs.chat.model.service;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.chat.model.domain.GetChatRoomDTO;
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
    public String newRoom(String user_email1, String user_email2) {
        String check = checkRoom(user_email1, user_email2);
        if (!check.equals("")){
            System.out.println("기존세션 : " + check);
            return check;
        }
        ChatRoomDTO chatRoomDTO = new ChatRoomDTO();
        String session_name = chatRoomDTO.getSession_name();
        System.out.println("생성된 세션 : "+ session_name);
        if (user_email1.equals(user_email2)){
            createRoomSelf(user_email1,session_name);
            return session_name;
        }else {
            createRoom(user_email1,user_email2,session_name);
            return session_name;
        }
    }
    @Override
    public String checkRoom(String user_email1, String user_email2) {
        System.out.println("접속 이메일 : " + user_email1);
        List<GetChatRoomDTO> firstList = chatRoomEnterRepository.findRoomAccount_email(user_email1);
        Set<String> setFirst = new HashSet<>();
        for (GetChatRoomDTO getChatRoomDTO : firstList){
            setFirst.add(getChatRoomDTO.getSession_name());
        }

        //Pro가 될예정
        System.out.println("채팅 대상자 : " + user_email2);
        List<GetChatRoomDTO> secondList = chatRoomEnterRepository.findRoomPro_email(user_email2);

        for (GetChatRoomDTO getChatRoomDTO:secondList){
            System.out.println("가져온 세션 "+ getChatRoomDTO.getSession_name());
            if(setFirst.contains(getChatRoomDTO.getSession_name())){
                System.out.println("기존세션  존재함");
                return getChatRoomDTO.getSession_name();
            }
        }
        System.out.println("기존세션 없음");
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
    public GetChatRoomDTO checkRoomPro(String pro_email, String session_name) {
        GetChatRoomDTO getChatRoomDTO = chatRoomEnterRepository.findBySession_name(session_name);
        GetChatRoomDTO setPro = new GetChatRoomDTO();
        GetProDTO proDTO = proService.getProemail(pro_email);
        if (proDTO != null){
            setPro.setEnter_user(proDTO.getEmail());
            setPro.setReceiver_user(getChatRoomDTO.getAccount_email());
            System.out.println("checkRoomPro : " + proDTO.getEmail());
            return setPro;
        }
        return null;
    }
    @Override
    public GetChatRoomDTO checkRoomAccount(int account_id, String session_name) {
        GetChatRoomDTO getChatRoomDTO = chatRoomEnterRepository.findBySession_name(session_name);
        GetChatRoomDTO setAccount = new GetChatRoomDTO();
        MemberDTO memberDTO = memberService.getMember(account_id);
        if (memberDTO != null){
            setAccount.setEnter_user(memberDTO.getEmail());
            setAccount.setReceiver_user(getChatRoomDTO.getPro_email());
            System.out.println("checkRoomAccount : " + memberDTO.getEmail());
            return setAccount;
        }
        return null;
    }

    @Override
    public void delete(ChatRoomEnterDTO chatRoomJoin) {

    }


}
