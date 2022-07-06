package com.itwillbs.chat.model.domain;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class ChatRoomEnterDTO {

    private Long id;
    private MemberDTO memberDTO;
    private ChatRoomDTO chatRoomDTO;

    private ProDTO proDTO;

    public ChatRoomEnterDTO(MemberDTO memberDTO,ChatRoomDTO chatRoomDTO) {
        this.memberDTO = memberDTO;
        this.chatRoomDTO = chatRoomDTO;
    }
}
