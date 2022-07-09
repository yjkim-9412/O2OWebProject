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

<!-- 파비콘 변경 -->
<link rel="shortcut icon" href="resources/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
  
<!--   구글폰트(버튼) -->

  <title>MaRoo</title>

  <link rel="stylesheet" href="resources/css/maicons.css">

  <link rel="stylesheet" href="resources/css/bootstrap.css">

  <link rel="stylesheet" href="resources/vendor/animate/animate.css">

  <link rel="stylesheet" href="resources/css/theme.css">
 
 
<!-- 부트스트랩  -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style type="text/css">
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
/* 이미지 슬라이드 */
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
  @import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);


ul{
	margin: 0; padding: 0;
}
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    border: 0px solid silver;
  }

  img {
    width: 70px;
    
  }

  body {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 1rem;
    line-height: 1.1rem;
    color: #222;
    letter-spacing: 0.1px;
    cursor: url(), auto;
  }


  .solid {
    font-size: 3rem;
    line-height: 1rem;
    color: #8BEC3B;
  }

  .orange {
    color: #F58220;
    font-size: 2.4rem;
    font-weight: bold;
  }


  /* mobile start */


  

  header img {
    width: 140px;
    margin-bottom: 5px;
  }

  header nav {
    display: none;
  }

  header section {
    display: none;
  }


main{
	position: relative;
	bottom: 0px;
	
}


  main ul,
  main ol,
  main li {
    list-style: none;
    
  }

  main a {
    text-decoration: none;
  }

  main img {
    vertical-align: top;
    border: none;
     
  }

  .slide {
    position: relative;
    overflow: hidden;
    border-radius: 1em;
  }

  .panel {
    width: 400%;

  }

  .panel:after {
    content: "";
    display: block;
    clear: both;
  }

  .panel>li {
    width: 25%;
    height: 350px;
    float: left;
    background-repeat: no-repeat;
    background-size: 100% 100%;
    position: relative;
    text-align: center;
  }

  .panel>li>:nth-child(1) {
    padding: 70px;
    position: absolute;
    top: 18%;
    line-height: 3rem;
    color: white;
    font-size: 2.2rem;
    font-weight: lighter;
  }

  .panel>li>:nth-child(2) {
    display: none;
  }

  .panel>li>:nth-child(3) {
    display: none;
  }


  .panel img {
    width: 50px;
    margin: 0 5px;
    border-radius:1em;
  }


  .panel>li:nth-of-type(1) {
    border-radius:1em; 
    background-image: url("resources/img/banner1.jpg");
    background-position: center center;
    background-size: contain;
  }

  .panel>li:nth-of-type(2) {
    background-image: url("resources/img/banner22.jpg");
    background-size: cover;
    background-position: center center;
    border-radius:1em;
  }

  .panel>li:nth-of-type(3) {
    background-image: url("resources/img/banner33.jpg");
    background-size: cover;
    background-position: center center;
    border-radius: 1em;
  }

  .panel>li>:nth-child(1) img {
    width: 50px;
    margin: 0 5px;
    border-radius: 1em;
  }

  .dot:after {
    content: "";
    display: block;
    clear: both;
  }

  .dot {
    position: absolute;
    left: 50%;
    bottom: 5%;
    transform: translateX(-50%);
  }

  .dot>li {
    float: left;
    width: 15px;
    height: 15px;
    border-radius: 50%;
    background-color: rgba(255, 255, 255, 0.6);
    margin-left: 5px;
    margin-right: 5px;
    text-indent: -9999px;
    cursor: pointer;
  }

  .dot>li.on {
    background-color: white;
    width: 40px;
    height: 15px;
    border-radius: 10px;
    transition: .5s;
  }

  .prev {
    position: absolute;
    font-size: 2.5rem;
    font-weight: bold;
    color: white;
    top: 50%;
    transform: translateY(-50%);
    left: 2%;
    cursor: pointer;
  }

  .next {
    position: absolute;
    font-size: 2.5rem;
    font-weight: bold;
    color: white;
    top: 50%;
    transform: translateY(-50%);
    right: 2%;
    cursor: pointer;
  }

  
  /* laptop start */
