<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
h1{
text-align: center;
}
iframe{
width: 550px;
height: 650px;
margin-left: auto;
margin-right: auto;
border-radius: 10px; 
}
#ifdiv{
margin: 0px auto; width: 600px; height: 700px; padding:20px;
}
</style>
<body>
<<<<<<< HEAD
<jsp:include page="../inc/top.jsp"></jsp:include>
<h1>레슨 회원가입</h1>
<div id="ifdiv">
<iframe id="iframe_lesson" name="ifrm" src="<%=request.getContextPath() %>/pro/secCategory" >
</iframe>
</div>
<jsp:include page="../inc/bottom.jsp"></jsp:include>
=======
<h1>레슨 회원가입</h1>
<iframe id="iframe_lesson" name="ifrm" src="<%=request.getContextPath() %>/pro/secCategory" width="500" height="500">
</iframe>
>>>>>>> cf2224b3a454540a38e5855afa6f83490cc97ff4
</body>
</html>