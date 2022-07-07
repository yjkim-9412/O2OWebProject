package com.itwillbs.chat.repository;

import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.domain.ChatRoomDTO;

import com.itwillbs.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import java.util.*;

@Repository
@RequiredArgsConstructor
public class ChatRepository {

    @Inject
    private SqlSession sqlSession;

    private Map<String, ChatRoomDTO> chatRooms;

    private static final String namespace="com.itwillbs.mapper.ChatMapper";



    @PostConstruct
    private void init() {
        chatRooms = new LinkedHashMap<>();

    }

    public List<ChatRoomDTO> findAllRoom() {
        List<ChatRoomDTO> result = new ArrayList<>(chatRooms.values());
        Collections.reverse(result);
        return result;
    }


    public void saveChat(ChatMessageDTO message){

        sqlSession.insert(namespace+".saveChat",message);
    }
    public List<ChatMessageDTO> getChatMessage(String roomId){

        return sqlSession.selectList(namespace+".getChatMessage",roomId);
    }






}
