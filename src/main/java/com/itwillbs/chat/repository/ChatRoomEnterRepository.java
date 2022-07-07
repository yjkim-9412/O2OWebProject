package com.itwillbs.chat.repository;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Repository
public class ChatRoomEnterRepository {
    @Inject
    private SqlSession sqlSession;
    private static final String namespace="com.itwillbs.mapper.ChatMapper";

    public ChatRoomDTO findByRoomId(Long roomId){
        return sqlSession.selectOne(namespace+".findByRoomId",roomId);
    }
    public List<ChatRoomEnterDTO> findRoomByEmail(String email){

        return sqlSession.selectList(namespace+"getUserRoomList",email);
    }
    public List<ChatRoomEnterDTO> findRoomByEmailPro(String email){

        return sqlSession.selectList(namespace+"getUserRoomList",email);
    }

    public Optional<ChatRoomDTO> findById(String roomId) {

        return sqlSession.selectOne(namespace+"findById",roomId);
    }
     public List<ChatRoomEnterDTO> findByUser(MemberDTO user){

         return sqlSession.selectList(namespace+"findByUser",user);
    }
    public List<ChatRoomEnterDTO> findByPro(ProDTO user){

        return sqlSession.selectList(namespace+"findByPro",user);
    }
    public List<ChatRoomEnterDTO> findByChatRoom(String roomId){

         return sqlSession.selectList(namespace+".findByChatRoom",roomId);
    }

    public void saveJoinUsers (ChatRoomEnterDTO chatRoomEnterDTO){

         Boolean finish = saveRoom(chatRoomEnterDTO);
         if (finish){
             sqlSession.insert(namespace+".saveUsers"+chatRoomEnterDTO);
         }else {
             System.out.println("유저 저장 실패");
         }

    }
    public Boolean saveRoom(ChatRoomEnterDTO chatRoomEnterDTO){

        sqlSession.insert(namespace+".saveRoom",chatRoomEnterDTO.getRoomId());

        return true;
    }
}
