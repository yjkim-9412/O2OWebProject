package com.itwillbs.chat.repository;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import com.itwillbs.chat.model.domain.ChatRoomEnterDTO;
import com.itwillbs.chat.model.domain.GetChatRoomDTO;
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

    public GetChatRoomDTO findBySession_name(String session_name){
        return sqlSession.selectOne(namespace+".findBySession_name",session_name);
    }
    public List<GetChatRoomDTO> findRoomAccount_email(String account_email){

        return sqlSession.selectList(namespace+".findRoomAccount_email",account_email);
    }
    public List<GetChatRoomDTO> findRoomPro_email(String pro_email){

        return sqlSession.selectList(namespace+".findRoomPro_email",pro_email);
    }


    public void saveJoinUsers (ChatRoomEnterDTO chatRoomEnterDTO){

         Boolean finish = saveRoom(chatRoomEnterDTO);
         if (finish){
             System.out.println("유저 저장중 : " +chatRoomEnterDTO.getSession_name()+ " 프로-> " + chatRoomEnterDTO.getPro_email()+" 회원-> "+chatRoomEnterDTO.getAccount_email());
             sqlSession.insert(namespace+".saveUsers",chatRoomEnterDTO);
         }else {
             System.out.println("유저 저장 실패");
         }

    }
    public Boolean saveRoom(ChatRoomEnterDTO chatRoomEnterDTO){

        sqlSession.insert(namespace+".saveRoom",chatRoomEnterDTO.getSession_name());

        return true;
    }

}
