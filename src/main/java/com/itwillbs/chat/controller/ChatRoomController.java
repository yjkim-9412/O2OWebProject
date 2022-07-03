package com.itwillbs.chat.controller;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.service.ChatService;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@RequiredArgsConstructor
@Slf4j
@Controller
public class ChatRoomController {
    private final ChatService chatService;
    private final MemberService memberService;

    private final ProService proService;

    //회원 채팅목록 전부 가져오기
    @RequestMapping(value = "mypage/info", method = RequestMethod.GET)
    public List<ChatRoomDTO> chatroom(HttpSession session){
        int id = (Integer)session.getAttribute("id");
        memberService.getMember(id);
        return chatService.findAllRoom();
    }
    //채팅방 생성
    @RequestMapping(value = "/chat/newchat",method = RequestMethod.GET)
    public ModelAndView createChat(@RequestParam String email, ModelAndView mv,HttpSession session){
        int id = (Integer)session.getAttribute("id");
        MemberDTO memberDTO = memberService.getMember(id);

        String member = memberDTO.getEmail();
        String pro = "lamia9304@naver.com";

        return mv;
    }



}
