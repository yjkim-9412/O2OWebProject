package com.itwillbs.chat.model.domain;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class ChatRoomEnterDTO {
    private int enter_id;
    private String session_name;
    private String pro_email;
    private String account_email;




    public ChatRoomEnterDTO(String pro_email,String account_email,String session_name) {
        this.account_email = account_email;
        this.pro_email = pro_email;
        this.session_name = session_name;

    }
}
