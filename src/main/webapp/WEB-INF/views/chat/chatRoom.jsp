
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="profile" value='<%=session.getAttribute("id")%>' />


<script type="javascript">
connect();
    function connect(){
        sock = new SockJS('/chat/chatRoom.jsp');
        sock.onopen = function() {
            console.log('open');
        };
    }

</script>
</body>
</html>
