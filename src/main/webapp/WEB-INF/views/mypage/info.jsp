<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com/">
  
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
  
  <!--   구글폰트(버튼) -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">

  <title>MaRoo</title>

  <link rel="stylesheet" href="../resources/css/maicons.css">

  <link rel="stylesheet" href="../resources/css/bootstrap.css">

  <link rel="stylesheet" href="../resources/vendor/animate/animate.css">

  <link rel="stylesheet" href="../resources/css/theme.css">
  
  <!-- 부트스트랩  -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  
<style>

input {
  width: 100%;
  border: 1px solid #bbb;
  border-radius: 8px;
  padding: 10px 12px;
  font-size: 12px;
}
input:focus{
	outline:1px solid #FFCD4A;
}


/* 마루 사이즈 */
header img {
  width: 150px;
  margin-bottom: 5px;
}


/* 회원정보 */
.thumb {
    width: 4.375rem;
    height: 4.375rem;
    min-width: 4.375rem;
    border-radius: 0.75rem;
    overflow: hidden;
    padding-right: 3px;
}

.user-info {
    flex: auto;
    text-align: left;
    padding-left: 0.75rem;
}

.user-name {
    display: flex;
    font-size: 1.125rem;
    font-weight: 500;
    color: #323232;
    position: relative;
    font-weight: bold;
    left: 70px;
    bottom: 60px;
}
  
.name-length {
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
    padding-right: 0.3125rem;
    max-width: 8.45rem;
}  
  
.user-id {
    display: flex;
    font-size: .75rem;
    color: #b5b5b5;
    position: relative;
    left: 70px;
    bottom: 58px;
    
}  
 
.id-length {
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
    max-width: 11.6875rem;
    padding-left: 5px;
} 

.arrow {
	position: relative;
	left: 600px;
    bottom: 80px;
}

.main-menu {
    display: flex;
    align-items: center;
    font-size: 1.125rem;
    font-weight: 700;
    color: #323232;
}

.sub-menu {
    font-size: 16px;
    font-weight: 500;
    color: #737373;
    padding: 0;
 
}

.sub-menu-container {
    padding: 1rem 0;
}

.sub-menu-container .sub-menu-list {
    position: relative;
    display: flex;
    align-items: center;
}
  
.underline {
    border-bottom: 0.0625rem solid;
    border-color: #f2f2f2;
}  
  
ul li {
    list-style: none;
}

</style>
  

  
</head>
<body>




  <!-- Back to top button -->
  <div class="back-to-top"></div>
  
  <header>
      <jsp:include page="../inc/top.jsp"/>
  </header>

  <input type="hidden" name="id" value="${sessionScope.id }">
  <input type="hidden" name="email" value="${memberDTO.email }">
  <input type="hidden" name="password" value="${memberDTO.password }">
  

  <div class="page-section" style="padding-top: 0px">
    <div class="container">
          <form action="#" class="contact-form py-5 px-lg-5" style="width: 700px; margin: auto;" id="info">
            <h2 class="text-black"><b>마이페이지</b></h2>
            <div class="row form-group"  style="margin-top: 50px; margin-bottom: 50px;">
                <div class="user-profile">
            <a href="${pageContext.request.contextPath}/mypage/account-info" style="text-decoration: none; height: 30px; margin-bottom: 60px;">

                <c:choose>
                    <c:when test="${img.length() == 0}">
                        <img alt="profile" src="<%=request.getContextPath()%>/resources/img/joogo.jpg" class="thumb">
                    </c:when>
                    <c:otherwise>
                        <img alt="profile" src="<%=request.getContextPath()%>/resources/upload/${img}" class="thumb">
                    </c:otherwise>
                </c:choose>

            </a>
                </div>
                <a href="<%=request.getContextPath() %>/mypage/account-info" style="text-decoration: none; " class="sub-menu">
            	<div class="user-info">
            		<div class="user-name">
            			<span class="name-length">${memberDTO.name}</span> 고객님
            		</div>
            		<div class="user-id">
            			<span class="id-length">${memberDTO.email }</span>
            		</div>
            	</div>
            </a>
            </div>
    
            <div class="row form-group" style="margin-top: 30px; margin-bottom: 50px">
              	<ul>
              		<li class="main-menu">주고받고</li>
              		</li>
              		<li class="sub-menu sub-menu-container underline">
					<a href="<%=request.getContextPath() %>/requests/sentsent" style="text-decoration: none; " class="sub-menu">받은 견적</a>
              		</li>
                    <li class="sub-menu sub-menu-container underline">
                        <a href="<%=request.getContextPath() %>/chat/rooms" style="text-decoration: none; " class="sub-menu">내 채팅방 목록 보기</a>
                    </li>
              	</ul>
            </div>
            
            <div class="row form-group" style="margin-top: 30px; margin-bottom: 50px;">
              	<ul>
              		<li class="main-menu">마루페이</li>
              		<li class="sub-menu sub-menu-container underline">
              			<a href="#" style="text-decoration: none;" class="sub-menu">거래내역</a>
              		</li>
              		<li class="sub-menu sub-menu-container underline">
              			<a href="#" style="text-decoration: none;" class="sub-menu">쿠폰/이벤트</a>
              		</li>
              	</ul>
            </div>
    
            <div class="row form-group" style="margin-top: 30px; margin-bottom: 50px">
              	<ul>
              		<li class="main-menu">커뮤니티</li>
              		<li class="sub-menu sub-menu-container underline">
              			<a href="#" style="text-decoration: none;" class="sub-menu">마루생활 작성글/댓글</a>
              		</li>
             	</ul> 
            </div>			
    
            <div class="row form-group mt-4">

            </div>
          </form>
    </div>
</div>
  <!-- 푸터 -->

  <footer class="page-footer bg-image" style="background-image: url(<%=request.getContextPath() %>/resources/img/footer1.jpg);">
      <jsp:include page="../inc/bottom.jsp"/>
  </footer>
 
<script src="../resources/js/jquery-3.5.1.min.js"></script>

<script src="../resources/js/bootstrap.bundle.min.js"></script>

<script src="../resources/js/google-maps.js"></script>

<script src="../resources/vendor/wow/wow.min.js"></script>

<script src="../resources/js/theme.js"></script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIA_zqjFMsJM_sxP9-6Pde5vVCTyJmUHM&callback=initMap"></script>

</body>
</html>



