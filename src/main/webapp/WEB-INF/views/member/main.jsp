<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/main.jsp</title>
</head>
<body>
<%
// //session "id" 가져오기
String id= session.getAttribute("id").toString();
// // 세션값 없으면 (세션값이 null이면 ) => loginForm.jsp 이동
// if(id==null){
// 	response.sendRedirect("loginForm.jsp");
// }
%>
<!-- <%=id %>님 로그인 하셨습니다.  -->
<%=id %>님 로그인 하셨습니다.<br>
<a href="<%=request.getContextPath() %>/member/logout">로그아웃</a><br>
<a href="<%=request.getContextPath() %>/mypage/info">회원정보조회</a><br>
<a href="<%=request.getContextPath() %>/member/update">회원정보수정</a><br>
<a href="<%=request.getContextPath() %>/member/delete">회원정보삭제</a><br>
<%
// 세션값이 있으면(세션값이 null이 아니면)
// 세션값이 "admin" 이면 
// if(id!=null){
// 	if(id.equals("admin")){
		%>
		<a href="<%=request.getContextPath() %>/member/list">회원목록</a>
		<%
// 	}
// }
%>

</body>
</html>

=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/main.jsp</title>
</head>
<body>
<%
// //session "id" 가져오기
// String id= session.getAttribute("id").toString();
// // 세션값 없으면 (세션값이 null이면 ) => loginForm.jsp 이동
// if(id==null){
// 	response.sendRedirect("loginForm.jsp");
// }
%>
<c:if test="${! empty sessionScope.email }">
	${sessionScope.email}님 환영합니다!
</c:if>

<c:if test="${! empty ac }">
	${ac}님 환영합니다!
</c:if>



<a href="<%=request.getContextPath() %>/member/logout">로그아웃</a><br>
<a href="<%=request.getContextPath() %>/member/info">회원정보조회</a><br>
<a href="<%=request.getContextPath() %>/member/update">회원정보수정</a><br>
<a href="<%=request.getContextPath() %>/member/delete">회원정보삭제</a><br>
<%
// 세션값이 있으면(세션값이 null이 아니면)
// 세션값이 "admin" 이면 
// if(id!=null){
// 	if(id.equals("admin")){
		%>
		<a href="<%=request.getContextPath() %>/member/list">회원목록</a>
		<%
// 	}
// }
%>

</body>
</html>

>>>>>>> 9869836 (카카오 API insert로 이동 ,  로그인시 메인화면 이메일 or 카카오 닉네임 출력 등등)
