package com.itwillbs.dao;

import com.itwillbs.chat.domain.ChatRoomDTO;
import com.itwillbs.chat.domain.MessageDTO;

import java.util.List;

public interface ChatDAO {
    public void createRoom(ChatRoomDTO chatRoomDTO)throws Exception;
    public ChatRoomDTO isRoom(ChatRoomDTO chatRoomDTO)throws Exception;
    public void insertMessage(MessageDTO messageDTO)throws Exception;
    //public String getPartner(ChatRoomDTO chatRoomDTO)throws Exception;
    public String getProfile(String str)throws Exception;
    public String getName(String str)throws Exception;
    public List<MessageDTO> getMessageList(String str)throws Exception;
    public List<ChatRoomDTO> getRoomList(String str)throws Exception;
    public List<ChatRoomDTO> getRoomList2(String str)throws Exception;
    public MessageDTO getRecentMessage(String str)throws Exception;


    public String getProId(String str)throws Exception;
    public List<ChatRoomDTO> getRoomListPro(String str)throws Exception;
    public void updateReadTime(int class_id , String Member_email , String PRO_USER_email)throws Exception;
    public void updateReadTimePro(int class_id , String Member_email , String PRO_USER_email)throws Exception;
    public int getUnReadCount(String  PRO_USER_email, int class_id, String Member_email)throws Exception;
    public int getUnReadCountPro(String  PRO_USER_email, int class_id, String Member_email)throws Exception;

    public int getAllCount(String str);
}
