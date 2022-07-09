package com.itwillbs.chat.controller;

import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.chat.model.domain.GetChatRoomDTO;
import com.itwillbs.chat.model.service.ChatEnterService;
import com.itwillbs.chat.model.service.ChatService;
import com.itwillbs.chat.repository.ChatRepository;
import com.itwillbs.chat.repository.ChatRoomEnterRepository;
import com.itwillbs.domain.GetProDTO;
import com.itwillbs.domain.MemberDTO;

import com.itwillbs.domain.ProDTO;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProService;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.Collections;
import java.util.List;
import java.util.Optional;


@Slf4j
@Controller
public class ChatRoomController {
    @Autowired
    private  MemberService memberService;
    @Autowired
    private ProService proService;
    @Autowired
    private ChatRoomEnterRepository chatRoomEnterRepository;
    @Autowired
    private ChatEnterService chatEnterService;




    //회원 채팅목록 전부 가져오기
    //채팅방 생성
    @RequestMapping(value = "/chat/newChat",method = RequestMethod.GET)
    public String createChat(@RequestParam("pro_email") String pro_email ,HttpSession session){
        int account_id =  (Integer)session.getAttribute("id");
        MemberDTO memberDTO = memberService.getMember(account_id);
        String account_email = memberDTO.getEmail();
        String session_name = chatEnterService.newRoom(account_email,pro_email);
        System.out.println("방생성 완료 세션 : " + session_name);

        return "redirect:/chat/room/" + session_name;
    }
    @RequestMapping(value = "/chat/room/{session_name}")
    public String intoChat(@PathVariable("session_name") String session_name, Model model, HttpServletRequest request){
        GetChatRoomDTO getChatRoomDTO = chatRoomEnterRepository.findBySession_name(session_name);

        HttpSession session = request.getSession();
        int id = (Integer)session.getAttribute("id");
         GetChatRoomDTO chatUser = chatEnterService.checkUser(id,session_name);


        model.addAttribute("user_email",chatUser.getEnter_user());
        model.addAttribute("receiver",chatUser.getReceiver_user());
        model.addAttribute("chatSession",session_name);


        int count = 0;
       // Optional<ChatEnterService> optional = chatEnterService.checkRoom(roomId);
        return "chat/room";
    }



}
