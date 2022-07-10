<%--
  Created by IntelliJ IDEA.
  User: kim young jun
  Date: 2022-07-03
  Time: 오후 1:57
  To change this template use File | Settings | File Templates.
--%>
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
    <ul>
        <li><a href="<%=request.getContextPath() %>/chat/room?roomId=${room.roomId}"></a></li>
    </ul>
</div>

</div>

</body>
</html>
