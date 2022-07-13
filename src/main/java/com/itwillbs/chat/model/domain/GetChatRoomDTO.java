package com.itwillbs.chat.model.domain;

import lombok.Getter;
import lombok.Setter;



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

    public String getEnter_user() {
        return enter_user;
    }

    public void setEnter_user(String enter_user) {
        this.enter_user = enter_user;
    }

    public String getReceiver_user() {
        return receiver_user;
    }

    public void setReceiver_user(String receiver_user) {
        this.receiver_user = receiver_user;
    }

    public String getEnter_name() {
        return enter_name;
    }

    public void setEnter_name(String enter_name) {
        this.enter_name = enter_name;
    }

    public String getReceiver_name() {
        return receiver_name;
    }

    public void setReceiver_name(String receiver_name) {
        this.receiver_name = receiver_name;
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
}
