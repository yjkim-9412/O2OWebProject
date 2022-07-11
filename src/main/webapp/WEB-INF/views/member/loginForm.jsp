<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        Kakao.init('JAVASCRIPT_KEY');
        Kakao.isInitialized();
        console.log(Kakao.isInitialized());

    </script>
    <script type="text/javascript">
    	function useAcc(){
    		document.getElementById("pro").style="display:none";
    		document.getElementById("acc").style="display:block";
    		document.getElementById("acclogin").style="display:none";
    		document.getElementById("prologin").style="display:block";
    	}
		function usePro(){
			document.getElementById("acc").style="display:none";
			document.getElementById("pro").style="display:block";
			document.getElementById("prologin").style="display:none";
    		document.getElementById("acclogin").style="display:block";
    	}
    </script>
<meta charset="UTF-8">
<title>member/loginForm.jsp</title>
<style type="text/css">
#loginFormWrap{
	margin: 20px auto;
	width: 500px;
	height: 500px;
}

</style>
</head>
<body>
<jsp:include page="../inc/top.jsp"></jsp:include>
<div style="text-align: center;"><span onclick="useAcc()" id="acclogin" style="display:none">전환하기</span><span onclick="usePro()" id="prologin" >전환하기</span></div>
<div id="loginFormWrap">
<div id="acc">
<form action="<%=request.getContextPath() %>/member/loginPro" method="post">
<h2 style="text-align: center;">받고 로그인</h2>
이메일  <input type="email" name="email"> <br>
비밀번호  <input type="password" name="password"><br>
<input type="submit" value="로그인">
</form>
</div>

<div id="pro" style="display:none">
<form action="<%=request.getContextPath() %>/pro/loginPro" method="post">
<h2 style="text-align: center;">주고 로그인</h2>
이메일  <input type="email" name="email"> <br>
비밀번호  <input type="password" name="password"><br>
<input type="submit" value="로그인">
</form>
</div>
</div>
<jsp:include page="../inc/bottom.jsp"></jsp:include>
</body>
</html>