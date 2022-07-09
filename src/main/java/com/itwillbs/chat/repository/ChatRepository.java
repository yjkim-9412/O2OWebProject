package com.itwillbs.chat.repository;

import com.itwillbs.chat.model.domain.ChatMessageDTO;
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






}
