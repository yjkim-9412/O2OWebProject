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

    table {
      border-spacing: 80px;
      border-collapse: separate;
      margin: auto auto;
    }

    table td {
      width: 500px;
      height: 200px;
      /*   padding: 5px -9px; */
      /*   padding-bottom: 299px; */
    }

    .service{
      background-image: url("https://dmmj3ljielax6.cloudfront.net/upload/service/73756793-16d5-4884-977b-0fceb355e571.jpg");
      /*background-image: url(/resources/img/footer1.jpg);*/
      background-size: cover;
      background-position: 50% 50%;
      position: relative;
      height: 17.125rem;
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
    }

    .page-footer .bg-image {
      width: 1250px;
      height: 390px;
    }

    /* 명함 */

    $bg: darken(white, 10%);
    $shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);


    body{
      background-color:$bg;
      display:flex;
      height:100vh;
      width:100vw;
      font-family:'Montserrat';
    }

    .container{
      width:1200px;
      max-width:100%;
      margin:auto;
    }

    h2{
      font-size:1.4em;
    }

    .page-footer {
      width: 100%; bottom:0;
    }

    .chat {
      background-color: #FFCD4A;
      border-color: transparent;
      color: white;
      width: 142px;
      height: 48px;
      padding: 11px 12px;
      margin: 0px 0px 0px 12px;
    }

    .item-title{
      color: #737373;
    }

    .item-info {
      padding-top: 0.25rem;
      margin-bottom: 30px;
      font-weight: bold;

    }

    .item-container {
      width: 100%;
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

<div class="service">
  <div class="service-div" style="text-align: left; color: white">
    <div class="contents section-title" style="color: white; text-align: left; width: 600px;">
      <div class="section-title h1" style="font-weight: 500;">${service_name}</div>
      <div style="color: white; font-weight: 300; margin-bottom: 30px">${date}</div>
      <form class="form-inline" onsubmit="openModal()" id="myForm">
        <button type="submit" class="btn btn-primary btn chat" style="margin-left: 0px; width: 220px;">내 요청서 보기</button>
      </form>
    </div>


  </div>
</div>

<div class="container">


  <%-- 모달--%>
  <div class="modal fade" tabindex="-1" role="dialog" id="myModal">
    <div class="modal-dialog" role="document" style="margin-top: 200px;">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        </div>
        <div class="modal-body">
          <h4 style="margin: 20px 0px 30px 10px; font-weight: bold;">내 요청서</h4>
          <c:forEach var="estimateDTO" items="${getEstimateDTO}">
            <li class="item-container">
              <div class="item">
                <div class="item-title">${estimateDTO.ques_contents }</div>
                <div class="item-info">${estimateDTO.ans_contents}</div>
              </div>
            </li>
          </c:forEach>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->

  <table>
      <tr><td>
        <div class="container" style="width: 1000px;">
          <article style="text-align: center; margin-top: 50px; margin-bottom: 100px;">
            <i><img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4MCIgaGVpZ2h0PSI4MCIgdmlld0JveD0iMCAwIDgwIDgwIj4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0icHJlZml4X19hIiB4MT0iMCUiIHgyPSIxMDAlIiB5MT0iNTAlIiB5Mj0iNTAlIj4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzAwQzdBRSIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiM0Q0M4RTUiLz4KICAgICAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPC9kZWZzPgogICAgPGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8Y2lyY2xlIGN4PSI0MCIgY3k9IjQwIiByPSI0MCIgZmlsbD0idXJsKCNwcmVmaXhfX2EpIiBmaWxsLW9wYWNpdHk9Ii41Ii8+CiAgICAgICAgPHBhdGggZD0iTTE2IDY0TDY0IDY0IDY0IDE2IDE2IDE2eiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0ZGRiIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIzIiBkPSJNNDAgMjJjNC4wOCAwIDcuNDQ2IDMuMDU0IDcuOTM4IDdINTJjMS42NTcgMCAzIDEuMzQzIDMgM3YyM2MwIDEuNjU3LTEuMzQzIDMtMyAzSDI4Yy0xLjY1NyAwLTMtMS4zNDMtMy0zVjMyYzAtMS42NTcgMS4zNDMtMyAzLTNoNC4wNjJjLjQ5Mi0zLjk0NiAzLjg1OC03IDcuOTM4LTd6Ii8+CiAgICAgICAgPGNpcmNsZSBjeD0iMzkuOTUiIGN5PSIyOC43NSIgcj0iMS43NSIgZmlsbD0iI0ZGRiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0ZGRiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2Utd2lkdGg9IjMiIGQ9Ik0zMiAzOEw0OCAzOE0zMiA0NEw0OCA0NE0zMiA1MEw0MSA1MCIvPgogICAgPC9nPgo8L3N2Zz4K"></i>
            <h3 style="margin: 12px 0px 8px; font-size: 18px; font-weight: 700;"> 받은 견적이 없습니다.</h3>
            <p style="margin: 10px; font-size: 14px; color: #b5b5b5">
<%--              요청서를 작성하고<br>--%>
<%--              주고의 견적을 받아보세요.--%>
            </p>
          </article>
        </div>
      </td></tr>
  </table>


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

<script>
  $('#myForm').on('submit', function(e){
    $('#myModal').modal('show');
    e.preventDefault();
  });
</script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIA_zqjFMsJM_sxP9-6Pde5vVCTyJmUHM&callback=initMap"></script>

</body>
</html>



