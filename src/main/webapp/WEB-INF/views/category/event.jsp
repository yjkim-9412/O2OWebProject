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

        /* 세부 카테고리 */
        /* FontAwesome for working BootSnippet :> */

        @import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
        #team {
            /*     background: #eee !important; */
        }

        section .section-title {
            text-align: center;
            color: #007b5e;
            margin-bottom: 50px;
            text-transform: uppercase;
        }

        #team .card {
            border: none;
        }

        .frontside {
            position: relative;
            -webkit-transform: rotateY(0deg);
            -ms-transform: rotateY(0deg);
            z-index: 2;
            margin-bottom: 30px;
        }

        .frontside {
            -webkit-backface-visibility: hidden;
            -moz-backface-visibility: hidden;
            -ms-backface-visibility: hidden;
            backface-visibility: hidden;
            -webkit-transition: 1s;
            -webkit-transform-style: preserve-3d;
            -moz-transition: 1s;
            -moz-transform-style: preserve-3d;
            -o-transition: 1s;
            -o-transform-style: preserve-3d;
            -ms-transition: 1s;
            -ms-transform-style: preserve-3d;
            transition: 1s;
            transform-style: preserve-3d;
        }

        /* 아이콘 카테고리 section */
        #row1{
            background-color: rgb(250, 250, 252);
            border-radius: 1em;
        }

        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: 0.25rem;

        }

        .card-body {
            flex: 1 1 auto;
            min-height: 0.0625rem;
            padding: 0px 0px;
            width: 90%;
            border-radius: 0.25rem;
        }

        .service{
            background-image: url("https://dmmj3ljielax6.cloudfront.net/upload/requestForm/2e7ae59f-2550-426a-8a00-09ccf55efda6.png");
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

        .card-title {
            font-size: 16px;
            margin: 16px;
            text-align: center;
        }

        .card-img {
            background-size: cover;
            background-position: 50% 50%;
            height: 9.375rem;
        }

        ul li {
            list-style: none;
            padding-bottom: 10px;
        }

        li a {
            text-decoration: none;
        }

        .frontside {
            font-weight: 700;
        }

        .cmenu {
            text-decoration: none;
            color: #898798;

        }

        .cmenu:hover {
            text-decoration: none;
            color: #898798;
        }

    </style>



</head>
<body>


<!-- Back to top button -->
<div class="back-to-top"></div>

<header>
    <jsp:include page="../inc/top.jsp"/>
</header>
  
<div class="service">
	<div class="contents section-title h1" style="color: white; font-weight: bold;">이벤트</div>
</div>
  
  
<div class="page-section" style="padding-top: 0; padding-bottom: 50px;">
	<div class="container">
		<!-- 아이콘 카테고리 -->
<section >
        <div class="container" >
          <div class="row" id="row1">
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer; background-color: rgb(250, 250, 252)" onclick="location.href='<%=request.getContextPath() %>/category/lesson';">
                        <div class="card-body">
                            <img src="<%=request.getContextPath() %>/resources/img/icon/lesson.png" style="width: 50px; height: 50px;">                            
                            <h2 class="card-title" style="font-size:20px;">레슨</h2>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer; background-color: rgb(250, 250, 252)" onclick="location.href='<%=request.getContextPath() %>/category/health';">
                        <div class="card-body">
                            <img src="<%=request.getContextPath() %>/resources/img/icon/health.png" style="width: 50px; height: 50px;">                            
                            <h2 class="card-title" style="font-size:20px;">건강</h2>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer; background-color: rgb(250, 250, 252)" onclick="location.href='<%=request.getContextPath() %>/category/event';">
                        <div class="card-body">
                            <img src="<%=request.getContextPath() %>/resources/img/icon/event.png" style="width: 50px; height: 50px;">
                            <h2 class="card-title" style="font-size:20px;">이벤트</h2>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer; background-color: rgb(250, 250, 252)" onclick="location.href='<%=request.getContextPath() %>/category/cleaning';">
                        <div class="card-body">
                            <img src="<%=request.getContextPath() %>/resources/img/icon/cleaning.png" style="width: 50px; height: 50px;">
                            <h2 class="card-title" style="font-size:20px;">청소</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- 아이콘 카테고리 끝-->		
	</div>
</div>
 
<h2 style="text-align: center; font-weight: bold;  margin: 50px;">인기 서비스</h2>
<!-- 세부 서비스 -->
<section id="team" class="pb-5">
    <div class="container" >
        <div class="row">
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath() %>/category/sec_category?services_id1=45'">
                                <div class="card-body" style="box-shadow: 1px 1px 2px gray;">
                                	<div class="card-img" style="background-image: url('https://dmmj3ljielax6.cloudfront.net/upload/service/f173d21e-0f55-466f-93a7-e0f0c7fdf3b4.jpg');">
                                	</div>
                                    <div class="card-title">기업 행사</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath() %>/category/sec_category?services_id1=40'">
                                <div class="card-body" style="box-shadow: 1px 1px 2px gray;">
                                    <div class="card-img" style="background-image: url('https://dmmj3ljielax6.cloudfront.net/upload/service/f40e6be6-9e8a-4212-8aee-0a1924003873.jpg');">
                                	</div>
                                    <div class="card-title">환갑/칠순잔치</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath() %>/category/sec_category?services_id1=39'">
                                <div class="card-body" style="box-shadow: 1px 1px 2px gray;">
                                    <div class="card-img" style="background-image: url('https://dmmj3ljielax6.cloudfront.net/upload/service/f986ec71-c39c-4c4b-96a6-5db5d96ed6b4.png');">
                                	</div>
                                    <div class="card-title">돌잔치</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath() %>/category/sec_category?services_id1=42'">
                                <div class="card-body" style="box-shadow: 1px 1px 2px gray;">
                                    <div class="card-img" style="background-image: url('https://dmmj3ljielax6.cloudfront.net/upload/service/e7c1f58f-53fe-48f8-8457-540ec16eb4fc.png');">
                                	</div>
                                    <div class="card-title">야유회/워크샵</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath() %>/category/sec_category?services_id1=49'">
                                <div class="card-body" style="box-shadow: 1px 1px 2px gray;">
                                    <div class="card-img" style="background-image: url('https://dmmj3ljielax6.cloudfront.net/upload/service/3a0a78bd-d0d4-4186-9010-2ec6e8115cdf.jpg');">
                                	</div>
                                    <div class="card-title">강연/간담회</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath() %>/category/sec_category?services_id1=41'">
                                <div class="card-body" style="box-shadow: 1px 1px 2px gray;">
                                    <div class="card-img" style="background-image: url('https://dmmj3ljielax6.cloudfront.net/upload/service/06ee7cd0-ffc2-49fd-89d0-43f98e99be9d.png');">
                                	</div>
                                    <div class="card-title">동창회</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            
        </div>
    </div>
</section>
<!-- Team -->
  
<section>
<h2 style="text-align: center; margin: 50px; font-weight: bold;">모든 서비스</h2>
    <div class="container" >
      <div class="row mb-5">
        <div class="col-lg-3 py-3" style="width: 450px;">
          <ul id="categories">
            <li><h4><b>파티, 행사계획</b></h4></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category?services_id1=45" class="cmenu">개인 행사</a></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category?services_id1=46" class="cmenu">기업 행사</a></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category?services_id1=47" class="cmenu">지역 행사</a></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category?services_id1=48" class="cmenu">홍보 행사</a></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category?services_id1=49" class="cmenu">강연/간담회</a></li>
          </ul>
          
         
        </div>
        <div class="col-lg-3 py-3" style="width: 470px;">
          <ul id="categories">
          	 <li><h4><b>행사MC</b></h4></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category?services_id1=39" class="cmenu">돌잔치</a></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category?services_id1=40" class="cmenu">환갑/칠순잔치</a></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category?services_id1=41" class="cmenu">동창회</a></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category?services_id1=42" class="cmenu">야유회/워크샵</a></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category?services_id1=43" class="cmenu">송년회/신년</a></li>
   		</ul>
        </div>
        <div class="col-lg-3 py-3" style="width: 400px;">
           <ul id="categories">
          	 <li><h4><b>영상편집</b></h4></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category/video?services_id1=53" class="cmenu">개인 영상</a></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category/video?services_id1=54" class="cmenu">상업 영상</a></li>
            <li><a href="<%=request.getContextPath() %>/category/sec_category/video?services_id1=55" class="cmenu">기업 영상</a></li>
            </ul>
        </div>
      </div>
    </div>
</section>
  
  
  
  















  <!-- 푸터 -->

  <footer class="page-footer bg-image" style="background-image: url(<%=request.getContextPath() %>/resources/img/footer1.jpg);">
      <jsp:include page="../inc/bottom.jsp"/>
  </footer>
 
<script src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/google-maps.js"></script>

<script src="<%=request.getContextPath() %>/resources/vendor/wow/wow.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/theme.js"></script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIA_zqjFMsJM_sxP9-6Pde5vVCTyJmUHM&callback=initMap"></script>



</body>
</html>