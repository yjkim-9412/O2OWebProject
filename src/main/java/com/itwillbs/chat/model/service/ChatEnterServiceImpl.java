package com.itwillbs.chat.model.service;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.chat.model.domain.GetChatRoomDTO;
import com.itwillbs.chat.repository.ChatRoomEnterRepository;

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
    public String newRoom(String account_email, String pro_email,String account_name,String pro_name) {
        String check = checkRoom(account_email, pro_email);
        if (!check.equals("")){
            System.out.println("기존세션 : " + check);
            return check;
        }
        ChatRoomDTO chatRoomDTO = new ChatRoomDTO(account_email, pro_email,account_name,pro_name);
        String session_name = chatRoomDTO.getSession_name();
        System.out.println("생성된 세션 : "+ session_name);
        if (account_email.equals(pro_email)){
            createRoomSelf(account_email,session_name);
            return session_name;
        }else {
            createRoom(chatRoomDTO);
            return session_name;
        }
    }
    @Override
    public String checkRoom(String account_email, String pro_email) {
        System.out.println("접속 이메일 : " + account_email);
        List<GetChatRoomDTO> firstList = chatRoomEnterRepository.findRoomAccount_email(account_email);
        Set<String> setFirst = new HashSet<>();
        for (GetChatRoomDTO getChatRoomDTO : firstList){
            setFirst.add(getChatRoomDTO.getSession_name());
        }

        //Pro가 될예정
        System.out.println("채팅 대상자 : " + pro_email);
        List<GetChatRoomDTO> secondList = chatRoomEnterRepository.findRoomPro_email(pro_email);

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
    public void createRoom(ChatRoomDTO chatRoomDTO){
        ChatRoomEnterDTO chatRoomEnterDTO = new ChatRoomEnterDTO(chatRoomDTO);
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
            setPro.setEnter_name(proDTO.getName());
            setPro.setReceiver_user(getChatRoomDTO.getAccount_email());
            setPro.setReceiver_name(getChatRoomDTO.getAccount_name());
            System.out.println("checkRoomPro : " + proDTO.getEmail());
            return setPro;
        }
        return null;
    }
    @Override
    public GetChatRoomDTO checkRoomAccount(String account_email, String session_name) {
        GetChatRoomDTO getChatRoomDTO = chatRoomEnterRepository.findBySession_name(session_name);
        GetChatRoomDTO setAccount = new GetChatRoomDTO();
        MemberDTO memberDTO = memberService.getMemberE(account_email);

        if (memberDTO != null){
            setAccount.setEnter_user(memberDTO.getEmail());
            setAccount.setEnter_name(memberDTO.getName());
            setAccount.setReceiver_user(getChatRoomDTO.getPro_email());
            setAccount.setReceiver_name(getChatRoomDTO.getPro_name());
            System.out.println("checkRoomAccount : " + memberDTO.getEmail());
            return setAccount;
        }
        return null;
    }


    @Override
    public void delete(ChatRoomEnterDTO chatRoomJoin) {

    }


}
