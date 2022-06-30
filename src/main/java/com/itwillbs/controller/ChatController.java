package com.itwillbs.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class ChatController {
    @RequestMapping("/chatting")
    public ModelAndView chat(ModelAndView mv,@RequestParam("id") String uid, HttpSession session
    ) {
        System.out.println(uid);
        mv.setViewName("chat/chatRoom");
        mv.addObject("user", uid);
        mv.addObject("articleId", "xxt1205");
        mv.addObject("articleOwner", "김영준");
        session.setAttribute("user",uid);

        return mv;

    }

}//Chatcontroller


