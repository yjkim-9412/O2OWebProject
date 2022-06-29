<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <meta charset="UTF-8">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
  <script type="text/javascript"
          src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
  <title>마루 채팅창</title>
</head>
<body>
<input type="text" id="message"/>
<input type="button" id="sendBtn" value="submit"/>
<div id="messageArea"></div>
</body>
<script type="text/javascript">
  $("#sendBtn").click(function () {
    sendMessage();
    $('#message').val('')
  });

  let sock = new SockJS("http://localhost8080/resources/echo")
  sock.onmessage = onMessage;
  sock.onclose = onClose;

  // 메시지 전송
  function sendMessage() {
    sock.send($("#message").val());
  }

  function onMessage(msg) {
    var data = msg.data;
    $("#messageArea").append(data + "<br/>");
  }

  function onClose(evt) {
    $("#messageArea").append("연결 끊김");
  }
</script>

</html>