@media screen and (min-width: 1366px) {

main{
	position: relative;
	bottom: 0px;
}
	.slide {
	  border-radius: 1em;
	}
	
    header section {
      padding: 1.2rem 0;
    }

    header img {
      width: 150px;
    }

    .panel>li {
      height: 450px;
      border-radius: 1em;
    }

    .panel>li>:nth-child(1) {
      padding: 0;
      width: 750px;
      position: absolute;
      top: 25%;
      left: 10%;
      line-height: 3.5rem;
      font-size: 3.2rem;
      font-weight: lighter;
      text-align: left;
      border-radius: 1em;
    }

    .panel>li>:nth-child(2) {
      display: block;
      position: absolute;
      top: 47%;
      left: 10%;
      line-height: 3rem;
      color: white;
      border-radius: 1em;
    }

    .panel>li>:nth-child(3) {
      display: block;
      position: absolute;
      top: 61%;
      left: 10%;
      border-radius: 1em;
    }

    .orange {
      font-size: 3.5rem;
    }

    .prev,
    .next {
      font-size: 2.5rem;
    }

/* 배너 */
.img-banner-1{
	width:1238px; height: 160px;
	position: relative;
	left: 30px;
	
}

/* 인기 서비스 */
.img-thumbnail{
	border:0px;
	border-radius:20px;
	width: 500px;
	height: 200px;
	
}


/* 회원가입 버튼 */

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
  font-weight:bold;
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
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

/* 마루 200% 활욜하는 법 h2 */
.title-section1{
	font-size: 2.5rem;
    line-height: 2.5rem;
    margin-bottom: 1rem;
    color:#292B2F;
    font-family: 'Nanum Gothic', sans-serif;
    font-weight: bold;

}
/* h5 폰트 컬러 수정 */
.post-title{
	font-family: 'Nanum Gothic', sans-serif;
	color:#292B2F;
	font-weight: bold;
}

/* 아이콘 카테고리 section */
#row1{
	background-color: rgb(250, 250, 252);
	border-radius: 1em;
}
.card-body{
	background-color: rgb(250, 250, 252);
}
.card{
	background-color: rgb(250, 250, 252);
}
.icontext{
	color: black;
	font-weight: bold;
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

/* 리뷰 */
.intro-reviews {
    margin-top: 2rem;
    padding: 4rem 0;
    padding: 3rem 0;
    background-color:#FEEBB6;
   
}
.page-container--large {
	
    width: 1248px;
    margin: 0 auto;
}

.intro-reviews__title {
    font-size: 1.5rem;
    line-height: 2rem;
    font-size: 1.25rem;
    line-height: 1.75rem;
    font-weight: 700;
    word-break: keep-all;
    color: #484848;
    text-align: center;
}

.intro-reviews__text {
    font-size: 1rem;
    line-height: 1.5rem;
    margin-top: 0.5rem;
    margin-bottom: 3rem;
    text-align: center;
}

.row--inset {

	display:flex;
	flex-wrap: nowrap;
	 margin-left: 0.5rem;
    margin-right: 0.5rem;
}
.row {
	
    -ms-flex-wrap: wrap;
/*     align-items: flex-start; */
    justify-content: flex-start;
}
.box12{
	float:left;
	display: flex;
}
.classes-sub-box {
    position: relative;
    margin-left: 0.5rem !important;
    margin-right: 0.5rem !important;
    margin-top: 0 !important;
    margin-bottom: 1rem !important;
    padding: 2rem 1.5rem;
    -webkit-box-shadow: 0 0 20px -1px rgb(0 0 0 / 25%);
    box-shadow: 0 0 20px -1px rgb(0 0 0 / 25%);
    border: 1px solid rgba(0,0,0,0.09);
    background: #fff;
    border-radius: 1rem;
    color: #484848;
}
.col-100 desktop-33{
	float:left;
}
.classes-sub-box--wide {
	
	width: 33.333333333333336%;
    min-height: 240px;
   
}

.classes-sub-box__content {
    font-size: 1rem;
    line-height: 1.5rem;
    word-break: initial;
}


.classes-sub-box__content-footer {
    position: absolute;
    bottom: 1.5rem;
    right: 1.5rem;
    font-size: 0.875rem;
    line-height: 1.25rem;
    margin-top: 2rem;
    font-weight: 600;
    text-align: right;
}
/* 리뷰별점 */
.mb-2 {
    margin-bottom: 0.5rem !important;    
}
.rating-stars{
	display: inline-block;
    vertical-align: middle;
    line-height: 1;
}
.rating-star--selected .feather, .rating-star--hover .feather {
    fill: #ff2d55;
}
.rating-star .feather {
    stroke: transparent;
    fill: #ccc;
}
.feather--sm {
    width: 14px !important;
    height: 14px !important;
}


</style> 
 
 
 
 
 
 
 
</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>

<header>
<c:catch>
<c:choose>
<c:when test="${ empty sessionScope.id }">

<nav class="navbar navbar-expand-lg navbar-light bg-white sticky" data-offset="500">
      <div class="container">
        <a href="<%=request.getContextPath() %>" class="navbar-brand"><img id="logo1" src="<%=request.getContextPath() %>/resources/img/logo1.jpg" ></a>

        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarContent">
           
           <!--search바  -->
           <div class="search">
              <input type="text" placeholder="어떤 서비스가 필요하세요?">
              <img id="img1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
            </div>
            
          <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
              <a class="nav-link" href="about.html">고수찾기</a>
            </li>  
            <li class="nav-item active">
              <a class="nav-link" href="<%=request.getContextPath() %>/member/login">로그인</a>
            </li>
            <li class="nav-item">
              <button class="button-55" role="button" onclick="location.href='<%=request.getContextPath() %>/member/insert'">회원가입</button>
            </li>
          </ul>
        </div>

      </div>
    </nav>
</c:when>
<c:otherwise>
    	<nav class="navbar navbar-expand-lg navbar-light bg-white sticky" data-offset="500">
        <div class="container">
          <a href="<%=request.getContextPath() %>" class="navbar-brand"><img id="logo1" src="<%=request.getContextPath() %>/resources/img/logo1.jpg" ></a>

          <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="navbar-collapse collapse" id="navbarContent">
             
             <!--search바  -->
             <div class="search">
                <input type="text" placeholder="어떤 서비스가 필요하세요?">
                <img id="img1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
              </div>
              
            <ul class="navbar-nav ml-auto">
              
              <li class="nav-item">
                <a class="nav-link" href="about.html">고수찾기</a>
              </li>  
              <li class="nav-item active">
                <a class="nav-link" href="<%=request.getContextPath() %>/mypage/info">마이페이지</a>
              </li>
              <li class="nav-item">
                <button class="button-55" role="button" onclick="location.href='<%=request.getContextPath() %>/member/logout'">로그아웃</button>
              </li>
            </ul>
          </div>

        </div>
      </nav>
</c:otherwise>
</c:choose>
</c:catch>
    

<!-- 이미지슬라이드 -->
<!--  <div class="page-section"> -->
    <div class="container">
 <main>
    <div class="slide">
      <ul class="panel">
        <li>
			<!-- css이미지삽입 -->
        </li>
        <li>
            <!-- css이미지삽입 -->
        </li>
        <li>
          <!-- css이미지삽입 -->
        </li>
      </ul>
      <ul class="dot">
        <li class="on"></li>
        <li></li>
        <li></li>
      </ul>
      <div class="prev">〈</div>
      <div class="next">〉</div>
    </div>
  </main>
     </div> <!-- .container -->
<!--   </div> .page-section -->
  </header>





  <div class="page-section">
  
    <div class="container">
      <div class="row">
		
<!-- 아이콘 카테고리 -->
	
<section >
        <div class="container" >
        <h5 class="icontext">다양한 서비스를 찾아보세요!</h5>
            <div class="row" id="row1">
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer;" onclick="location.href='#';">
                        <div class="card-body">
                            <img src="resources/img/icon/lesson.png">                            
                            <h2 class="card-title display-1" style="font-size:2.5vmin;">레슨</h2>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer;" onclick="location.href='#';">
                        <div class="card-body">
                            <img src="resources/img/icon/health.png">                            
                            <h2 class="card-title display-1" style="font-size:2.5vmin;">건강</h2>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer;" onclick="location.href='#';">
                        <div class="card-body">
                            <img src="resources/img/icon/event.png">
                            <h2 class="card-title display-1" style="font-size:2.5vmin;">이벤트</h2>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer;" onclick="location.href='#';">
                        <div class="card-body">
                            <img src="resources/img/icon/cleaning.png">
                            <h2 class="card-title display-1" style="font-size:2.5vmin;">청소</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- 아이콘 카테고리 끝-->		

		
      </div>
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  

<!-- 인기 서비스 -->
<div class="container">
    <h4 class="text-left"><b>인기 서비스</b></h4>
    <div class="row">
	    <div class="col-sm-4">
	        <div class="item"><a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/service1.png" class="img-thumbnail"><figcaption>서비스1</figcaption></figure></a></div>
		    
	    </div>
	    <div class="col-sm-4">
		    <div class="item"><a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/service2.png" class="img-thumbnail"><figcaption>서비스2</figcaption></figure></a></div>
	    </div>
	    <div class="col-sm-4">
		    <div class="item"><a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/service3.png" class="img-thumbnail"><figcaption>서비스3</figcaption></figure></a></div>
	    </div>
    </div>
</div>
<!-- 인기 서비스 끝 --> 

<!-- 인기 숨은고수 -->
<br><br><br><br>
 <div class="container">
      <h4 class="text-left"><b>인기 주고</b></h4>	
  <div class="row">
    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
      <div class="our-team">
        <div class="picture">
          <img class="img-fluid" src="https://picsum.photos/130/130?image=1027" onclick="location.href='pro/info'">
        </div>
        <div class="team-content">
          <h3 class="name">Michele Miller</h3>
          <h4 class="title">레슨/보컬</h4>
        </div>
      </div>
    </div>
    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
      <div class="our-team">
        <div class="picture">
          <img class="img-fluid" src="https://picsum.photos/130/130?image=839">
        </div>
        <div class="team-content">
          <h3 class="name">Patricia Knott</h3>
          <h4 class="title">청소/이사</h4>
        </div>
      </div>
    </div>
    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
      <div class="our-team">
        <div class="picture">
          <img class="img-fluid" src="https://picsum.photos/130/130?image=856">
        </div>
        <div class="team-content">
          <h3 class="name">Justin Ramos</h3>
          <h4 class="title">건강/헬스</h4>
        </div>
      </div>
    </div>
    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
      <div class="our-team">
        <div class="picture">
          <img class="img-fluid" src="https://picsum.photos/130/130?image=836">
        </div>
        <div class="team-content">
          <h3 class="name">Mary Huntley</h3>
          <h4 class="title">차량/수리</h4>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- 인기 숨은고수 끝 -->

  

      

  <!-- 리뷰 -->
   <div class="intro-reviews">
  <div class="page-container page-container--large">
    <div class="intro-reviews__title">
      참여자들의 솔직한 후기를 들어보세요
    </div>

    <div class="intro-reviews__text">
      <div class="rating-stars"><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--lg"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span></div> 4.88점 총 3527개의 후기가 있어요!
    </div>

    <div class="row no-gap row--inset">
        
          <div class="classes-sub-box classes-sub-box--wide">
            <div class="classes-sub-box__content">
              <div class="mb-2">
                <div class="rating-stars"><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span></div>
              </div>

              <span class="text-strong">이렇게까지 도움 될지 몰랐어요.</span> 눈으로 보고 귀로 들으니까 더 와닿아요. 요점으로 짚어주듯이 써주시니까 이해도가 높아요. 많이 배워가고 <span class="text-strong">감 잡는 데 큰 도움이 돼요!</span>
            </div>

            <div class="classes-sub-box__content-footer">
              대학생 재연님
            </div>
          </div>
        
        
          <div class="classes-sub-box classes-sub-box--wide">
            <div class="classes-sub-box__content">
              <div class="mb-2">
                <div class="rating-stars"><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span></div>
              </div>

              인터넷에서 찾던 정보와는 다르게 너무 <span class="text-strong">와닿는 지식</span>을 얻게 되었습니다. <span class="text-strong">현직자의 시점에서 필요한 점과 진솔한 부분</span>을 알게 되어 너무나 유익한 시간이었습니다.
            </div>

            <div class="classes-sub-box__content-footer">
              취업준비생 수민님
            </div>
          </div>
        
        
          <div class="classes-sub-box classes-sub-box--wide">
            <div class="classes-sub-box__content">
              <div class="mb-2">
                <div class="rating-stars"><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span><span class="rating-star rating-star--selected"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star feather--sm"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
</span></div>
              </div>

              면접에서 계속 탈락해서 그 이유와 원인에 대해서 몰라 매우 답답하였는데 <span class="text-strong">정확하고 체계적인 피드백을 통해 문제점을 알게 되어서 매우 좋았습니다.</span> 다시 해보면 붙을 수 있을 것 같다는 자신감도 생겼습니다. 감사합니다!
            </div>

            <div class="classes-sub-box__content-footer">
              중고신입 지명님
            </div>
          </div>
          </div>
        </div>
    </div>

  <!-- Blog -->
  <div class="page-section">
    <div class="container">
      <div class="text-center wow">
        <h2 class="title-section1">마루를 200% 활용하는 법</h2>
        <div class="subhead">마루까지 내 능력으로 만드는 콘텐츠</div>
        <div class="divider mx-auto"></div>
      </div>

      <div class="row mt-5">
        <div class="col-lg-4 py-3 wow">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <img src="resources/img/200-4.jpg" >
              </div>
            </div>
            <div class="body">
              <h5 class="post-title">마루 전문가 가이드</h5>
              <div class="post-date">주고 인증부터 정산까지 마루 주고 등록의 모든 것</div>
            </div>
          </div>
        </div>
        
        <div class="col-lg-4 py-3 wow">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <img src="resources/img/200-5.jpg" >
              </div>
            </div>
            <div class="body">
              <h5 class="post-title">마켓? 엔터프라이즈?</h5>
              <div class="post-date">내 프로젝트에 더 맞는 서비스를 쉽게 고르는 방법</div>
            </div>
          </div>
        </div>

        <div class="col-lg-4 py-3 wow">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <img src="resources/img/200-6.jpg" >
              </div>
            </div>
            <div class="body">
              <h5 class="post-title">6월 신규 주고 소개</h5>
              <div class="post-date">카테고리 매니저가 추천하는 라이징 전문가</div>
            </div>
          </div>
        </div>
   
	<!-- 배너 -->
  <div class="banner-1">
  <p><img src="resources/img/banner-1.jpg" class="img-banner-1"></p>
  </div>
       
      </div>
    </div>
  </div>
<!-- 푸터 -->

  <footer class="page-footer bg-image" style="background-image: url(resources/img/footer1.jpg);">
    <div class="container">
      <div class="row mb-5">
        <div class="col-lg-3 py-3">
          
          <div class="callnumber">1600-8282</div>
			<p class="callnumberdown">평일 10:00 ~ 18:00 (점심시간 13:00 ~ 14:00 제외)</p>
          <div class="social-media-button">
            <a href="#"><span class="mai-logo-facebook-f"></span></a>
            <a href="#"><span class="mai-logo-twitter"></span></a>
            <a href="#"><span class="mai-logo-google-plus-g"></span></a>
            <a href="#"><span class="mai-logo-instagram"></span></a>
            <a href="#"><span class="mai-logo-youtube"></span></a>
          </div>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Company</h5>
          <ul class="footer-menu" id="footermenu1">
            <li><b>마루소개</b></li>
            <li>마루메인</li>
            <li>Prime</li>
            <li>엔터프라이즈</li>
            <li>프리랜서 클럽</li>
          </ul>
          
         
        </div>
        <div class="col-lg-3 py-3">
          <ul class="footer-menu" id="footermenu2">
          	<li><b>고객안내</b></li>
            <li>이용안내</li>
            <li>안전정책</li>
            <li>예상금액</li>
            <li>고수찾기</li>
            <li>마루보증</li>
          </ul>
        </div>
        <div class="col-lg-3 py-3">
           <ul class="footer-menu" id="footermenu3">
          	<li><b>주고안내</b></li>
            <li>이용안내</li>
            <li>주고가이드</li>
            <li>주고가입</li>
            <li>주고센터</li>
            </ul>
        </div>
      </div>

      <p class="text-center" id="copyright">(주)마루ㅣ부산시 동천로 109 삼한골든게이트 7층ㅣ대표: 1조ㅣ개인정보관리책임자: 1조ㅣ사업자등록번호:678-12-78901</p>
    </div>
  </footer>

<script src="resources/js/jquery-3.5.1.min.js"></script>

<script src="resources/js/bootstrap.bundle.min.js"></script>

<script src="resources/js/google-maps.js"></script>

<script src="resources/vendor/wow/wow.min.js"></script>

<script src="resources/js/theme.js"></script>

<!-- 이미지 슬라이드 -->
<script type="text/javascript">
$( document ).ready( function() {
	  var navOffset = $( 'header' ).offset();
	  $( window ).scroll( function() {
	    if ( $( document ).scrollTop() > navOffset.top ) {
	      $( 'header' ).addClass( 'active' );
	    }
	    else {
	      $( 'header' ).removeClass( 'active' );
	    }
	  });
	});




	function openNav() {
	  document.getElementById("open").style.display = "none";
	  document.getElementById("sub").style.width = "100%";
	}

	function closeNav() {
	  document.getElementById("sub").style.width = "0%";
	  document.getElementById("open").style.display = "block";
	}




	$(document).ready(function() {
	  slide();
	});


	// 슬라이드 
	function slide() {
	  var wid = 0;
	  var now_num = 0;
	  var slide_length = 0;
	  var auto = null;
	  var $dotli = $('.dot>li');
	  var $panel = $('.panel');
	  var $panelLi = $panel.children('li');

	  // 변수 초기화
	  function init() {
	    wid = $('.slide').width();
	    now_num = $('.dot>li.on').index();
	    slide_length = $dotli.length;
	  }

	  // 이벤트 묶음
	  function slideEvent() {

	    // 슬라이드 하단 dot버튼 클릭했을때
	    $dotli.click(function() {
	      now_num = $(this).index();
	      slideMove();
	    });

	    // 이후 버튼 클릭했을때
	    $('.next').click(function() {
	      nextChkPlay();
	    });

	    // 이전 버튼 클릭했을때
	    $('.prev').click(function() {
	      prevChkPlay();
	    });

	    // 오토플레이
	    autoPlay();

	    // 오토플레이 멈춤
	    autoPlayStop();

	    // 오토플레이 재시작
	    autoPlayRestart();

	    // 화면크기 재설정 되었을때
	    resize();
	  }

	  // 자동실행 함수
	  function autoPlay() {
	    auto = setInterval(function() {
	      nextChkPlay();
	    }, 3500);
	  }

	  // 자동실행 멈춤
	  function autoPlayStop() {
	    $panelLi.mouseenter(function() {
	      clearInterval(auto);
	    });
	  }


	  // 자동실행 멈췄다가 재실행
	  function autoPlayRestart() {
	    $panelLi.mouseleave(function() {
	      auto = setInterval(function() {
	        nextChkPlay();
	      }, 3500);
	    });
	  }

	  // 이전 버튼 클릭시 조건 검사후 슬라이드 무브
	  function prevChkPlay() {
	    if (now_num == 0) {
	      now_num = slide_length - 1;
	    } else {
	      now_num--;
	    }
	    slideMove();
	  }

	  // 이후 버튼 클릭시 조건 검사후 슬라이드 무브
	  function nextChkPlay() {
	    if (now_num == slide_length - 1) {
	      now_num = 0;
	    } else {
	      now_num++;
	    }
	    slideMove();
	  }

	  // 슬라이드 무브
	  function slideMove() {
	    $panel.stop().animate({
	      'margin-left': -wid * now_num
	    });
	    $dotli.removeClass('on');
	    $dotli.eq(now_num).addClass('on');
	  }

	  // 화면크기 조정시 화면 재설정
	  function resize() {
	    $(window).resize(function() {
	      init();
	      $panel.css({
	        'margin-left': -wid * now_num
	      });
	    });
	  }
	  init();
	  slideEvent();
	}



	$("p.title").on('click',function(){
	  $(this).next(".con").slideToggle(100);
	});




	$(function() {
	    $(window).scroll(function() {
	        if ($(this).scrollTop() > 280) {
	            $('#Top_Bt').fadeIn();
	        } else {
	            $('#Top_Bt').fadeOut();
	        }
	    });
	    $("#Top_Bt").click(function() {
	        $('html, body').animate({
	            scrollTop : 0
	        }, 280);
	        return false;
	    });
	});
</script>


</body>
</html>