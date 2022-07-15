package com.itwillbs.chat.model.service;


import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.domain.DeleteChatDTO;
import com.itwillbs.chat.model.domain.GetChatRoomDTO;
import com.itwillbs.chat.repository.ChatRepository;
import com.itwillbs.chat.repository.ChatRoomEnterRepository;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import javax.servlet.http.HttpSession;
import java.util.*;


@Service
@Slf4j
public class ChatServiceImpl implements ChatService{

    @Autowired
    private ChatRepository chatRepository;
    @Autowired
    private ChatRoomEnterRepository chatRoomEnterRepository;
    @Autowired
    private ProService proService;
    @Autowired
    private MemberService memberService;

    @Override
    public void saveChat(ChatMessageDTO messages) {
        chatRepository.saveChat(messages);
    }


    @Override
    public List<ChatMessageDTO> getChatMessage(String session_name) {
        return chatRepository.getChatMessage(session_name);
    }

    @Override
    public List<GetChatRoomDTO> getChatList(HttpSession session) {

        Integer account = (Integer)session.getAttribute("id");
        String pro = (String)session.getAttribute("email");
        System.out.println("멤버 : " + account);
        System.out.println("프로 : " + pro);
        if (account == null) {

            return chatRoomEnterRepository.findRoomPro_email(pro);
        } else if (pro == null){
            MemberDTO memberDTO = memberService.getMember(account);
            System.out.println("멤버 여부: " + memberDTO.getEmail());
            return chatRoomEnterRepository.findRoomAccount_email(memberDTO.getEmail());
        } else{
            System.out.println("존재하는 세션이 없습니다");

        }

        return null;
    }

    @Override
    public void deleteChatAccount(GetChatRoomDTO getChatRoomDTO) {
        chatRepository.deleteChatAccount(getChatRoomDTO);
    }

    @Override
    public void deleteChatPro(GetChatRoomDTO getChatRoomDTO) {
        chatRepository.deleteChatPro(getChatRoomDTO);
    }
}
