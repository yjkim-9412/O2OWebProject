package com.itwillbs.dao;

import com.itwillbs.domain.ChatRoomDTO;
import com.itwillbs.domain.MessageDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.List;

@Repository
public class ChatDAOImpl implements ChatDAO{
    @Inject
    private SqlSession sqlSession;

    private static String namespace = "com.itwillbs.chat.ChatMapper";

    @Override
    public void createRoom(ChatRoomDTO chatRoomDTO) throws Exception {
        sqlSession.insert(namespace+"createRoom",chatRoomDTO);
        System.out.println("채팅방 생성");
    }

    @Override
    public ChatRoomDTO isRoom(ChatRoomDTO chatRoomDTO) throws Exception {
       ChatRoomDTO chatRoomDTO1 = null;
       chatRoomDTO1 = sqlSession.selectOne(namespace+".isRoom",chatRoomDTO);

        System.out.println("chatRoomDTO1_isRoom");

        return chatRoomDTO1;
    }

    @Override
    public void insertMessage(MessageDTO messageDTO) throws Exception {
        sqlSession.insert(namespace+".insertMessage", messageDTO);
    }

    @Override
    public String getPartner(ChatRoomDTO chatRoomDTO) throws Exception {

        List<MessageDTO> messageDTOList = sqlSession.selectList(namespace+".getPartner",chatRoomDTO);

        return messageDTOList.get(0).getMember_user_email();
    }

    @Override
    public String getProfile(String str) throws Exception {
        return sqlSession.selectOne(namespace+".getProfile",str);
    }

    @Override
    public String getName(String str) throws Exception {
        return sqlSession.selectOne(namespace+".getName",str);
    }

    @Override
    public List<MessageDTO> getMessageList(String str) throws Exception {
        return sqlSession.selectList(namespace+".getMessageList",str);
    }

    @Override
    public List<ChatRoomDTO> getRoomList(String str) throws Exception {
        return sqlSession.selectList(namespace+".getRoomList",str);
    }

    @Override
    public List<ChatRoomDTO> getRoomList2(String str) throws Exception {
        return sqlSession.selectList(namespace+".getRoomList2",str);
    }

    @Override
    public MessageDTO getRecentMessage(String str) throws Exception {
        return sqlSession.selectOne(namespace+".getRecentMessage",str);
    }

    @Override
    public String getProId(String str) throws Exception {
        return sqlSession.selectOne(namespace+".getProId");
    }

    @Override
    public List<ChatRoomDTO> getRoomListPro(String str) throws Exception {
        return sqlSession.selectList(namespace+"getRoomListPro",str);
    }

    @Override
    public void updateReadTime(int class_id, String Member_email, String PRO_USER_email) throws Exception {
        HashMap<String,Object> map = new HashMap<String,Object>();

        map.put("PRO_USER_email",PRO_USER_email);
        map.put("Member_email",Member_email);
        map.put("CLASS_class_id",class_id);
        sqlSession.update(namespace+".updateReadTime",map);
    }


    @Override
    public int getUnReadCount(String PRO_USER_email, int class_id, String Member_email) throws Exception {
        HashMap<String,Object> map = new HashMap<String,Object>();

        map.put("PRO_USER_email",PRO_USER_email);
        map.put("Member_email",Member_email);
        map.put("CLASS_class_id",class_id);

        return sqlSession.selectOne(namespace+".getUnReadCount");
    }

    @Override
    public int getAllCount(String str) {
        HashMap<String, Object> map = new HashMap<String, Object> ();
        map.put("Member_email",str);
        map.put("PRO_USER_email",str);
        if(sqlSession.selectOne(namespace+".getAllCount",map) == null){
            return 0;
        }else {
            return sqlSession.selectOne(namespace+"getAllCount",map);
        }

    }

    @Override
    public void updateReadTimePro(int class_id, String Member_email, String PRO_USER_email) throws Exception {
        HashMap<String, Object> map = new HashMap<String, Object> ();

        map.put("PRO_USER_email",PRO_USER_email);
        map.put("Member_email",Member_email);
        map.put("CLASS_class_id",class_id);
        sqlSession.update(namespace+".updateTimePro",map);
    }

    @Override
    public int getUnReadCountPro(String PRO_USER_email, int class_id, String Member_email) throws Exception {
        HashMap<String, Object> map = new HashMap<String, Object> ();

        map.put("PRO_USER_email",PRO_USER_email);
        map.put("Member_email",Member_email);
        map.put("CLASS_class_id",class_id);

        return sqlSession.selectOne(namespace+".getUnReadCountTutor",map);
    }
}
