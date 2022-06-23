<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>member/insertForm.jsp</title>

    <link rel="stylesheet" href="resources/css/maicons.css">

    <link rel="stylesheet" href="resources/css/bootstrap.css">

    <link rel="stylesheet" href="resources/vendor/animate/animate.css">

    <link rel="stylesheet" href="resources/css/theme.css">
</head>
<body>
<div class="back-to-top"></div>

<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-white sticky" data-offset="500">
        <div class="container">
            <a href="#" class="navbar-brand">Seo<span class="text-primary">Gram.</span></a>

            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse collapse" id="navbarContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="service.html">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="blog.html">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.html">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-primary ml-lg-2" href="<%=request.getContextPath() %>/member/insert">회원가입</a>
                    </li>
                </ul>
            </div>

        </div>
    </nav>
    <div class="page-section">
        <div class="container">
            <div class="row">



<form action="<%=request.getContextPath() %>/member/insertPro" id="insert" method="post">
<label> 아이디 </label>
 <input type="text" name="id" id="id"><br>
 
<label> 이메일  </label>
<input type="email" name="email" id="email"> <br>

<label> 비밀번호 </label>
 <input type="password" name="password" id="password"><br>
 
<label> 이름 </label> 
<input type="text" name="name" id="name"><br>

<input type="submit" value="회원가입"> <br>

		<!-- 카카오 로그인 -->
	<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?client_id=b28c257d1c3a9f7b60f4ede210556e5a&redirect_uri=http://localhost:8080/myweb2/member/main&response_type=code">	
		<img src="<%=request.getContextPath() %>/resources/img/kakao_login.png">
	</a>

</form>
</body>
</html>