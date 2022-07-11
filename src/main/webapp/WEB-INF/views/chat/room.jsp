<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>WebSocket Test</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
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
    .chat_wrap .input-div > textarea { width: 100%; height: 60px; border: none; padding: 10px; }

    .format { display: none; }
</style>
<body>
<div class="chat_wrap">
    <div class="header">
        ${user_name}
    </div>
    <div  class="chat">
        <ul>
            <!-- 동적 생성 -->
        </ul>
    </div>
    <div class="input-div">
        <textarea></textarea>
    </div>




    <!-- format -->

    <div  class="chat format">
        <ul>
            <li id="msgli">
                <div class="sender">
                    <span></span>
                </div>
                <div  class="message">
                    <span></span>
                </div>
            </li>
        </ul>
    </div>
</div>
<script>

    var socket = null;
    var isStomp = false;



</script>
<script>
    const Chat = (function(){
        const myName = '${user_name}';
        connectStomp();
        <c:forEach var="chatMessageDTO" items="${messageList}">
        var data = {
            "senderName": '${chatMessageDTO.sender_name}',
            "message": '${chatMessageDTO.message}',
            "receiverName": '${chatMessageDTO.receiver_name}'
        };

        resive(data);
        </c:forEach>

        function connectStomp() {
            isStomp = true;
            var sock = new SockJS("/stompTest"); // endpoint
            var client = Stomp.over(sock);
            socket = client;
            let first = true;
            client.connect({}, function () {
                if (first){
                    socket.send('/chat/enter', {}, JSON.stringify({session_name: '${session_name}', sender:'${user_email}' ,sender_name:'${user_name}',
                        message: "msg",
                    receiver: '${receiver}',receiver_name:'${receiver_name}'}));
                    first = false;
                }
                console.log("Connected stompTest!");
                socket.subscribe('/topic/room/'+'${session_name}', function (event) {
                    console.log("!!!!!!!!!!!!event>>", event);
                    const content = JSON.parse(event.body);
                    var sender =content.sender_name;
                    var messageSub = content.message;
                    var receiver = content.receiver_name;
                    console.log("송신인 : " + sender);
                    console.log("메세지 : " + content.message);
                    console.log("수신자 : " + receiver);
                    const data = {
                        "senderName"    : sender,
                        "message"        : messageSub,
                        "receiverName"  : receiver
                    };
                    resive(data);
                });
            });
            function disconnect() {
                if (socket !== null) {
                    socket.disconnect();
                }
            }
            //채팅방 브라우저 닫을시 연결해제
            window.onbeforeunload = function(e){
                disconnect();
            }
        }
        // init 함수
        function init() {
            // enter 키 이벤트
            $(document).on('keydown', 'div.input-div textarea', function(e){
                if(e.keyCode == 13 && !e.shiftKey) {
                    e.preventDefault();
                     const msg= $(this).val();
                    // 메시지 전송
                    if (!isStomp && socket.readyState !== 1) return;
                    if (isStomp){
                        sendMessage(msg);
                        console.log("연결상태 : " + isStomp);
                    }else{
                        console.log("연결상태 : " + isStomp);
                        }
                    clearTextarea();

                }
            });
        }

        // 메세지 태그 생성
        function createMessageTag(LR_className, senderName, message) {
            // 형식 가져오기
            let chatLi = $('div.chat.format ul li').clone();

            // 값 채우기
            chatLi.addClass(LR_className);
            chatLi.find('.sender span').text(senderName);
            chatLi.find('.message span').text(message);


            return chatLi;
        }

        // 메세지 태그 append
        function appendMessageTag(LR_className, senderName, message) {
            const chatLi = createMessageTag(LR_className, senderName, message);

            $('div.chat:not(.format) ul').append(chatLi)


            // 스크롤바 아래 고정
            $('div.chat').scrollTop($('div.chat').prop('scrollHeight'));


        }


        // 메세지 전송
        function sendMessage(msg) {
            socket.send('/chat/message', {}, JSON.stringify({
                session_name: '${session_name}',
                sender:'${user_email}' ,
                sender_name:'${user_name}',
                message: msg,
                receiver:'${receiver}',
                receiver_name:'${receiver_name}'}));
            console.log("sendMessage!!!!");


        }

        // 메세지 입력박스 내용 지우기
        function clearTextarea() {
            $('div.input-div textarea').val('');
        }

        // 메세지 수신
        function resive(data) {

            // const LR = (data.senderName != myName)? "left" : "right";
            // appendMessageTag("right", data.senderName, data.message);
            if (data.senderName == myName){
                appendMessageTag("right", data.senderName, data.message);
            } else {
                appendMessageTag("left", data.senderName, data.message);
            }
        }
        return {
            'init': init
        };
    })();

    $(function(){
        Chat.init();
    });

</script>
</body>
</html>