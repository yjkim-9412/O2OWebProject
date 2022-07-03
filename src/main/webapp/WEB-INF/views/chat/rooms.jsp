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
    <form action="<%=request.getContextPath() %>/chat/room" method="post">
        <input type="text" id="name" name="name" class="form-control">
        <input type="submit" value="개설하기">
    </form>
</div>

</body>
</html>
<script type="javascript">
    $(document).ready(function (){
        var roomName = <c:set value="${ChatRoomDTO.roomId}"/>

        if(roomName != null){
            alert(roomName + "방이 개설되었습니다");

            $("form").submit(function (e){
               console.log("create room");
               e.preventDefault();

               var name = $('#name').val();

               if (name == ""){
                   alert("No user session");
                   history.back();
                   return false;
               }

            });
        }
    });

</script>
