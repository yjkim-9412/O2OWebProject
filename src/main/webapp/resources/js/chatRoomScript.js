function createSingleChat(commonData, callback, error) {

    $.ajax({
        type : 'post',
        url : '/createSingleChat',
        data : JSON.stringify(commonData),
        contentType : "application/json; charset=utf-8",
        success : function(result, status, xhr) {
            if (callback) {
                callback(result, status);
            }
        },
        error : function(xhr, status, er) {
            if (error) {
                error(status);
            }
        }
    });
}
function inviteChatMembers(commonData, callback, error) {

    $.ajax({
        type : 'post',
        url : '/inviteChatMembers',
        data : JSON.stringify(commonData),
        contentType : "application/json; charset=utf-8",
        success : function(result, status, xhr) {
            if (callback) {
                callback(result, status);
            }
        },
        error : function(xhr, status, er) {
            if (error) {
                error(status);
            }
        }
    });
}
function getChat_type(chatRoomNum, callback, error){

    $.get("/chat_type?chatRoomNum=" + chatRoomNum, function(result, status){

        if (callback) {
            callback(result, status);
        }

    }).fail(function(xhr, status, err) {
        if (error) {
            error(status);
        }
    });
}
function getChatRoomMembers(chatRoomNum, callback, error) {

    $.ajax({
        type : 'get',
        url : '/getChatRoomMembers?chatRoomNum='+chatRoomNum,
        success : function(result, status, xhr) {
            if (callback) {
                callback(result, status);
            }
        },
        error : function(xhr, status, er) {
            if (error) {
                error(status);
            }
        }
    });
}