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
    private ChatService chatService;
    @Autowired
    private ChatRoomEnterRepository chatRoomEnterRepository;
    @Autowired
    private ChatEnterService chatEnterService;




    //회원 채팅목록 전부 가져오기
    //채팅방 생성
    @RequestMapping(value = "/chat/newChat",method = RequestMethod.GET)
    public String createChat(@RequestParam("user_email") String user_email ,HttpSession session){
        int account_id =  (Integer)session.getAttribute("id");
        MemberDTO memberDTO = memberService.getMember(account_id);
        String account_email = memberDTO.getEmail();
        String session_name = chatEnterService.newRoom(account_email,user_email);
        System.out.println("방생성 완료 세션 : " + session_name);

        return "redirect:/chat/room/" + session_name;
    }
    @RequestMapping(value = "/chat/newChatPro",method = RequestMethod.GET)
    public String chatEnterPro(@RequestParam("user_email") String user_email ,HttpSession session){
        String pro_email =  (String)session.getAttribute("email");
        String session_name = chatEnterService.newRoom(pro_email,user_email);
        System.out.println("방생성 완료 세션 : " + session_name);

        return "redirect:/chat/room/" + session_name;
    }
    @RequestMapping(value = "/chat/room",method = RequestMethod.GET)
    public String enterSession(@RequestParam("session_name") String session_chat ,HttpSession session){
        GetChatRoomDTO getChatRoomDTO = chatRoomEnterRepository.findBySession_name(session_chat);
        if (getChatRoomDTO != null) {
            String session_name = getChatRoomDTO.getSession_name();
            System.out.println("채팅방 확인 완료 : " + getChatRoomDTO.getSession_name());

            return "redirect:/chat/room/" + session_name;
        }
        System.out.println("유효하지 않는방");
        return "redirect:/member/main";
    }

    @RequestMapping(value = "/chat/room/{session_name}")
    public String intoChat(@PathVariable("session_name") String session_name, Model model, HttpServletRequest request){
        GetChatRoomDTO getChatRoomDTO = chatRoomEnterRepository.findBySession_name(session_name);
        System.out.println("intoChat:->>>>>>>>>");
        HttpSession session = request.getSession();
        Integer account = (Integer)session.getAttribute("id");
        String pro = (String)session.getAttribute("email");
        System.out.println("프로 : " + pro);
        System.out.println("회원 : " + account);
        List<ChatMessageDTO> messageList= chatService.getChatMessage(session_name);
        if (account == null) {
            GetChatRoomDTO chatPro = chatEnterService.checkRoomPro(pro,session_name);
            model.addAttribute("user_email",chatPro.getEnter_user());
            model.addAttribute("receiver",chatPro.getReceiver_user());
            model.addAttribute("chatSession",session_name);
            model.addAttribute("messageList", messageList);
        } else if (pro == null) {
            GetChatRoomDTO chatUser = chatEnterService.checkRoomAccount(account, session_name);
            model.addAttribute("user_email",chatUser.getEnter_user());
            model.addAttribute("receiver",chatUser.getReceiver_user());
            model.addAttribute("chatSession",session_name);
            model.addAttribute("messageList", messageList);
        }

        return "chat/room";
    }



}
