<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="//">
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script	src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
</head>
<style type="text/css">
    *{ margin: 0; padding: 0; }
    .chat_wrap .header { font-size: 14px; padding: 15px 0; background: #F18C7E; color: white; text-align: center;  }

    .chat_wrap .chat { padding-bottom: 80px; }
    .chat_wrap .chat ul { width: 100%; list-style: none; }
    .chat_wrap .chat ul li { width: 100%; }
    .chat_wrap .chat ul li.left { text-align: left; }
    .chat_wrap .chat ul li.right { text-align: right; }

    .chat_wrap .chat ul li > div { font-size: 13px;  }
    .chat_wrap .chat ul li > div.sender { margin: 10px 20px 0 20px; font-weight: bold; }
    .chat_wrap .chat ul li > div.message { display: inline-block; word-break:break-all; margin: 5px 20px; max-width: 75%; border: 1px solid #888; padding: 10px; border-radius: 5px; background-color: #FCFCFC; color: #555; text-align: left; }

    .chat_wrap .input-div { position: fixed; bottom: 0; width: 100%; background-color: #FFF; text-align: center; border-top: 1px solid #F18C7E; }
    .chat_wrap .input-div > textarea { width: 100%; height: 80px; border: none; padding: 10px; }

    .format { display: none; }
</style>
<body>
<div class="chat_wrap">
    <div class="header">

    </div>
    <div class="chat">
        <ul>
            <!-- 동적 생성 -->
        </ul>
    </div>
    <div class="input-div">
        <textarea id="msg" placeholder="Press Enter for send message."></textarea>
    </div>

    <!-- format -->

    <div class="chat format">
        <ul>
            <li>
                <div class="sender">
                    <span></span>
                </div>
                <div class="message">
                    <span></span>
                </div>
            </li>
        </ul>
    </div>
</div>
<script>
    var client;
$(document).ready(function (){
   $(function (){
       var messageInput = $('textarea[name="msg"]')
       var roomNo = "${roomNo}";
       var member = $('.content').data('member');
       var sock = new SockJS("${pageContext.request.contextPath}/endpoint");
       client = Stomp.over(sock);

       function  sendmsg() {
           var message = messageInput.val();
           if(message == ""){
               return false;
           }
           //채팅 넣기
           client.send('/app/hello/' + roomNo,{},JSON.stringify({
               chatContent : message,
               memberId : ${MemberDTO.id}
           }))

       }
   })
});
</script>
</body>
</html>