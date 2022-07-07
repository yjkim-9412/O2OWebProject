package com.itwillbs.chat.model.domain;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class ChatRoomEnterDTO {

    private String roomId;
    private String member_email;
    private String pro_email;




    public ChatRoomEnterDTO(String pro_email,String member_email,String roomId) {
        this.member_email = member_email;
        this.roomId = roomId;
        this.pro_email = pro_email;

    }
}
