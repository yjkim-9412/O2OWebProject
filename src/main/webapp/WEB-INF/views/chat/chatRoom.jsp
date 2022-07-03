<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        .text_right {
        text-align: right;
    }

    .text_left {
        text-align: left;
    }

    .chattingBox {
        padding: 15px;
        border: 1px solid #AAA;
        margin: 10px 0;
    }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script	src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
</head>
<body>
<h1>Chatting Page (id: ${user})</h1>  <br>
<form>
    <div>
        <div><input type="text" id="message" value="전송할 메세지 입력하세요"/>
            <input type="submit" id="sendBtn" value="전송"/></div>
        <br>
        <div class="well" id="chatdata">
            <!-- User Session Info Hidden -->
            <input type="hidden" value='${user}' id="sessionuserid">
        </div>
    </div>
</form>
</body>
<script>
    var sock = new SockJS("<c:url value="/"/>");
    sock.onmessage = onMessage;
    sock.onclose = onClose;

    $(document).ready(function () {
        $("form").submit(function () {
            console.log('send message...');
            console.log($('#message').val());
            sendMessage();
            $('#message').val();
            $('#message').focus();
            return false;
        });
    });


    function sendMessage() {

        var msg = {
            user: '${user}',
            to: 'azvllktv',
            articleId: '${articleId}',
            articleOwner: '${articleOwner}',
            message: $('#message').val()
        };
          sock.send(JSON.stringify(msg));

          console.log(msg);
    }

    function onMessage(evt) {
        var data = evt.data;
        msgData = JSON.parse(data);
        console.log(data);
        var sessionid = null;
        var message = null;
        var currentuser_session = $('#sessionuserid').val();
        console.log('current session id: ' + currentuser_session);
        var target = $('#chattingBox-1');
        if (target.length == 0) {
            $('<div id=\"chattingBox-1\" class=\"chattingBox\"></div>').html('<h3>${user} : 게시물 작성자-' + msgData.articleOwner + '</h3>').appendTo('body');
            $('#chattingBox-1').append('<hr>')
        }
        if (msgData.user == currentuser_session) {
            var printHTML = "<div class='well text_right'>";
            printHTML += "<div class='alert alert-info'>";
            printHTML += "<strong>[" + msgData.user + "] -> " + msgData.message + "</strong>";
            printHTML += "</div>";
            printHTML += "</div>";
            $('#chattingBox-1').append(printHTML);
        } else {
            var printHTML = "<div class='well text_left'>";
            printHTML += "<div class='alert alert-warning'>";
            printHTML += "<strong>[" + msgData.user + "] -> " + msgData.message + "</strong>";
            printHTML += "</div>";
            printHTML += "</div>";
            $('#chattingBox-1').append(printHTML);
        }
        console.log('chatting data: ' + data);
    }

    function onClose(evt) {
        $("#data").append("연결 끊김");
    }


</script>
</html>