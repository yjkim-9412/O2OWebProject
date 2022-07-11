
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<div class="container">

<div>
    현재유저 : ${currentUser}
    <ul>
        <c:forEach var="GetChatRoomDTO" items="${chatList}">
            <c:if test="${currentUser eq 'account'}">
                <c:set var="session_name" value="${GetChatRoomDTO.session_name}"/>
                <li><form action="<%=request.getContextPath() %>/chat/room/${session_name}" method="post">
                     <input type="hidden" name="receiver_email" value="${GetChatRoomDTO.pro_email}">
                    <input type="hidden" name="session_name" value="${GetChatRoomDTO.session_name}">
                    <input type="hidden" name="userEmail" value="${userEmail}">
                    <input type="hidden" name="currentUser" value="${currentUser}">
                        ${GetChatRoomDTO.pro_name}님과의 채팅<br>
                    <input type="submit" value="대화하기">
                </form></li>
            </c:if>
            <c:if test="${currentUser eq 'pro'}">
                <c:set var="session_name" value="${GetChatRoomDTO.session_name}"/>
                <li><form action="<%=request.getContextPath() %>/chat/room/${session_name}" method="post">
                    <input type="hidden" name="receiver_email" value="${GetChatRoomDTO.account_email}">
                    <input type="hidden" name="session_name" value="${GetChatRoomDTO.session_name}">
                    <input type="hidden" name="userEmail" value="${userEmail}">
                    <input type="hidden" name="currentUser" value="${currentUser}">
                        현재유저 ${currentUser},${GetChatRoomDTO.account_name}님과의 채팅<br>
                    <input type="submit" value="대화하기">
                </form></li>
            </c:if>
        </c:forEach>
        
    </ul>
</div>

</div>

</body>
</html>
