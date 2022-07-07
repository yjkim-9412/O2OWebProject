package com.itwillbs.chat.controller;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.service.ChatEnterService;
import com.itwillbs.chat.model.service.ChatService;
import com.itwillbs.chat.repository.ChatRepository;
import com.itwillbs.chat.repository.ChatRoomEnterRepository;
import com.itwillbs.domain.MemberDTO;

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
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Optional;


@Slf4j
@Controller
public class ChatRoomController {
    @Autowired
    private  ChatService chatService;
    @Autowired
    private  MemberService memberService;
    @Autowired
    private  ProService proService;
    @Autowired
    private ChatRoomEnterRepository chatRoomEnterRepository;
    @Autowired
    private ChatEnterService chatEnterService;


    //회원 채팅목록 전부 가져오기
    //채팅방 생성
    @RequestMapping(value = "/chat/newChat",method = RequestMethod.GET)
    public String createChat(@RequestParam("pro_email") String pro_email ,HttpSession session){
        int idm =  (Integer)session.getAttribute("id");
        MemberDTO memberDTO = memberService.getMember(idm);
        String member_email = memberDTO.getEmail();
        Long roomId = chatEnterService.newRoom(member_email,pro_email);


        return "redirect:/chat/room/" + roomId;
    }
    @RequestMapping(value = "/chat/room/{roomId}")
    public String intoChat(@PathVariable("roomId") Long roomId, Model model, HttpServletRequest request){
        Optional<ChatRoomDTO> opt = chatRoomEnterRepository.findById(roomId);
        HttpSession session = request.getSession();
        int id = (Integer)session.getAttribute("id");
        MemberDTO memberDTO = memberService.getMember(id);
        String m_email = memberDTO.getEmail();
        String p_email = "lamia9304@naver.com"; // proDTO 들어올 예정
       // Optional<ChatEnterService> optional = chatEnterService.checkRoom(roomId);
        return "chat/room";
    }



}
