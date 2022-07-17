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

    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/maicons.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/vendor/animate/animate.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/theme.css">

    <!-- 부트스트랩  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>

/* 마루 사이즈 */
header img {
    width: 150px;
    margin-bottom: 5px;
}


.btn-cancle {
    background-color: white;
    border-color: #F2F2F2;
    color: #FFCD4A;
    width: 142px;
    height: 48px;
    padding: 11px 12px;
    border-radius: 8px;
    box-shadow: none;
}

.btn-update {
    background-color: #FFCD4A;
    border-color: transparent;
    color: white;
    width: 142px;
    height: 48px;
    padding: 11px 12px;
    margin: 0px 0px 0px 12px;
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
}

</style>



</head>
<body>


<!-- Back to top button -->
<div class="back-to-top"></div>

<header>
    <jsp:include page="../../inc/top.jsp"/>
</header>

<div class="page-section" style="padding-top: 0px">
    <div class="container">
        <form action="<%=request.getContextPath() %>/mypage/settings/profile-update" class="contact-form py-5 px-lg-5" style="width: 700px; margin: auto;" enctype="multipart/form-data" method="post">
            <h2 class="text-black"><b>프로필 변경</b></h2>
<%--            <c:choose>--%>
<%--                <c:when test="${img.length() == 0}">--%>
<%--                    <div style="text-align: center;">--%>
<%--                        <img alt="profile" src="<%=request.getContextPath()%>/resources/img/joogo.jpg" class="profile-image">--%>
<%--                    </div>--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                    <div style="text-align: center;">--%>
<%--                        <img alt="profile" src="<%=request.getContextPath()%>/resources/upload/${img}" class="profile-image">--%>
<%--                    </div>--%>
<%--                </c:otherwise>--%>
<%--            </c:choose>--%>
            <div class="input-group">
                <div class="col-md-12"  style="margin-top:50px; margin-bottom:30px; background-color:#F2F2F2; border-radius: 0.5rem; width: 605px; height: 48px; font-size: 14px;">
                    <label class="text-black" for="fname" style="margin-bottom: 0px; padding-top: 12px;"><img alt="icon" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTAgMEwyMCAwIDIwIDIwIDAgMjB6IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzIgLTMwMSkgdHJhbnNsYXRlKDE2IDI4MSkgdHJhbnNsYXRlKDE2IDIwKSIvPgogICAgICAgICAgICAgICAgICAgIDxwYXRoIGZpbGw9IiMzMjMyMzIiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTEwIDJjLTQuNDE2IDAtOCAzLjU4NC04IDhzMy41ODQgOCA4IDggOC0zLjU4NCA4LTgtMy41ODQtOC04LTh6bS44IDEySDkuMlY5LjJoMS42VjE0em0wLTYuNEg5LjJWNmgxLjZ2MS42eiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMyIC0zMDEpIHRyYW5zbGF0ZSgxNiAyODEpIHRyYW5zbGF0ZSgxNiAyMCkiLz4KICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==">
                        주고에게 보여줄 프로필 사진을 선택해주세요</label>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-12" style="width: 100%; padding-bottom: 50px;">
                    <label class="text-black" style="margin-bottom:5px"><b>이름</b></label>
                    <div class="input-group" data-validate="email">
                        <input type="file" class="form-control" name="file" id="validate-email" value="${memberDTO.name}" required style="border-radius: 0.25rem;">
                        <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
                    </div>
                </div>
            </div>
            <div class="button-group" align="right">

                <!-- This is a comment text, these buttons are the default bootstrap buttons with icons in front
                     of them. Grab their code and just edit the text as you wish to. * Follow me twitter.com/Impresiun -->

                <button type="button" class="btn-cancle" onclick = "history.back()"><b>취소</b></button>
                <input type="submit" class="btn-update" value="수정 완료">
                <input type="hidden" name="email" value="${memberDTO.email }">
                <input type="hidden" name="id" value="${sessionScope.id }">

            </div>
        </form>
    </div>

    <div class="container-fluid mt-4">

    </div>
</div>

<!-- 푸터 -->

<footer class="page-footer bg-image" style="background-image: url(<%=request.getContextPath() %>/resources/img/footer1.jpg);">
    <jsp:include page="../../inc/bottom.jsp"/>
</footer>

<script src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/google-maps.js"></script>

<script src="<%=request.getContextPath() %>/resources/vendor/wow/wow.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/theme.js"></script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIA_zqjFMsJM_sxP9-6Pde5vVCTyJmUHM&callback=initMap"></script>



</body>
</html>