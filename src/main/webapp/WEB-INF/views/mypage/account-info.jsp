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


    * {
      box-sizing: border-box;
    }

    div {
      display: block;
    }

    .item {
      color: #323232;
      width: 600px;
    }

    .item-container {
      cursor: pointer;
      display: flex;
      align-items: center;
      padding: 1rem 0 1rem 0.5rem;
      border-bottom: 0.0625rem solid #f2f2f2;
      font-size: 15.8px;
      height: 80px;
    }

    .item-title{
      color: #b5b5b5;
      font-weight: bold;
    }

    .item-info {
      padding-top: 0.25rem;

    }

    .profile-image {
      width: 6.25rem;
      height: 6.25rem;
      min-width: 4.375rem;
      border-radius: 70%;
      overflow: hidden;
      border: 0.0625rem solid #f2f2f2;
      margin-left: auto;
      margin-right: auto;
      margin-top: 40px;
    }

.sub-menu-container .sub-menu-list {
    position: relative;
    display: flex;
    align-items: center;
}

ul li {
    list-style: none;
}

.pass-style {
  border: none;
  padding-left: 0px;
}
    input:focus {outline: none;}
  
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
    <form action="#" class="contact-form py-5 px-lg-5" style="max-width: 700px; margin-left: auto; margin-right: auto">
      <h2 class="text-black"><b>계정 설정</b></h2>

      <c:choose>
        <c:when test="${img.length() == 0}">
          <div style="text-align: center;">
          <img alt="profile" src="<%=request.getContextPath()%>/resources/img/joogo.jpg" class="profile-image">
          </div>
        </c:when>
        <c:otherwise>
          <div style="text-align: center;">
          <img alt="profile" src="<%=request.getContextPath()%>/resources/upload/${img}" class="profile-image">
          </div>
        </c:otherwise>
      </c:choose>


      <li class="item-container" style="margin-top:50px;" onclick="location.href='<%=request.getContextPath() %>/mypage/settings/name'">
        <div class="item">
          <div class="item-title">이름</div>
          <div class="item-info">${memberDTO.name}</div>
        </div>
        <div>
          <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
        </div>
      </li>

      <li class="item-container" onclick="location.href='<%=request.getContextPath() %>/mypage/settings/email'">
        <div class="item">
          <div class="item-title">이메일</div>
          <div class="item-info">${memberDTO.email}</div>
        </div>
        <div>
          <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
        </div>
      </li>

      <li class="item-container" onclick="location.href='<%=request.getContextPath() %>/mypage/settings/password'">
        <div class="item">
          <div class="item-title">비밀번호</div>

          <div class="item-info"> <input type="password" value="${memberDTO.password}" class="pass-style" style="cursor: pointer;"></div>
        </div>
        <div>
          <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
        </div>
      </li>
      <li class="item-container" onclick="location.href='<%=request.getContextPath() %>/mypage/settings/profile'" style="height: 60px;">
        <div class="item">
          <div class="item-title">프로필 이미지 변경</div>
        </div>
        <div>
          <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
        </div>
      </li>

      <div class="item-container" style="margin-top:50px; height: 50px;" onclick="location.href='<%=request.getContextPath() %>/mypage/delete'">
        <div class="item">
          <div class="text-black">계정 탈퇴</div>
        </div>
        <div>
          <img alt="arrow" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
        </div>
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