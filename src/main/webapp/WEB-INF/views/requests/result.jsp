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

    <style type="text/css">

        li {
            list-style: none;
        }



        /* nav */
        .search {
            position: relative;
            width: 300px;
            left: 5px;

        }

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

        #img1 {
            position : absolute;
            width: 17px;
            top: 10px;
            right: 7px;
            margin: 0;

        }

        /* 마루 사이즈 */
        header img {
            width: 150px;
            margin-bottom: 5px;
        }

        /* 버튼 */

        .button-55 {
            align-self: center;
            background-color: #fff;
            background-image: none;
            background-position: 0 90%;
            background-repeat: repeat no-repeat;
            background-size: 4px 3px;
            border-radius: 15px 225px 255px 15px 15px 255px 225px 15px;
            border-style: solid;
            border-width: 2px;
            box-shadow: rgba(0, 0, 0, .2) 15px 28px 25px -18px;
            box-sizing: border-box;
            color: #FFCD4A;
            cursor: pointer;
            display: inline-block;
            font-family: Neucha, sans-serif;
            font-size: 1rem;
            line-height: 23px;
            outline: none;
            padding: .75rem;
            text-decoration: none;
            transition: all 235ms ease-in-out;
            border-bottom-left-radius: 15px 255px;
            border-bottom-right-radius: 225px 15px;
            border-top-left-radius: 255px 15px;
            border-top-right-radius: 15px 225px;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;

        }

        .button-55:hover {
            box-shadow: rgba(0, 0, 0, .3) 2px 8px 8px -5px;
            transform: translate3d(0, 2px, 0);

        }

        }
        .button-55:focus {
            box-shadow: rgba(0, 0, 0, .3) 2px 8px 4px -6px;

        }


        table {
            border-spacing: 80px;
            border-collapse: separate;
        }

        table td {
            width: 500px;
            height: 200px;
            padding: 5px -9px;
            padding-bottom: 299px;
        }


        .cell_padding {
            padding : 3em 1em;
        }

        .service{
            background-image: url("https://dmmj3ljielax6.cloudfront.net/upload/service/73756793-16d5-4884-977b-0fceb355e571.jpg");
            background-size: cover;
            background-position: 50% 50%;
            position: relative;
            height: 20rem;
            z-index: 1;
        }

        .contents {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 100%;
            max-width: 43.75rem;
            text-align: center;
            padding: 0 1rem;
        }

        .page-footer .bg-image {
            width: 1250px;
            height: 390px;
        }

        /* 카드*/

        .request-card {
            padding: 1rem;
            border: 0.0625rem solid #e1e1e1;
            border-radius: 4px;
            height: 15.5rem;
            display: flex;
            flex-direction: column;
            width: 350px;
        }

        .request-card-header {
            color: #323232;
            margin-bottom: 0;
            font-size: 1rem;
            font-weight: 700;
        }

        .request-card-body {
            margin-top: 1rem;
        }

        .btn-update{
            font-weight: 500;
            text-align: center;
            vertical-align: middle;
            font-size: 1rem;
            line-height: 1.5;
            border: 0.0625rem solid transparent;
            border-radius: 0.25rem;
            display: block;
            width: 215px;
            height: 50px;
            background-color: #FFCD4A;
            color: white;
            margin: 10px auto;
        }

        /*  푸터  */
        .callnumber{
            padding-bottom: 0.1875rem;
            font-size: 1.25rem;
            font-weight: 500;
            font-stretch: normal;
            color: #FFCD4A;
        }
        .callnumberdown{
            margin: 0;
            font-size: .875rem;
            line-height: normal;
            letter-spacing: normal;
            color: #737373;
        }
        #footermenu1{
            margin: 0;
            font-size: .875rem;
            line-height: normal;
            letter-spacing: normal;
            color: #737373;
            position: absolute;
            bottom:49px;
        }
        #footermenu2{
            margin: 0;
            font-size: .875rem;
            line-height: normal;
            letter-spacing: normal;
            color: #737373;

        }
        #footermenu3{
            margin: 0;
            font-size: .875rem;
            line-height: normal;
            letter-spacing: normal;
            color: #737373;

        }

        .page-footer {
            width: 100%; bottom:0;
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


<div class="container" style="width: 1000px;">
    <article style="text-align: center; margin:150px auto; height: 300px;">
        <i><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4MCIgaGVpZ2h0PSI4MCIgdmlld0JveD0iMCAwIDgwIDgwIj4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0icHJlZml4X19hIiB4MT0iMCUiIHgyPSIxMDAlIiB5MT0iNTAlIiB5Mj0iNTAlIj4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzAwQzdBRSIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiM0Q0M4RTUiLz4KICAgICAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPC9kZWZzPgogICAgPGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8Y2lyY2xlIGN4PSI0MCIgY3k9IjQwIiByPSI0MCIgZmlsbD0idXJsKCNwcmVmaXhfX2EpIiBmaWxsLW9wYWNpdHk9Ii41Ii8+CiAgICAgICAgPHBhdGggZD0iTTE2IDY0TDY0IDY0IDY0IDE2IDE2IDE2eiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0ZGRiIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIzIiBkPSJNNDAgMjJjNC4wOCAwIDcuNDQ2IDMuMDU0IDcuOTM4IDdINTJjMS42NTcgMCAzIDEuMzQzIDMgM3YyM2MwIDEuNjU3LTEuMzQzIDMtMyAzSDI4Yy0xLjY1NyAwLTMtMS4zNDMtMy0zVjMyYzAtMS42NTcgMS4zNDMtMyAzLTNoNC4wNjJjLjQ5Mi0zLjk0NiAzLjg1OC03IDcuOTM4LTd6Ii8+CiAgICAgICAgPGNpcmNsZSBjeD0iMzkuOTUiIGN5PSIyOC43NSIgcj0iMS43NSIgZmlsbD0iI0ZGRiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0ZGRiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2Utd2lkdGg9IjMiIGQ9Ik0zMiAzOEw0OCAzOE0zMiA0NEw0OCA0NE0zMiA1MEw0MSA1MCIvPgogICAgPC9nPgo8L3N2Zz4K"></i>
        <h3 style="margin: 12px 0px 8px; font-size: 18px; font-weight: 700;">요청이 완료되었습니다.</h3>
        <p style="margin: 10px; font-size: 14px; color: #b5b5b5">
            요청내역은 마이페이지에서 확인가능합니다.<br>
        </p>
        <button type="button" class="btn-update" onclick="location.href='<%=request.getContextPath() %>/';">홈으로 가기</button>
    </article>
</div>


<!--   푸터 -->

<footer class="page-footer bg-image" style="background-image: url(<%=request.getContextPath() %>/resources/img/footer1.jpg);" >
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



