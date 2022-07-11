package com.itwillbs.chat.model.domain;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;


@Getter
@Setter
public class GetChatRoomDTO {

    private String session_name;
    private String pro_email;
    private String account_email;
    private String enter_user;
    private String receiver_user;
    private String enter_name;
    private String receiver_name;
    private String  account_name;
    private String  pro_name;

}
