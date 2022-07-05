package com.itwillbs.chat.repository;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

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
    public void save(ChatRoomEnterDTO chatRoomEnterDTO){
        sqlSession.insert(namespace+".save",chatRoomEnterDTO);
    }
    public Optional<ChatRoomDTO> findById(Long roomId) {

        return sqlSession.selectOne(namespace+"findById",roomId);
    };
     public List<ChatRoomEnterDTO> findByUser(MemberDTO user){

         return sqlSession.selectList(namespace+"findByUser",user);
    }
    public List<ChatRoomEnterDTO> findByPro(ProDTO user){

        return sqlSession.selectList(namespace+"findByPro",user);
    }
    public List<ChatRoomEnterDTO> findByChatRoom(ChatRoomDTO chatRoomDTO){

         return sqlSession.selectList(namespace+".findByChatRoom",chatRoomDTO);
    }
}
