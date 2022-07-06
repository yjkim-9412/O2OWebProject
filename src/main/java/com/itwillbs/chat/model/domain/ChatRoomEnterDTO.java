package com.itwillbs.chat.model.domain;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;
import lombok.Data;



@Data
public class ChatRoomEnterDTO {

    private Long id;

    private MemberDTO memberDTO;

    private ChatRoomDTO chatRoomDTO;

    private ProDTO proDTO;
}
