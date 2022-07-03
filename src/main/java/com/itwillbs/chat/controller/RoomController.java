package com.itwillbs.chat.controller;

import com.itwillbs.chat.repository.ChatRoomRepository;
import lombok.RequiredArgsConstructor;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/chat")
public class RoomController {
    private final ChatRoomRepository repository;
    private static final org.slf4j.Logger log = LoggerFactory.getLogger(RoomController.class);

   // 채팅방 목록 조회
    @RequestMapping(value = "/rooms",method = RequestMethod.GET)
    public ModelAndView rooms(){
        log.info("All Chat Rooms");
        ModelAndView mv = new ModelAndView("chat/rooms");

        mv.addObject("list",repository.findAllRooms());

        return mv;
    }

    // 채팅방 생성
    @RequestMapping(value = "/room",method = RequestMethod.POST)
    public String create(@RequestParam String name, RedirectAttributes rttr){
        log.info("Create Chat Room , name" + name);
        rttr.addFlashAttribute("roomName", repository.createChatRoomDTO(name));
        return "redirect:/chat/room";
    }

    @RequestMapping(value = "/room",method = RequestMethod.GET)
    public void getRoom(String roomdId, Model model){
        log.info("get Chat Room, roomID : " + roomdId);

        model.addAttribute("room", repository.findRoomById(roomdId));
    }
}
