<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
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

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com/">
  
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
</style> 
 
 
 
 
 
 
 
</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>

<header>
<nav class="navbar navbar-expand-lg navbar-light bg-white sticky" data-offset="500">
      <div class="container">
        <a href="#" class="navbar-brand"><img src="resources/img/logo1.jpg" ></a>

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
              <a class="nav-link" href="index.html">로그인</a>
            </li>
            <li class="nav-item">
              <button class="button-55" role="button" >회원가입</button>
            </li>
          </ul>
        </div>

      </div>
    </nav>
    

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
<section>
        <div class="container">
            <div class="row">
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

  <div class="page-section" id="about">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 py-3 wow fadeInUp">
          <span class="subhead">About us</span>
          <h2 class="title-section">The number #1 SEO Service Company</h2>
          <div class="divider"></div>

          <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
          <p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.</p>
          <a href="about.html" class="btn btn-primary mt-3">Read More</a>
        </div>
        <div class="col-lg-6 py-3 wow fadeInRight">
          <div class="img-fluid py-3 text-center">
            <img src="resources/img/about_frame.png" alt="">
          </div>
        </div>
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
          <img class="img-fluid" src="https://picsum.photos/130/130?image=1027">
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

  <div class="page-section">
    <div class="container">
      <div class="text-center wow fadeInUp">
        <div class="subhead">Pricing Plan</div>
        <h2 class="title-section">Choose plan the right for you</h2>
        <div class="divider mx-auto"></div>
      </div>
      <div class="row mt-5">
        <div class="col-lg-4 py-3 wow zoomIn">
          <div class="card-pricing">
            <div class="header">
              <div class="pricing-type">Basic</div>
              <div class="price">
                <span class="dollar">$</span>
                <h1>39<span class="suffix">.99</span></h1>
              </div>
              <h5>Per Month</h5>
            </div>
            <div class="body">
              <p>25 Analytics <span class="suffix">Campaign</span></p>
              <p>1,300 Change <span class="suffix">Keywords</span></p>
              <p>Social Media <span class="suffix">Reviews</span></p>
              <p>1 Free <span class="suffix">Optimization</span></p>
              <p>24/7 <span class="suffix">Support</span></p>
            </div>
            <div class="footer">
              <a href="#" class="btn btn-pricing btn-block">Subscribe</a>
            </div>
          </div>
        </div>

        <div class="col-lg-4 py-3 wow zoomIn">
          <div class="card-pricing marked">
            <div class="header">
              <div class="pricing-type">Standar</div>
              <div class="price">
                <span class="dollar">$</span>
                <h1>59<span class="suffix">.99</span></h1>
              </div>
              <h5>Per Month</h5>
            </div>
            <div class="body">
              <p>25 Analytics <span class="suffix">Campaign</span></p>
              <p>1,300 Change <span class="suffix">Keywords</span></p>
              <p>Social Media <span class="suffix">Reviews</span></p>
              <p>1 Free <span class="suffix">Optimization</span></p>
              <p>24/7 <span class="suffix">Support</span></p>
            </div>
            <div class="footer">
              <a href="#" class="btn btn-pricing btn-block">Subscribe</a>
            </div>
          </div>
        </div>

        <div class="col-lg-4 py-3 wow zoomIn">
          <div class="card-pricing">
            <div class="header">
              <div class="pricing-type">Professional</div>
              <div class="price">
                <span class="dollar">$</span>
                <h1>99<span class="suffix">.99</span></h1>
              </div>
              <h5>Per Month</h5>
            </div>
            <div class="body">
              <p>25 Analytics <span class="suffix">Campaign</span></p>
              <p>1,300 Change <span class="suffix">Keywords</span></p>
              <p>Social Media <span class="suffix">Reviews</span></p>
              <p>1 Free <span class="suffix">Optimization</span></p>
              <p>24/7 <span class="suffix">Support</span></p>
            </div>
            <div class="footer">
              <a href="#" class="btn btn-pricing btn-block">Subscribe</a>
            </div>
          </div>
        </div>

      </div>
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <!-- Banner info -->
  <div class="page-section banner-info">
    <div class="wrap bg-image" style="background-image: url(../assets/img/bg_pattern.svg);">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 py-3 pr-lg-5 wow fadeInUp">
            <h2 class="title-section">SEO to Improve Brand <br> Visibility</h2>
            <div class="divider"></div>
            <p>We're an experienced and talented team of passionate consultants who breathe with search engine marketing.</p>
            
            <ul class="theme-list theme-list-light text-white">
              <li>
                <div class="h5">SEO Content Strategy</div>
                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor</p>
              </li>
              <li>
                <div class="h5">B2B SEO</div>
                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor</p>
              </li>
            </ul>
          </div>
          <div class="col-lg-6 py-3 wow fadeInRight">
            <div class="img-fluid text-center">
              <img src="resources/img/banner_image_2.svg" alt="">
            </div>
          </div>
        </div>
      </div>
    </div> <!-- .wrap -->
  </div> <!-- .page-section -->

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
                <img src="resources/img/200-1.jpg" >
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
                <img src="resources/img/200-2.jpg" >
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
                <img src="resources/img/200-3.jpg" >
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


  <footer class="page-footer bg-image" style="background-image: url(resources/img/world_pattern.svg);">
    <div class="container">
      <div class="row mb-5">
        <div class="col-lg-3 py-3">
          <h3>SEOGram</h3>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero amet, repellendus eius blanditiis in iusto eligendi iure.</p>

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
          <ul class="footer-menu">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Career</a></li>
            <li><a href="#">Advertise</a></li>
            <li><a href="#">Terms of Service</a></li>
            <li><a href="#">Help & Support</a></li>
          </ul>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Contact Us</h5>
          <p>203 Fake St. Mountain View, San Francisco, California, USA</p>
          <a href="#" class="footer-link">+00 1122 3344 5566</a>
          <a href="#" class="footer-link">seogram@temporary.com</a>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Newsletter</h5>
          <p>Get updates, news or events on your mail.</p>
          <form action="#">
            <input type="text" class="form-control" placeholder="Enter your email..">
            <button type="submit" class="btn btn-success btn-block mt-2">Subscribe</button>
          </form>
        </div>
      </div>

      <p class="text-center" id="copyright">Copyright &copy; 2020. This template design and develop by <a href="https://macodeid.com/" target="_blank">MACode ID</a></p>
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