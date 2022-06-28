<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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

    function init() {
        output = document.getElementById("output")
    }


    // 웹소켓 객체 만드는 코드


    function send_message() {
        ws = new WebSocket("ws://localhost:8080/websocket/member/echo.do");
        websocket.onopen = function (evt) {
            onOpen(evt)
        };
        websocket.onmessage = function (evt) {
            onMessage(evt)
        };
        websocket.onerror = function (evt) {
            onError(evt)
        };
    }

    function onOpen(evt) {
        writeToScreen("Connected to Endpoint!");
        doSend(textID.value);
    }

    function onMessage(evt) {
        writeToScreen("Message Received: " + evt.data);
    }
    function onError(evt) {
        writeToScreen('ERROR: ' + evt.data);
    }
    function doSend(message) {
        writeToScreen("Message Sent: " + message);
        websocket.send(message);
    }
    function writeToScreen(message){
        let pre = document.createElement("p");
        pre.style.wordWrap = "break-word";
        pre.innerHTML = message;

        output.appendChild(pre);
    }
    window.addEventListener("load", init, false);
</script>
<h1 style="text-align: center;">Hello World WebSocket Client</h1>
<br>
<div style="text-align: center;">
    <form action="">
        <input onclick="send_message()" value="Send" type="button">
        <input id="textID" name="message" value="Hello WebSocket!" type="text"><br>
    </form>
</div>
<div id="output"></div>
</body>
</html>