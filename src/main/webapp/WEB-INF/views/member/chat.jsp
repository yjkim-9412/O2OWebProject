<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Simple Chat</title>
</head>
<body>
<div>
    <button type="button" onclick="openSocket()">대화방 참여</button>
    <button type="button" onclick="closeSocket()">대회방 나가기</button>
    <br/><br/><br/>
    메세지 입력 :
    <input type="text" id="sender" value="${sessionScope.id}" style="display: none;">
    <input type="text" id="messageinput">
    <button type="button" onclick="send()">메세지 전송</button>
    <button type="button" onclick="clearText()">대화내용 지우기</button>
</div>
<!-- 서버 응답 -->
<div id="messages">
</div>
<script type="text/javascript">
    let ws;
    let messages = document.getElementById("messages");

    function openSocket(){
        if (ws !== undefined && ws.readyState !== WebSocket.CLOSED){
            writeResponse("WebSocket is already opened.");
            return;
        }

        // 웹소켓 객체 만드는 코드
        ws = new WebSocket("ws://localhost:8080/member/chat");

        ws.onopen = function (event){
            if(event.data === undefined){
                return;
            }
            writeResponse("event.data");
        };
        ws.onclose = function (event){
            writeResponse("대화종료");
        }


    }

    function send() {
        let text = document.getElementById("messageinput").value+","+document.getElementById("sender").value;
            ws.send(text);
            text = "";
    }

    function closeSocket(){
        ws.close();
    }

    function writeResponse(text){
        messages.innerHTML += "<br/>"+text;
    }

    function clearText() {
        console.log(messages.parentNode);
        messages.parentNode.replaceChild(messages)
    }

</script>
</body>
</html>