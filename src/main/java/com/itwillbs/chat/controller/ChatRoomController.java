package com.itwillbs.chat.controller;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.service.ChatService;
import com.itwillbs.chat.repository.ChatRepository;
import com.itwillbs.domain.MemberDTO;

import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProService;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import java.util.List;


@Slf4j
@Controller
public class ChatRoomController {
    @Autowired
    private  ChatService chatService;
    @Autowired
    private  MemberService memberService;
    @Autowired
    private  ProService proService;


    //회원 채팅목록 전부 가져오기
    @RequestMapping(value = "mypage/info", method = RequestMethod.GET)
    public List<ChatRoomDTO> chatroom(HttpSession session){
        int id = (Integer)session.getAttribute("id");
        memberService.getMember(id);
        return chatService.findAllRoom();
    }
    //채팅방 생성
    @RequestMapping(value = "/chat/room",method = RequestMethod.GET)
    public ModelAndView createChat(@RequestParam int idp ,ModelAndView mv,HttpSession session){
        int idm =  (Integer)session.getAttribute("id");
        MemberDTO memberDTO = memberService.getMember(idm);
        MemberDTO memberDTO2 = memberService.getMember(idp);

        String member = memberDTO.getName();
        String pro = memberDTO2.getName();
        ChatRoomDTO chatRoomDTO= chatService.createRoom(member);

        System.out.println(chatRoomDTO.getRoomName());
        System.out.println(chatRoomDTO.getRoomdId());
        System.out.println(member);
        System.out.println(pro);
        mv.addObject("m_Name",member);
        mv.addObject("p_Name",pro);
        mv.addObject("room_Name",chatRoomDTO.getRoomName());
        mv.addObject("room_id",chatRoomDTO.getRoomdId());
        mv.setViewName("chat/room");
        System.out.println("디버그");
        return mv;
    }



}
