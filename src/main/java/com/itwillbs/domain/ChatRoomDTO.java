package com.itwillbs.domain;

public class ChatRoomDTO {
    private String chatroom_id;
    private String Member_member_email;
    private String PRO_pro_email;
    private int CLASS_class_id;

    public String getChatroom_id() {
        return chatroom_id;
    }

    public void setChatroom_id(String chatroom_id) {
        this.chatroom_id = chatroom_id;
    }

    public String getMember_member_email() {
        return Member_member_email;
    }

    public void setMember_member_email(String member_member_email) {
        Member_member_email = member_member_email;
    }

    public String getPRO_pro_email() {
        return PRO_pro_email;
    }

    public void setPRO_pro_email(String PRO_pro_email) {
        this.PRO_pro_email = PRO_pro_email;
    }

    public int getCLASS_class_id() {
        return CLASS_class_id;
    }

    public void setCLASS_class_id(int CLASS_class_id) {
        this.CLASS_class_id = CLASS_class_id;
    }

    @Override
    public String toString() {
        return "ChatRoomVO [chatroom_id=" + chatroom_id + ", USER_user_id=" + Member_member_email + ", TUTOR_USER_user_id="
                + PRO_pro_email + ", CLASS_class_id=" + CLASS_class_id + "]";
    }
}
