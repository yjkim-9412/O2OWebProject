package com.itwillbs.chat.controller;

import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.domain.GetChatRoomDTO;
import com.itwillbs.chat.model.service.ChatEnterService;
import com.itwillbs.chat.model.service.ChatService;
import com.itwillbs.chat.repository.ChatRoomEnterRepository;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;
import com.itwillbs.service.MemberService;

import com.itwillbs.service.ProService;
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

import java.util.List;


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
    @Autowired
    private ProService proService;




    //회원 채팅목록 전부 가져오기
    //채팅방 생성
    @RequestMapping(value = "/chat/newChat",method = RequestMethod.GET)
    public String createChat(@RequestParam("user_email") String pro_email ,HttpSession session,HttpServletRequest request){
        int account_id =  (Integer)session.getAttribute("id");
        if(account_id == 0){
            return "redirect:/member/msg";
        }
        MemberDTO memberDTO = memberService.getMember(account_id);
        String account_email = memberDTO.getEmail();
        ProDTO proDTO = proService.getPro(pro_email);

        String session_name = chatEnterService.newRoom(account_email,pro_email,memberDTO.getName(),proDTO.getName());
        System.out.println("방생성 완료 세션 : " + session_name);
        if (session_name != null){
            request.setAttribute("userEmail",account_email);
            request.setAttribute("receiver_email",pro_email);
            request.setAttribute("currentUser","account");
        }

        return "redirect:/chat/room/" + session_name;
    }

    @RequestMapping(value = "/chat/room/{session_name}")
    public String intoChat(@PathVariable("session_name") String session_name, Model model, HttpServletRequest request,HttpSession session){
        GetChatRoomDTO getChatRoomDTO = chatRoomEnterRepository.findBySession_name(session_name);
        List<ChatMessageDTO> messageList = chatService.getChatMessage(session_name);
        System.out.println("intoChat:->>>>>>>>>");

        String userEmail = request.getParameter("userEmail");
        if (userEmail == null){
            int id = (Integer)session.getAttribute("id");

            MemberDTO memberDTO = memberService.getMember(id);
            GetChatRoomDTO chatUser = chatEnterService.checkRoomAccount(memberDTO.getEmail(),session_name);
            model.addAttribute("user_name",memberDTO.getName());
            model.addAttribute("receiver",chatUser.getReceiver_user());
            model.addAttribute("receiver_name",chatUser.getReceiver_name());
            model.addAttribute("chatSession",session_name);
            model.addAttribute("messageList", messageList);
            return "chat/room";
        }
            String receiver_email = request.getParameter("receiver_email");
            String currentUser = request.getParameter("currentUser");
            System.out.println("현재유저2 : " + currentUser);
            System.out.println("현재유저 이메일 : " + userEmail);
            System.out.println("수신 이메일 : " + receiver_email);
            System.out.println("채팅방 멤버 : " + getChatRoomDTO.getAccount_email() + ", " + getChatRoomDTO.getPro_email());


        model.addAttribute("user_email",userEmail);
        if (currentUser.equals("pro")) {
            GetChatRoomDTO chatPro = chatEnterService.checkRoomPro(userEmail,session_name);
            model.addAttribute("user_name",chatPro.getEnter_name());
            model.addAttribute("receiver",chatPro.getReceiver_user());
            model.addAttribute("receiver_name",chatPro.getReceiver_name());
            model.addAttribute("chatSession",session_name);
            model.addAttribute("messageList", messageList);
        } else if (currentUser.equals("account")) {
            GetChatRoomDTO chatUser = chatEnterService.checkRoomAccount(userEmail,session_name);
            model.addAttribute("user_name",chatUser.getEnter_name());
            model.addAttribute("receiver",chatUser.getReceiver_user());
            model.addAttribute("receiver_name",chatUser.getReceiver_name());
            model.addAttribute("chatSession",session_name);
            model.addAttribute("messageList", messageList);
        }else {
            System.out.println("불허된 채팅방 접근");
            return "redirect:/member/msgsession";
        }

        return "chat/room";
    }
    @RequestMapping(value = "/chat/rooms")
    public String GetRoomList(HttpSession session, Model model){
        List<GetChatRoomDTO> chatList = chatService.getChatList(session);
        model.addAttribute("chatList",chatList);
        Integer account = (Integer)session.getAttribute("id");
        String pro = (String)session.getAttribute("email");

        if (pro != null) {
            ProDTO proDTO = proService.getPro(pro);
            model.addAttribute("userEmail", proDTO.getEmail());
            model.addAttribute("userName",proDTO.getName());
            model.addAttribute("currentUser","pro");


        } else if (account != null) {
            MemberDTO memberDTO = memberService.getMember(account);
            model.addAttribute("userEmail", memberDTO.getEmail());
            model.addAttribute("userName",memberDTO.getName());
            model.addAttribute("currentUser","account");

        }else {
            System.out.println("로그인 세션이 없습니다");
            return "redirect:/member/msg";
        }
        return "chat/rooms";
    }



}
