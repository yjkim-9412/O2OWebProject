package com.itwillbs.chat.model.domain;

public class DeleteChatDTO {
    private String currentUser;

    private String userEmail;

    private String session_name;

    private String receiver_email;

    public String getCurrentUser() {
        return currentUser;
    }

    public void setCurrentUser(String currentUser) {
        this.currentUser = currentUser;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getSession_name() {
        return session_name;
    }

    public void setSession_name(String session_name) {
        this.session_name = session_name;
    }

    public String getReceiver_email() {
        return receiver_email;
    }

    public void setReceiver_email(String receiver_email) {
        this.receiver_email = receiver_email;
    }
}
