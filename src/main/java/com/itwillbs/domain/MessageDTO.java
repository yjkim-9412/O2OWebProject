package com.itwillbs.domain;
import java.util.Date;

import com.google.gson.Gson;
public class MessageDTO {
    private String message_id;
    private String message_sender;
    private String message_receiver;
    private String message_content;
    private Date message_sendTime;
    private Date message_readTime;
    private String CHATROOM_chatroom_id;
    private String member_user_email;
    private String Pro_user_email;
    private int CLASS_class_id;
    private String user_profileImagePath;
    private String receiver_user_profileImagePath;
    private String member_name;
    private String receiver_member_name;
    private String class_name;
    private int class_id;
    private String PRO_pro_email;
    private String pro_name;
    private String tuti_id;
    private int unReadCount;

    public String getMessage_id() {
        return message_id;
    }

    public void setMessage_id(String message_id) {
        this.message_id = message_id;
    }

    public String getMessage_sender() {
        return message_sender;
    }

    public void setMessage_sender(String message_sender) {
        this.message_sender = message_sender;
    }

    public String getMessage_receiver() {
        return message_receiver;
    }

    public void setMessage_receiver(String message_receiver) {
        this.message_receiver = message_receiver;
    }

    public String getMessage_content() {
        return message_content;
    }

    public void setMessage_content(String message_content) {
        this.message_content = message_content;
    }

    public Date getMessage_sendTime() {
        return message_sendTime;
    }

    public void setMessage_sendTime(Date message_sendTime) {
        this.message_sendTime = message_sendTime;
    }

    public Date getMessage_readTime() {
        return message_readTime;
    }

    public void setMessage_readTime(Date message_readTime) {
        this.message_readTime = message_readTime;
    }

    public String getCHATROOM_chatroom_id() {
        return CHATROOM_chatroom_id;
    }

    public void setCHATROOM_chatroom_id(String CHATROOM_chatroom_id) {
        this.CHATROOM_chatroom_id = CHATROOM_chatroom_id;
    }



    public int getCLASS_class_id() {
        return CLASS_class_id;
    }

    public void setCLASS_class_id(int CLASS_class_id) {
        this.CLASS_class_id = CLASS_class_id;
    }

    public String getUser_profileImagePath() {
        return user_profileImagePath;
    }

    public void setUser_profileImagePath(String user_profileImagePath) {
        this.user_profileImagePath = user_profileImagePath;
    }

    public String getReceiver_user_profileImagePath() {
        return receiver_user_profileImagePath;
    }

    public void setReceiver_user_profileImagePath(String receiver_user_profileImagePath) {
        this.receiver_user_profileImagePath = receiver_user_profileImagePath;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public String getReceiver_member_name() {
        return receiver_member_name;
    }

    public void setReceiver_member_name(String receiver_member_name) {
        this.receiver_member_name = receiver_member_name;
    }

    public String getClass_name() {
        return class_name;
    }

    public void setClass_name(String class_name) {
        this.class_name = class_name;
    }

    public int getClass_id() {
        return class_id;
    }

    public void setClass_id(int class_id) {
        this.class_id = class_id;
    }

    public String getMember_user_email() {
        return member_user_email;
    }

    public void setMember_user_email(String member_user_email) {
        this.member_user_email = member_user_email;
    }

    public String getPro_user_email() {
        return Pro_user_email;
    }

    public void setPro_user_email(String pro_user_email) {
        Pro_user_email = pro_user_email;
    }

    public String getPRO_pro_email() {
        return PRO_pro_email;
    }

    public void setPRO_pro_email(String PRO_pro_email) {
        this.PRO_pro_email = PRO_pro_email;
    }

    public String getPro_name() {
        return pro_name;
    }

    public void setPro_name(String pro_name) {
        this.pro_name = pro_name;
    }

    public String getTuti_id() {
        return tuti_id;
    }

    public void setTuti_id(String tuti_id) {
        this.tuti_id = tuti_id;
    }

    public int getUnReadCount() {
        return unReadCount;
    }

    public void setUnReadCount(int unReadCount) {
        this.unReadCount = unReadCount;
    }
    public static MessageDTO convertMessage(String source) {
        MessageDTO message = new MessageDTO();
        Gson gson = new Gson();
        message = gson.fromJson(source,  MessageDTO.class);
        return message;
    }
    @Override
    public String toString() {
        return "MessageVO [message_id=" + message_id + ", message_sender=" + message_sender + ", message_receiver="
                + message_receiver + ", message_content=" + message_content + ", message_sendTime=" + message_sendTime
                + ", message_readTime=" + message_readTime + ", CHATROOM_chatroom_id=" + CHATROOM_chatroom_id
                + ", USER_user_id=" + member_user_email + ", TUTOR_USER_user_id=" + Pro_user_email + ", CLASS_class_id="
                + CLASS_class_id + ", user_profileImagePath=" + user_profileImagePath
                + ", receiver_user_profileImagePath=" + receiver_user_profileImagePath + ", user_name=" + member_name
                + ", receiver_user_name=" + receiver_member_name + ", class_name=" + class_name + ", class_id=" + class_id
                + ", TUTOR_tutor_id=" + PRO_pro_email + ", tutor_name=" + pro_name + ", tuti_id=" + tuti_id
                + ", unReadCount=" + unReadCount + "]";
    }
}
