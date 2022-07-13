package com.itwillbs.chat.model.domain;

import lombok.Getter;
import lombok.Setter;



public class ChatRoomEnterDTO {
    private String session_name;
    private String pro_email;
    private String account_email;
    private String account_name;
    private String pro_name;

    public String getSession_name() {
        return session_name;
    }

    public void setSession_name(String session_name) {
        this.session_name = session_name;
    }

    public String getPro_email() {
        return pro_email;
    }

    public void setPro_email(String pro_email) {
        this.pro_email = pro_email;
    }

    public String getAccount_email() {
        return account_email;
    }

    public void setAccount_email(String account_email) {
        this.account_email = account_email;
    }

    public String getAccount_name() {
        return account_name;
    }

    public void setAccount_name(String account_name) {
        this.account_name = account_name;
    }

    public String getPro_name() {
        return pro_name;
    }

    public void setPro_name(String pro_name) {
        this.pro_name = pro_name;
    }

    public ChatRoomEnterDTO(ChatRoomDTO chatRoomDTO) {
        this.account_email = chatRoomDTO.getAccount_email();
        this.pro_email = chatRoomDTO.getPro_email();
        this.session_name = chatRoomDTO.getSession_name();
        this.pro_name=chatRoomDTO.getPro_name();
        this.account_name=chatRoomDTO.getAccount_name();
    }
}
