<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function ok() {
	document.fr.target="_parent";
	document.fr.submit();
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/pro/ok" method="post" name="fr">
<input type="hidden" value="${serviceId }" name="serviceId">
<input type="hidden" value="${city }" name="city">
<input type="hidden" value="${gu }" name="gu">
<input type="hidden" value="${dong }" name="dong">
이메일<br>
<input type="email" name="email"><br>
비밀번호<br>
<input type="password" name="pass"><br>
이름<br>
<input type="text" name="name"><br>
연락처<br>
<input type="tel" name="tel"><br>
성별<br>
<input type="radio" name="gender" value="남">남자
<input type="radio" name="gender" value="여">여자
<input type="radio" name="gender" value="기타">기타<br>
<input type="submit" value="회원가입" onclick="ok()">
</form>
</body>
</html>