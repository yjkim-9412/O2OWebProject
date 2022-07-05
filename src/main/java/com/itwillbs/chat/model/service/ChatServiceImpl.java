package com.itwillbs.chat.model.service;


import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.repository.ChatRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import javax.inject.Inject;
import java.util.*;


@Service
@Slf4j
@RequiredArgsConstructor
public class ChatServiceImpl implements ChatService{

    @Autowired
    private ChatRepository chatRepository;
    private final Map<String,ChatRoomDTO> chatRooms =new HashMap<String,ChatRoomDTO>();

    private ChatRoomDTO chatRoomDTO;

    @Override
    public void save(ChatMessageDTO message) {
        chatRepository.saveChat(message);
    }
}
