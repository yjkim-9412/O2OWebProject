package com.itwillbs.chat.repository;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ChatRoomEnterRepository {
    private Map<String, ChatRoomDTO> chatRoomDTOMap;
    @Inject
    private SqlSession sqlSession;
    private static final String namespace="com.itwillbs.mapper.ChatMapper";

    @PostConstruct
    private void init(ChatRoomDTO chatRoomDTO) {
        chatRoomDTOMap = new LinkedHashMap<>();

    }
    public ChatRoomDTO findByRoomId(Long roomId){
        return sqlSession.selectOne(namespace+".findByRoomId",roomId);
    }
    public List<ChatRoomEnterDTO> findRoomByEmail(String email){

        return sqlSession.selectList(namespace+"getUserRoomList",email);
    };
    public void insertRoom(ChatRoomEnterDTO chatRoomEnterDTO){
        sqlSession.insert(namespace+".insertRoom",chatRoomEnterDTO);

    }
    public ChatRoomDTO save(ChatRoomDTO chatRoomDTO){

        return chatRoomDTO;
    }
}
