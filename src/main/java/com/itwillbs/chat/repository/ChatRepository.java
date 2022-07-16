package com.itwillbs.chat.repository;

import com.itwillbs.chat.model.domain.ChatMessageDTO;
import com.itwillbs.chat.model.domain.DeleteChatDTO;
import com.itwillbs.chat.model.domain.GetChatRoomDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import javax.inject.Inject;
import java.util.*;

@Repository
public class ChatRepository {

    @Inject
    private SqlSession sqlSession;

    private static final String namespace="com.itwillbs.mapper.ChatMapper";

    public void saveChat(ChatMessageDTO messages){

        sqlSession.insert(namespace+".saveChat",messages);
    }
    public List<ChatMessageDTO> getChatMessage(String session_name){

        return sqlSession.selectList(namespace+".getChatMessage",session_name);
    }
    public void deleteChatAccount(GetChatRoomDTO getChatRoomDTO){
        sqlSession.update(namespace+".deleteChatAccount",getChatRoomDTO);
        sqlSession.delete(namespace+".checkDeleteRoom");

    }
    public void deleteChatPro(GetChatRoomDTO getChatRoomDTO){
        sqlSession.update(namespace+".deleteChatPro",getChatRoomDTO);
        sqlSession.delete(namespace+".checkDeleteRoom");

    }







}
