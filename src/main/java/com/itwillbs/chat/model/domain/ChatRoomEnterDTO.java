package com.itwillbs.chat.model.domain;

import com.itwillbs.domain.MemberDTO;
import lombok.Data;



@Data
public class ChatRoomEnterDTO {

    private Long id;

    private MemberDTO memberDTO;

    private ChatRoomDTO chatRoomDTO;
}
