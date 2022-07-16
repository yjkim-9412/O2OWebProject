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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>

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

}
.feather--sm {
    width: 14px !important;
    height: 14px !important;
}
td{
	width:410px;
	height: 240px;
}

.classes-sub-box--wide {
	width:410px;
	height: 240px;
}
/* 챗봇 */
.title1{
    margin:auto;
    font-size:x-large;
    font-family: Raleway, sans-serif;
    color:#FFCD4A;

}
.chatdiv1{
    position: relative;
    max-width: 300px;
    font-size: 23px;
    padding: 8px 10px;
    margin-bottom:40px;
    background-color: rgba(0, 0, 0, 0.05);
    border-radius: 18px;
    display: flex;
    color: black;
    flex-direction: column;
    width: 100%;


}
.chat-message-received{
    position: relative;
    max-width: 220px;
    word-break: normal;
    padding: 15px 20px;
    margin-bottom:20px;
    background-color: rgba(0, 0, 0, 0.05);
    border-radius: 18px;
    display: flex;
    color: black;
    font-size: 16px;
    flex-direction: column;
    width: 100%;

}
.chatdiv2{
    display: inline-flex;
    -webkit-box-pack: end;
    justify-content: flex-end;
    width: 100%;
    text-align: right;
    background-color: rgb(255, 255, 255);
    align-content: center;
}
.chatdiv2{
    width: 100%;
    max-width: 330px;
    text-align: right
}
.chatbtn{
    max-width: 280px;
    padding: 7px 11px;
    margin: 0px 0px 6px 6px;
    letter-spacing: -0.1px;
    font-weight: 500;
    color: rgba(0, 0, 0, 0.85);
    text-align: left;
    word-break: break-word;
    cursor: pointer;
    background-color: rgb(255, 255, 255);
    border: 1px solid rgba(0, 0, 0, 0.08);
    border-radius: 18px;
    transition: box-shadow 0.2s ease-out 0s, border-color 0.2s ease-out 0s;
    font-size: 1.0rem !important;
    line-height: 2.1rem !important;
}
@media (min-width: 450px) {
    .main-card {
        width: 96%;
        max-width: 400px;
        height: calc(100% - 32px) !important;
        border-radius: 8px !important;
        max-height: 600px;
        margin: 16px!important;
    }
}

.collapsed {
    width: 48px !important;
    height: 48px !important;
    border-radius: 24px !important;
    margin: 16px!important;
}

.main-card {
    background: white;
    color: white;
    width: 100%;
    height: 100%;
    margin: 0px;
    border-radius: 0px;
    display: flex;
    flex-direction: column;
    overflow: hidden;
    right: 0;
    bottom: 0;
    position: fixed;
    transition: all 0.5s;
    box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.2),0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
#chatbot_toggle {
    position: absolute;
    margin: auto !important;
    flex:0 0 auto;
    cursor:pointer;
    z-index:1100;
    opacity: 1;
    border: none;
    height: 48px;
    width: 48px;
    background: #FFCD4A;
    padding: 14px;
    color:white;

}
#chatbot_toggle:hover {
    background: rgba(247, 178, 4, 0.945);

}
.line {
    height: 1px;
    background-color: #FFCD4A;
    width: 100%;
    opacity: 0.2;
}
.main-title {
    background-color: #FFCD4A;
    font-size: large;
    font-weight: bold;
    display: flex;
    height: 48px;

}
.main-title>div{
    height:48px;
    width:48px;
    display:flex;
    margin-left:8px;
}
.main-title svg {
    height: 24px;
    margin: auto;
}
.main-title > span {
    margin: auto auto auto 8px;
}
.chat-area {
    flex-grow: 1;
    overflow: auto;
    border-radius: 8px;
    padding: 16px;
    display: flex;
    flex-direction: column;
}
.input-message {
    padding: 8px 48px 8px 16px;
    flex-grow: 1;
    border: none;
}
.input-message:focus {
    outline: none;
}
.input-div {
    height: 48px;
    display: flex;
}

.input-send {
    background: transparent;
    width: 48px;
    height: 48px;
    right: 0%;
    border: none;
    cursor: pointer;
}
.input-send:hover {
    background: lavender;
}
.input-send svg {
    fill: #FFCD4A;
    margin: 11px 8px;
}
.chat-message-div {
    display: flex;
}

/* 챗봇 */
.title1{
    margin:auto;
    font-size:x-large;
    font-family: Raleway, sans-serif;
    color:#FFCD4A;

}
.chatdiv1{
    position: relative;
    max-width: 300px;
    font-size: 23px;
    padding: 8px 10px;
    margin-bottom:40px;
    background-color: rgba(0, 0, 0, 0.05);
    border-radius: 18px;
    display: flex;
    color: black;
    flex-direction: column;
    width: 100%;


}
.chat-message-received{
    position: relative;
    max-width: 220px;
    word-break: normal;
    padding: 15px 20px;
    margin-bottom:20px;
    background-color: rgba(0, 0, 0, 0.05);
    border-radius: 18px;
    display: flex;
    color: black;
    font-size: 16px;
    flex-direction: column;
    width: 100%;

}
.chatdiv2{
    display: inline-flex;
    -webkit-box-pack: end;
    justify-content: flex-end;
    width: 100%;
    text-align: right;
    background-color: rgb(255, 255, 255);
    align-content: center;
}
.chatdiv2{
    width: 100%;
    max-width: 330px;
    text-align: right
}
.chatbtn{
    max-width: 280px;
    padding: 7px 11px;
    margin: 0px 0px 6px 6px;
    letter-spacing: -0.1px;
    font-weight: 500;
    color: rgba(0, 0, 0, 0.85);
    text-align: left;
    word-break: break-word;
    cursor: pointer;
    background-color: rgb(255, 255, 255);
    border: 1px solid rgba(0, 0, 0, 0.08);
    border-radius: 18px;
    transition: box-shadow 0.2s ease-out 0s, border-color 0.2s ease-out 0s;
    font-size: 1.0rem !important;
    line-height: 2.1rem !important;
}
@media (min-width: 450px) {
    .main-card {
        width: 96%;
        max-width: 400px;
        height: calc(100% - 32px) !important;
        border-radius: 8px !important;
        max-height: 600px;
        margin: 16px!important;
    }
}

.collapsed {
    width: 48px !important;
    height: 48px !important;
    border-radius: 24px !important;
    margin: 16px!important;
}

.main-card {
    background: white;
    color: white;
    width: 100%;
    height: 100%;
    margin: 0px;
    border-radius: 0px;
    display: flex;
    flex-direction: column;
    overflow: hidden;
    right: 0;
    bottom: 0;
    position: fixed;
    transition: all 0.5s;
    box-shadow: 0 10px 16px 0 rgba(0, 0, 0, 0.2),0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
#chatbot_toggle {
    position: absolute;
    margin: auto !important;
    flex:0 0 auto;
    cursor:pointer;
    z-index:1100;
    opacity: 1;
    border: none;
    height: 48px;
    width: 48px;
    background: #FFCD4A;
    padding: 14px;
    color:white;

}
#chatbot_toggle:hover {
    background: rgba(247, 178, 4, 0.945);

}
.line {
    height: 1px;
    background-color: #FFCD4A;
    width: 100%;
    opacity: 0.2;
}
.main-title {
    background-color: #FFCD4A;
    font-size: large;
    font-weight: bold;
    display: flex;
    height: 48px;

}
.main-title>div{
    height:48px;
    width:48px;
    display:flex;
    margin-left:8px;
}
.main-title svg {
    height: 24px;
    margin: auto;
}
.main-title > span {
    margin: auto auto auto 8px;
}
.chat-area {
    flex-grow: 1;
    overflow: auto;
    border-radius: 8px;
    padding: 16px;
    display: flex;
    flex-direction: column;
}
.input-message {
    padding: 8px 48px 8px 16px;
    flex-grow: 1;
    border: none;
}
.input-message:focus {
    outline: none;
}
.input-div {
    height: 48px;
    display: flex;
}

.input-send {
    background: transparent;
    width: 48px;
    height: 48px;
    right: 0%;
    border: none;
    cursor: pointer;
}
.input-send:hover {
    background: lavender;
}
.input-send svg {
    fill: #FFCD4A;
    margin: 11px 8px;
}
.chat-message-div {
    display: flex;
}

.chat-message-sent {
    background-color: rgb(199, 194, 194);
    margin: 8px 16px 8px 64px;
    padding: 8px 16px;
    animation-name: fadeIn;
    animation-iteration-count: 1;
    animation-timing-function: ease-in;
    animation-duration: 100ms;
    color: black;
    font-size: 10px;
    border-radius: 8px 8px 2px 8px;
    background-color: #F7F7F7;
}
    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }
    ::-webkit-scrollbar {
        width: 10px;
    }
    ::-webkit-scrollbar-track {
        background: #f1f1f1;
    }
    ::-webkit-scrollbar-thumb {
        background: #888;
    }
    ::-webkit-scrollbar-thumb:hover {
        background: #555;
    }

.chat-message-sent {
    background-color: rgb(199, 194, 194);
    margin: 8px 16px 8px 64px;
    padding: 8px 16px;
    animation-name: fadeIn;
    animation-iteration-count: 1;
    animation-timing-function: ease-in;
    animation-duration: 100ms;
    color: black;
    font-size: 10px;
    border-radius: 8px 8px 2px 8px;
    background-color: #F7F7F7;
}
    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }
    ::-webkit-scrollbar {
        width: 10px;
    }
    ::-webkit-scrollbar-track {
        background: #f1f1f1;
    }
    ::-webkit-scrollbar-thumb {
        background: #888;
    }
    ::-webkit-scrollbar-thumb:hover {
        background: #555;
    }

    /*알림*/
.alarmbtn{
    border: 0;
    background: none;
    padding-bottom: 20px;
    margin-left: 10px;
    display: flex;
    align-items: flex-start;
    justify-content: flex-end;
    align-content: space-around;
    flex-wrap: nowrap;
    width: 12px;
    height: 12px;
    cursor: pointer;
    position: relative;
}
li{
  list-style: none;
}
.alarmdiv1{
    position: absolute;
    right: -87px;
    top: 37px;
    width: 21.875rem;
    height: 43.875rem;
    background: #fff;
    border: 0.0625rem solid #f2f2f2;
    border-radius: 8px;
    box-shadow: 0 1.125rem 2.5rem -0.75rem rgb(50 50 50 / 30%);
    margin-bottom: 1rem;
    overflow: visible;
    display: none;

}
.alarmdiv1::before{
  content: "";
    position: absolute;
    top: -0.5625rem;
    right: 5.625rem;
    width: 1.125rem;
    height: 0.625rem;
   background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxMCI+PGcgZmlsbD0iI0ZGRiIgZmlsbC1ydWxlPSJldmVub2RkIj48cGF0aCBkPSJNOS4wNSAxbDcuODUgOC42SDEuMnoiLz48cGF0aCBzdHJva2U9IiNGMkYyRjIiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Ik0xIDlsOC04IDggOCIvPjwvZz48L3N2Zz4=) no-repeat;
}
.alarmdiv2{
  display: flex;
    flex-direction: column;
    height: 100%;
    overflow: hidden;
}

.alarmheader{
  padding: 1.5rem 1.5rem 0.5rem
}
.alarmh3{
    font-weight: 500;
    line-height: 2rem;
    font-size: 1.125rem;
    margin: 0;
    color: #323232;
    text-align: left;
}
.btnclose{
  display: none;
    padding: 0;
    margin: 0;
    border: 0;
}
.btnclose img{
    vertical-align: top;
}
.alarmbody{
  height: 100%;
  overflow: auto;
}
.alarmbody2{
  padding: 1.5rem;
   overflow-y: auto;
}
.alarmul{
  margin: 0;
}
.loding-icon{
   width: 100%;
}
.alarmp1{
  font-size: .875rem;
    line-height: 1.3125rem;
    font-weight: 400;
    letter-spacing: -.0125rem;
}
.alarmp2{
  text-align: center;
  margin-top: 0;
  margin-bottom: 1rem;
  display: block;
 font-weight: bold;
 color: #323232;
}
.row-nogutter{
  height: 1.25rem;
  margin-right: 0;
  margin-left: 0;
}
.morebtn{
  height: 100%;
    color: #00c7ae;
    font-size: .875rem;
    padding: 0;
    margin: 0;
    border: 0;
    font-weight: 400;
}
#alarmli{
	position: relative;
}
/* 알림끝 */

/* 검색창 */
.search-suggestion[data-v-8f67d2d4] {
    position: absolute;
    width: 100%;
    background-color: #fff;
    border: 0.0625rem solid #f2f2f2;
    border-top: none;
    border-bottom-right-radius: 0.375rem;
    border-bottom-left-radius: 0.375rem;
    z-index: 2;
    display: none;
}

.search-suggestion .suggestion-body[data-v-8f67d2d4] {
    max-height: 15.5rem;
    height: unset;
    min-height: 12.25rem;
}
.search-suggestion .suggestion-body[data-v-8f67d2d4] {
    overflow-y: scroll;
}
ul.nav-tabs1 {
    border-color: #f2f2f2;
    text-align: center;
    font-weight: 500;
    border: none;
    color: #b5b5b5;
    padding-top: 0.75rem;
    padding-bottom: 1.75rem;
    outline: none;
    font-size: 15px;
}
li.nav-item1 {
    flex-basis: 0;
    flex-grow: 1;
    margin: 0;
    margin-left: 47px;
    float: left;
}
a.nav-link1.active {
    color: #FFCD4A;
    text-decoration: none;
}
a.nav-link1 {
    text-align: center;
    font-weight: 500;
    border: none;
    color: #b5b5b5;
    padding-top: 0.75rem;
    padding-bottom: 0.75rem;
    outline: none;
    font-size: 15px;
    text-decoration: none;
}
.search-suggestion .suggestion-contents[data-v-8f67d2d4] {
    min-height: 12.25rem;
}
.search-suggestion .popular-recent-section .tab-pane[role=tabpanel] ul[data-v-8f67d2d4] {
    margin: 0;
}
.search-suggestion .suggestion-contents .item[data-v-8f67d2d4] {
    padding: -0.15rem 1rem;
    font-size: .875rem;
    display: flex;
    align-items: center;
    font-weight: 400;
    cursor: pointer;
    margin-left: 20px;
}
.search-suggestion .text-ellipsis[data-v-8f67d2d4] {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 14px;
    font-weight: 600;
}
.search-suggestion .flex[data-v-8f67d2d4] {
    display: flex;
    align-items: center;
}
.search-suggestion .suggestion-footer>div[data-v-8f67d2d4] {
    cursor: pointer;
}
.search-suggestion .suggestion-footer[data-v-8f67d2d4] {
    display: block;
    padding: 0.75rem 1rem;
    border-top: 0.0625rem solid #f2f2f2;
    justify-content: space-between;
    color: #737373;
    font-size: .875rem;
    font-weight: 500;
}
.item23li{
	font-size: .875rem;
    display: flex;
    align-items: center;
    font-weight: 400;
    cursor: pointer;
    margin-left: 20px;
    float: left;
     display: contents;
}
.item23{

	overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
        font-size: 15px;
    font-weight: 600;
    color:#222222;
        text-decoration: none;
    }
.list1{
	padding-bottom: 18px;
    padding-left: 18px;
}
/* 검색창끝 */

/*인기고수리뷰*/
.reviewjoogo{
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 0.25rem;
}
.joogostar{
    display: block;
    border-style: none;
    width: 14px;
}
.joogoavg{
    font-size: .875rem;
    font-weight: 700;
    margin: 0 0.125rem;
}
.joogocount{
    font-size: .75rem;
    font-weight: 500;
}
/*인기숨은고수*/
.col3 {
    flex: auto;
    width: 45%;
}
.our-team{
    float: left;
    padding-left: 160px;
    padding-top: 55px;
}
</style>
<script type="text/javascript">
 $(document).on('keypress','#searchinput',function(){
	 $.ajax({
		 url:'${pageContext.request.contextPath}/pro/searchlist',
		 data:{'keyword':$('#searchinput').val()},
		 dataType:'JSON',
		 success:function(rdata){
			 $.each(rdata,function(key,value){
				 setTimeout(function(){
					$('#__BVID__372').append("<ul data-v-8f67d2d4='' class='list1' id='searchinputul'><li data-v-8f67d2d4='' class='item23li' ><a class='item23'href='<%=request.getContextPath() %>/category/sec_category?services_id1="+value.id+"'>"+value.name+"</a></li></ul>");
				 }, 200);
			 })
		 }
	 })
	 $('#searchinput').on('keyup',function(){
		 $('#searchinputul').remove();
	 })
 });
</script>

 
 
 
 
 
 
</head>
<script>

    $(document).ready(function (){


    connectStomp();
    function connectStomp (){
        StompStatus = true;
        var sock = new SockJS("/stompTest");
        var client = Stomp.over(sock);
        socket = client;
        client.connect({}, function () {
            if (!<%=session.getAttribute("id")%>) {
                socket.subscribe('/topic/inc/top/${sessionScope.email}', function (event) {
                    console.log("프로 로그인");
                    const content = JSON.parse(event.body);
                    var sender = content.sender_name;
                    var session_name = content.session_name;
                    var receiver = content.receiver_name;
                    let $socketAlert = $('div#socketAlert');
                    $socketAlert.css('display', 'block');
                    $socketAlert.html(sender + "님이 메세지를 보냈습니다!<input type='button' id='socketMove' value='이동하기' onclick='goPost(session_name)'>");
                    setTimeout(function () {
                        $socketAlert.css('display', 'none');
                    }, 6000);

                });
            }else {
                socket.subscribe('/topic/inc/top/${sessionScope.alert}', function (event) {
                    console.log("회원 로그인");
                    const content = JSON.parse(event.body);
                    var sender = content.sender_name;
                    var session_name = content.session_name;
                    var receiver = content.receiver_name;
                    let $socketAlert = $('div#socketAlert');
                    $socketAlert.css('display', 'block');
                    $socketAlert.html(sender + "님이 메세지를 보냈습니다!<input type='button' id='socketMove' value='이동하기' onclick='goPost(session_name)'>");
                    setTimeout(function () {
                        $socketAlert.css('display', 'none');
                    }, 6000);

                });
            }



        });

    }
    });
    function goPost(session_name){

    }

</script>
<body>
<div id="socketAlert" class="alert alert-success" role="alert" style="display: none">
</div>
<div class="container">

<header>
<c:catch>
<c:choose>
<c:when test="${ empty sessionScope }">

<nav class="navbar navbar-expand-lg navbar-light bg-white sticky" data-offset="500">

        <a href="<%=request.getContextPath() %>" class="navbar-brand"><img id="logo1" src="<%=request.getContextPath() %>/resources/img/logo1.jpg" ></a>

        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarContent">

            <!--search바  -->
            <div class="search">
                <input type="text" placeholder="어떤 서비스가 필요하세요?" onclick="openClose()" id="searchinput">
                <img id="img1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">

                <!--             검색창 -->
                <div data-v-8f67d2d4="" data-v-7563eff3=""
                     class="search-suggestion" id="searchdiv">
                    <div data-v-8f67d2d4="" class="suggestion-body"
                         style="height: calc(43.5625rem);">

                            <div data-v-8f67d2d4="" class="tabs1" id="__BVID__371">
                                <!---->
                                <div class="">
                                    <ul role="tablist" class="nav-tabs1"
                                        id="__BVID__371__BV_tab_controls_">
                                        <!---->
                                        <li role="presentation" class="nav-item1"><a
                                                role="tab" aria-selected="true" aria-setsize="2"
                                                aria-posinset="1" href="#" target="_self"
                                                class="nav-link1 active"
                                                id="__BVID__372___BV_tab_button__"
                                                aria-controls="__BVID__372">인기 키워드</a></li>
                                        <li role="presentation" class="nav-item1"><a
                                                role="tab" tabindex="-1" aria-selected="false"
                                                aria-setsize="2" aria-posinset="2" href="#"
                                                target="_self" class="nav-link1"
                                                id="__BVID__374___BV_tab_button__"
                                                aria-controls="__BVID__374">최근 검색</a></li>
                                        <!---->
                                    </ul>
                                </div>
                                <div class="tab-content" id="__BVID__371__BV_tab_container_">
                                    <div data-v-8f67d2d4="" role="tabpanel" aria-hidden="false"
                                         class="tab-pane suggestion-contents active"
                                         id="__BVID__372"
                                         aria-labelledby="__BVID__372___BV_tab_button__" style="">
                                        <ul data-v-8f67d2d4="" class="list" id="searchinputul">
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="text-ellipsis">영어 과외</div></li>
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="text-ellipsis">퍼스널트레이닝(PT)</div></li>
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="text-ellipsis">보컬 레슨</div></li>
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="text-ellipsis">욕실/화장실
                                                리모델링</div></li>
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="text-ellipsis">도배장판 시공</div></li>
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="text-ellipsis">전기 배선 설치
                                                및 수리</div></li>
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="text-ellipsis">집 인테리어</div></li>
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="text-ellipsis">수학 과외</div></li>
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="text-ellipsis">골프 레슨</div></li>
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="text-ellipsis">수도 관련 설치
                                                및 수리</div></li>
                                        </ul>
                                    </div>
                                    <div data-v-8f67d2d4="" role="tabpanel" aria-hidden="true"
                                         class="tab-pane suggestion-contents recent-contents"
                                         id="__BVID__374"
                                         aria-labelledby="__BVID__374___BV_tab_button__"
                                         style="display: none;">
                                        <ul data-v-8f67d2d4="" class="list">
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="service-name text-ellipsis">영어
                                                과외</div>
                                                <div data-v-8f67d2d4="" class="flex">
                                                    <div data-v-8f67d2d4="" class="created-at">7.11</div>
                                                    <img data-v-8f67d2d4=""
                                                         src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTQuMDM1IDQgOC4wMzIgOE0xMi4wNjcgNGwtOC4wMzIgOCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                                </div></li>
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="service-name text-ellipsis">퍼스널컬러자격증
                                                준비</div>
                                                <div data-v-8f67d2d4="" class="flex">
                                                    <div data-v-8f67d2d4="" class="created-at">7.11</div>
                                                    <img data-v-8f67d2d4=""
                                                         src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTQuMDM1IDQgOC4wMzIgOE0xMi4wNjcgNGwtOC4wMzIgOCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                                </div></li>
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="service-name text-ellipsis">영어
                                                번역</div>
                                                <div data-v-8f67d2d4="" class="flex">
                                                    <div data-v-8f67d2d4="" class="created-at">7.11</div>
                                                    <img data-v-8f67d2d4=""
                                                         src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTQuMDM1IDQgOC4wMzIgOE0xMi4wNjcgNGwtOC4wMzIgOCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                                </div></li>
                                            <li data-v-8f67d2d4="" class="item"><div
                                                    data-v-8f67d2d4="" class="service-name text-ellipsis">수학
                                                과외</div>
                                                <div data-v-8f67d2d4="" class="flex">
                                                    <div data-v-8f67d2d4="" class="created-at">7.11</div>
                                                    <img data-v-8f67d2d4=""
                                                         src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTQuMDM1IDQgOC4wMzIgOE0xMi4wNjcgNGwtOC4wMzIgOCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                                </div></li>
                                        </ul>
                                    </div>
                                    <!---->
                                </div>
                            </div>

                    </div>
                    <div data-v-8f67d2d4="" class="suggestion-footer flex">
                        <div data-v-8f67d2d4=""></div>
                        <div data-v-8f67d2d4="" id="closebtn" onclick="closebtn()">닫기</div>
                    </div>
                </div>
            </div>
            <!-- 검색창끝 -->

          <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
              <a class="nav-link" href="<%=request.getContextPath() %>/pro/mainCategory">주고가입</a>
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
                  <input type="text" placeholder="어떤 서비스가 필요하세요?" onclick="openClose()">
                  <img id="img1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">

                  <!--             검색창 -->
                  <div data-v-8f67d2d4="" data-v-7563eff3=""
                       class="search-suggestion" id="searchdiv">
                      <div data-v-8f67d2d4="" class="suggestion-body"
                           style="height: calc(43.5625rem);">

                          <div data-v-8f67d2d4="" class="tabs1" id="__BVID__371">
                              <!---->
                              <div class="">
                                  <ul role="tablist" class="nav-tabs1"
                                      id="__BVID__371__BV_tab_controls_">
                                      <!---->
                                      <li role="presentation" class="nav-item1"><a
                                              role="tab" aria-selected="true" aria-setsize="2"
                                              aria-posinset="1" href="#" target="_self"
                                              class="nav-link1 active"
                                              id="__BVID__372___BV_tab_button__"
                                              aria-controls="__BVID__372">인기 키워드</a></li>
                                      <li role="presentation" class="nav-item1"><a
                                              role="tab" tabindex="-1" aria-selected="false"
                                              aria-setsize="2" aria-posinset="2" href="#"
                                              target="_self" class="nav-link1"
                                              id="__BVID__374___BV_tab_button__"
                                              aria-controls="__BVID__374">최근 검색</a></li>
                                      <!---->
                                  </ul>
                              </div>
                              <div class="tab-content" id="__BVID__371__BV_tab_container_">
                                  <div data-v-8f67d2d4="" role="tabpanel" aria-hidden="false"
                                       class="tab-pane suggestion-contents active"
                                       id="__BVID__372"
                                       aria-labelledby="__BVID__372___BV_tab_button__" style="">
                                      <ul data-v-8f67d2d4="" class="list">
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">영어 과외</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">퍼스널트레이닝(PT)</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">보컬 레슨</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">욕실/화장실
                                              리모델링</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">도배장판 시공</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">전기 배선 설치
                                              및 수리</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">집 인테리어</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">수학 과외</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">골프 레슨</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">수도 관련 설치
                                              및 수리</div></li>
                                      </ul>
                                  </div>
                                  <div data-v-8f67d2d4="" role="tabpanel" aria-hidden="true"
                                       class="tab-pane suggestion-contents recent-contents"
                                       id="__BVID__374"
                                       aria-labelledby="__BVID__374___BV_tab_button__"
                                       style="display: none;">
                                      <ul data-v-8f67d2d4="" class="list">
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="service-name text-ellipsis">영어
                                              과외</div>
                                              <div data-v-8f67d2d4="" class="flex">
                                                  <div data-v-8f67d2d4="" class="created-at">7.11</div>
                                                  <img data-v-8f67d2d4=""
                                                       src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTQuMDM1IDQgOC4wMzIgOE0xMi4wNjcgNGwtOC4wMzIgOCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                              </div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="service-name text-ellipsis">퍼스널컬러자격증
                                              준비</div>
                                              <div data-v-8f67d2d4="" class="flex">
                                                  <div data-v-8f67d2d4="" class="created-at">7.11</div>
                                                  <img data-v-8f67d2d4=""
                                                       src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTQuMDM1IDQgOC4wMzIgOE0xMi4wNjcgNGwtOC4wMzIgOCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                              </div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="service-name text-ellipsis">영어
                                              번역</div>
                                              <div data-v-8f67d2d4="" class="flex">
                                                  <div data-v-8f67d2d4="" class="created-at">7.11</div>
                                                  <img data-v-8f67d2d4=""
                                                       src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTQuMDM1IDQgOC4wMzIgOE0xMi4wNjcgNGwtOC4wMzIgOCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                              </div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="service-name text-ellipsis">수학
                                              과외</div>
                                              <div data-v-8f67d2d4="" class="flex">
                                                  <div data-v-8f67d2d4="" class="created-at">7.11</div>
                                                  <img data-v-8f67d2d4=""
                                                       src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTQuMDM1IDQgOC4wMzIgOE0xMi4wNjcgNGwtOC4wMzIgOCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                              </div></li>
                                      </ul>
                                  </div>
                                  <!---->
                              </div>
                          </div>

                      </div>
                      <div data-v-8f67d2d4="" class="suggestion-footer flex">
                          <div data-v-8f67d2d4=""></div>
                          <div data-v-8f67d2d4="" id="closebtn" onclick="closebtn()">닫기</div>
                      </div>
                  </div>
              </div>
              <!-- 검색창끝 -->

            <ul class="navbar-nav ml-auto">


              <li class="nav-item">
                <a class="nav-link" href="about.html">고수찾기</a>
              </li>
<!--알림 -->
                <li class="nav-item" id="alarmli">
	<button  type="button" class="alarmbtn" id="alarmbtn" onclick="openCloseToc();">
                        <img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMjRweCIgaGVpZ2h0PSIyNHB4IiB2aWV3Qm94PSIwIDAgMjQgMjQiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8dGl0bGU+OEUwOTAwNEYtQTVEOC00Mzk0LTk0M0UtRDczM0VEOENGOTA5PC90aXRsZT4KICAgIDxnIGlkPSJbaGVyZV0tU29vbWdvLUhvbWUiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSLsm7nqs7XthrUvaGVhZGVyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTg0My4wMDAwMDAsIC0xNjk2LjAwMDAwMCkiPgogICAgICAgICAgICA8ZyBpZD0ibmF2aWdhdGlvbi93ZWIvbmF2aWdhdGlvbl9wcm92aWRlciIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoODc3LjAwMDAwMCwgMTY3Mi4wMDAwMDApIj4KICAgICAgICAgICAgICAgIDxnIGlkPSJpY29uX25hdmlfbm90aWZpY2F0aW9ucyIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoOTY2LjAwMDAwMCwgMjQuMDAwMDAwKSI+CiAgICAgICAgICAgICAgICAgICAgPHJlY3QgaWQ9InBhdGgiIHg9IjAiIHk9IjAiIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+PC9yZWN0PgogICAgICAgICAgICAgICAgICAgIDxnIGlkPSJHcm91cC0yIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSg0LjAwMDAwMCwgMy4wMDAwMDApIiBzdHJva2U9IiMyRDJEMkQiIHN0cm9rZS13aWR0aD0iMS41Ij4KICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTUsMTQuNSBDNSwxNi4xNTY4NTQyIDYuMzQzMTQ1NzUsMTcuNSA4LDE3LjUgQzkuNjU2ODU0MjUsMTcuNSAxMSwxNi4xNTY4NTQyIDExLDE0LjUiIGlkPSJQYXRoIj48L3BhdGg+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik0yLDYgQzIsMi42ODYyOTE1IDQuNjg2MjkxNSw2LjA4NzE4Mzc2ZS0xNiA4LDAgQzExLjMxMzcwODUsLTYuMDg3MTgzNzZlLTE2IDE0LDIuNjg2MjkxNSAxNCw2IEwxNCwxMCBMMTYsMTQgTDAsMTQgTDIsMTAgTDIsNiBaIiBpZD0iQ29tYmluZWQtU2hhcGUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPg==" alt="알림" class="alarm-image"></button>

<div  class="alarmdiv1" id="alarmdiv" >
	<div  class="alarmdiv2">
		<header class="alarmheader">
			<h3 class="alarmh3">알림</h3>
			<button  type="button" class="btnclose"><img data-v-f7f07f48="" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTgiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAxOCAxOCI+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBpZD0iYSIgZD0iTTkgNy44NjlMMTYuNDM0LjQzNGwxLjEzMiAxLjEzMkwxMC4xMyA5bDcuNDM1IDcuNDM0LTEuMTMyIDEuMTMyTDkgMTAuMTNsLTcuNDM0IDcuNDM1LTEuMTMyLTEuMTMyTDcuODcgOSAuNDM0IDEuNTY2IDEuNTY2LjQzNCA5IDcuODd6Ii8+CiAgICA8L2RlZnM+CiAgICA8dXNlIGZpbGw9IiMzMjMyMzIiIGZpbGwtcnVsZT0ibm9uemVybyIgeGxpbms6aHJlZj0iI2EiLz4KPC9zdmc+Cg==" alt="닫기"></button>
		</header>
		<div  class="alarmbody">
			<div  class="alarmbody2">
				<ul  class="alarmul"  style="display: none;"></ul>
				<div  class="loading-icon" style="display: none;">
					<div  data-v-52ebc5c5="" class="">
						<div  class="indicator-body center"
							style="width: 24px; height: 24px; border-width: 0.25rem; border-style: solid; border-color: rgb(153, 153, 153) rgba(153, 153, 153, 0.2) rgba(153, 153, 153, 0.2); border-image: initial;">
						</div>
						<p  class="alarmp1" style="display: none;"></p>
					</div>
				</div>
				<div  class="no-notifications">
					<p  class="alarmp2">받은 알림이 없습니다</p>
				</div>
				<div  class="row-nogutter" style="display: none;">
					<button  type="button" class="morebtn">더 보기</button></div>
			</div>
		</div>
	</div>
</div>
</li>
<!-- 알림끝 -->
              <li class="nav-item active">
                <a class="nav-link" href="<%=request.getContextPath() %>/pro/info?num=0">마이페이지</a>
              </li>
              <li class="nav-item">
                <button class="button-55" role="button" onclick="location.href='<%=request.getContextPath() %>/pro/logout'">로그아웃</button>
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
                  <input type="text" placeholder="어떤 서비스가 필요하세요?" onclick="openClose()">
                  <img id="img1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">

                  <!--             검색창 -->
                  <div data-v-8f67d2d4="" data-v-7563eff3=""
                       class="search-suggestion" id="searchdiv">
                      <div data-v-8f67d2d4="" class="suggestion-body"
                           style="height: calc(43.5625rem);">

                          <div data-v-8f67d2d4="" class="tabs1" id="__BVID__371">
                              <!---->
                              <div class="">
                                  <ul role="tablist" class="nav-tabs1"
                                      id="__BVID__371__BV_tab_controls_">
                                      <!---->
                                      <li role="presentation" class="nav-item1"><a
                                              role="tab" aria-selected="true" aria-setsize="2"
                                              aria-posinset="1" href="#" target="_self"
                                              class="nav-link1 active"
                                              id="__BVID__372___BV_tab_button__"
                                              aria-controls="__BVID__372">인기 키워드</a></li>
                                      <li role="presentation" class="nav-item1"><a
                                              role="tab" tabindex="-1" aria-selected="false"
                                              aria-setsize="2" aria-posinset="2" href="#"
                                              target="_self" class="nav-link1"
                                              id="__BVID__374___BV_tab_button__"
                                              aria-controls="__BVID__374">최근 검색</a></li>
                                      <!---->
                                  </ul>
                              </div>
                              <div class="tab-content" id="__BVID__371__BV_tab_container_">
                                  <div data-v-8f67d2d4="" role="tabpanel" aria-hidden="false"
                                       class="tab-pane suggestion-contents active"
                                       id="__BVID__372"
                                       aria-labelledby="__BVID__372___BV_tab_button__" style="">
                                      <ul data-v-8f67d2d4="" class="list">
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">영어 과외</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">퍼스널트레이닝(PT)</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">보컬 레슨</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">욕실/화장실
                                              리모델링</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">도배장판 시공</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">전기 배선 설치
                                              및 수리</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">집 인테리어</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">수학 과외</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">골프 레슨</div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="text-ellipsis">수도 관련 설치
                                              및 수리</div></li>
                                      </ul>
                                  </div>
                                  <div data-v-8f67d2d4="" role="tabpanel" aria-hidden="true"
                                       class="tab-pane suggestion-contents recent-contents"
                                       id="__BVID__374"
                                       aria-labelledby="__BVID__374___BV_tab_button__"
                                       style="display: none;">
                                      <ul data-v-8f67d2d4="" class="list">
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="service-name text-ellipsis">영어
                                              과외</div>
                                              <div data-v-8f67d2d4="" class="flex">
                                                  <div data-v-8f67d2d4="" class="created-at">7.11</div>
                                                  <img data-v-8f67d2d4=""
                                                       src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTQuMDM1IDQgOC4wMzIgOE0xMi4wNjcgNGwtOC4wMzIgOCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                              </div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="service-name text-ellipsis">퍼스널컬러자격증
                                              준비</div>
                                              <div data-v-8f67d2d4="" class="flex">
                                                  <div data-v-8f67d2d4="" class="created-at">7.11</div>
                                                  <img data-v-8f67d2d4=""
                                                       src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTQuMDM1IDQgOC4wMzIgOE0xMi4wNjcgNGwtOC4wMzIgOCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                              </div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="service-name text-ellipsis">영어
                                              번역</div>
                                              <div data-v-8f67d2d4="" class="flex">
                                                  <div data-v-8f67d2d4="" class="created-at">7.11</div>
                                                  <img data-v-8f67d2d4=""
                                                       src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTQuMDM1IDQgOC4wMzIgOE0xMi4wNjcgNGwtOC4wMzIgOCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                              </div></li>
                                          <li data-v-8f67d2d4="" class="item"><div
                                                  data-v-8f67d2d4="" class="service-name text-ellipsis">수학
                                              과외</div>
                                              <div data-v-8f67d2d4="" class="flex">
                                                  <div data-v-8f67d2d4="" class="created-at">7.11</div>
                                                  <img data-v-8f67d2d4=""
                                                       src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTQuMDM1IDQgOC4wMzIgOE0xMi4wNjcgNGwtOC4wMzIgOCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                              </div></li>
                                      </ul>
                                  </div>
                                  <!---->
                              </div>
                          </div>

                      </div>
                      <div data-v-8f67d2d4="" class="suggestion-footer flex">
                          <div data-v-8f67d2d4=""></div>
                          <div data-v-8f67d2d4="" id="closebtn" onclick="closebtn()">닫기</div>
                      </div>
                  </div>
              </div>
              <!-- 검색창끝 -->

            <ul class="navbar-nav ml-auto">


              <li class="nav-item">
                <a class="nav-link" href="about.html">고수찾기</a>
              </li>
<!-- 알림 -->
          <li class="nav-item" id="alarmli">
	<button  type="button" class="alarmbtn" id="alarmbtn" onclick="openCloseToc();">
                        <img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMjRweCIgaGVpZ2h0PSIyNHB4IiB2aWV3Qm94PSIwIDAgMjQgMjQiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8dGl0bGU+OEUwOTAwNEYtQTVEOC00Mzk0LTk0M0UtRDczM0VEOENGOTA5PC90aXRsZT4KICAgIDxnIGlkPSJbaGVyZV0tU29vbWdvLUhvbWUiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSLsm7nqs7XthrUvaGVhZGVyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTg0My4wMDAwMDAsIC0xNjk2LjAwMDAwMCkiPgogICAgICAgICAgICA8ZyBpZD0ibmF2aWdhdGlvbi93ZWIvbmF2aWdhdGlvbl9wcm92aWRlciIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoODc3LjAwMDAwMCwgMTY3Mi4wMDAwMDApIj4KICAgICAgICAgICAgICAgIDxnIGlkPSJpY29uX25hdmlfbm90aWZpY2F0aW9ucyIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoOTY2LjAwMDAwMCwgMjQuMDAwMDAwKSI+CiAgICAgICAgICAgICAgICAgICAgPHJlY3QgaWQ9InBhdGgiIHg9IjAiIHk9IjAiIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+PC9yZWN0PgogICAgICAgICAgICAgICAgICAgIDxnIGlkPSJHcm91cC0yIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSg0LjAwMDAwMCwgMy4wMDAwMDApIiBzdHJva2U9IiMyRDJEMkQiIHN0cm9rZS13aWR0aD0iMS41Ij4KICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTUsMTQuNSBDNSwxNi4xNTY4NTQyIDYuMzQzMTQ1NzUsMTcuNSA4LDE3LjUgQzkuNjU2ODU0MjUsMTcuNSAxMSwxNi4xNTY4NTQyIDExLDE0LjUiIGlkPSJQYXRoIj48L3BhdGg+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik0yLDYgQzIsMi42ODYyOTE1IDQuNjg2MjkxNSw2LjA4NzE4Mzc2ZS0xNiA4LDAgQzExLjMxMzcwODUsLTYuMDg3MTgzNzZlLTE2IDE0LDIuNjg2MjkxNSAxNCw2IEwxNCwxMCBMMTYsMTQgTDAsMTQgTDIsMTAgTDIsNiBaIiBpZD0iQ29tYmluZWQtU2hhcGUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPg==" alt="알림" class="alarm-image"></button>

<div  class="alarmdiv1" id="alarmdiv" >
	<div  class="alarmdiv2">
		<header class="alarmheader">
			<h3 alarmh3>알림</h3>
			<button  type="button" class="btnclose"><img data-v-f7f07f48="" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTgiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAxOCAxOCI+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBpZD0iYSIgZD0iTTkgNy44NjlMMTYuNDM0LjQzNGwxLjEzMiAxLjEzMkwxMC4xMyA5bDcuNDM1IDcuNDM0LTEuMTMyIDEuMTMyTDkgMTAuMTNsLTcuNDM0IDcuNDM1LTEuMTMyLTEuMTMyTDcuODcgOSAuNDM0IDEuNTY2IDEuNTY2LjQzNCA5IDcuODd6Ii8+CiAgICA8L2RlZnM+CiAgICA8dXNlIGZpbGw9IiMzMjMyMzIiIGZpbGwtcnVsZT0ibm9uemVybyIgeGxpbms6aHJlZj0iI2EiLz4KPC9zdmc+Cg==" alt="닫기"></button>
		</header>
		<div  class="alarmbody">
			<div  class="alarmbody2">
				<ul  class="alarmul"  style="display: none;"></ul>
				<div  class="loading-icon" style="display: none;">
					<div  data-v-52ebc5c5="" class="">
						<div  class="indicator-body center"
							style="width: 24px; height: 24px; border-width: 0.25rem; border-style: solid; border-color: rgb(153, 153, 153) rgba(153, 153, 153, 0.2) rgba(153, 153, 153, 0.2); border-image: initial;">
						</div>
						<p  class="alarmp1" style="display: none;"></p>
					</div>
				</div>
				<div  class="no-notifications">
					<p  class="alarmp2">받은 알림이 없습니다</p>
				</div>
				<div  class="row-nogutter" style="display: none;">
					<button  type="button" class="morebtn">더 보기</button></div>
			</div>
		</div>
	</div>
</div>
</li>


<!-- 알림끝 -->
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
                    <div class="card p-3 text-center border-0" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath() %>/category/lesson';">
                        <div class="card-body">
                            <img src="resources/img/icon/lesson.png">                            
                            <h2 class="card-title display-1" style="font-size:2.5vmin;">레슨</h2>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath() %>/category/health';">
                        <div class="card-body">
                            <img src="resources/img/icon/health.png">                            
                            <h2 class="card-title display-1" style="font-size:2.5vmin;">건강</h2>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath() %>/category/event';">
                        <div class="card-body">
                            <img src="resources/img/icon/event.png">
                            <h2 class="card-title display-1" style="font-size:2.5vmin;">이벤트</h2>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath() %>/category/cleaning';">
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
	        <div class="item"><a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/service1.png" class="img-thumbnail"><figcaption>영어회화</figcaption></figure></a></div>
		    
	    </div>
	    <div class="col-sm-4">
		    <div class="item"><a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/service2.png" class="img-thumbnail"><figcaption>웨이트 트레이닝</figcaption></figure></a></div>
	    </div>
	    <div class="col-sm-4">
		    <div class="item"><a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/service3.png" class="img-thumbnail"><figcaption>보컬 레슨</figcaption></figure></a></div>
	    </div>
    </div>
</div>
<!-- 인기 서비스 끝 --> 

<!-- 인기 숨은고수 -->
<br><br><br><br>
 <div class="container">
      <h4 class="text-left"><b>인기 주고</b></h4>	
  <div class="row">


    <div class="col3">
        <c:forEach  begin="0" end="4" var="reviewDTO3" items="${reviewDTO3}" >
      <div class="our-team">
        <div class="picture">
          <img class="img-fluid" src="resources/img/joogo.jpg" onclick="location.href='pro/info?num=${reviewDTO3.pro_id}'">
        </div>

        <div class="team-content">
          <h3 class="name">${reviewDTO3.proname}</h3>

            <h4 class="title">${reviewDTO3.service}</h4>

            <for class="reviewjoogo">
                <img data-v-5aab2176="" class="joogostar" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Im03LjQ5NiAxLjU5NiAxLjQwNyAyLjc0MiAzLjE0NS40NGMuOTEuMTI3IDEuMjc1IDEuMjA0LjYxNSAxLjgyMmwtMi4yNzYgMi4xMzQuNTM4IDMuMDE1Yy4xNTUuODcyLS43OTcgMS41MzgtMS42MTIgMS4xMjZMNi41IDExLjQ1MmwtMi44MTMgMS40MjNjLS44MTUuNDEyLTEuNzY3LS4yNTQtMS42MTItMS4xMjZsLjUzOC0zLjAxNUwuMzM3IDYuNmMtLjY2LS42MTgtLjI5Ni0xLjY5NS42MTUtMS44MjJsMy4xNDUtLjQ0IDEuNDA3LTIuNzQyQzUuOTEyLjggNy4wODguOCA3LjQ5NiAxLjU5NiIgZmlsbD0iI0ZGQ0UyMSIgZmlsbC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPgo=">
                <span data-v-5aab2176="" class="joogoavg" >${reviewDTO3.avg1}</span>
                <span data-v-5aab2176="" class="joogocount">(${reviewDTO3.count1})</span>

            </div>
            </div>
        </c:forEach>
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
</span></div> ${roundavg2 }점 총 ${count2}개의 후기가 있어요!
    </div>
    <table>
    <tr>
<c:forEach  begin="1" end="3" var="reviewDTO" items="${reviewDTO}">

    <td><div class="row no-gap row--inset">
        
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

              <span class="text-strong">${reviewDTO.comment}</span><span class="text-strong"></span>
            </div>

            <div class="classes-sub-box__content-footer">
              ${reviewDTO.name}
            </div>
          </div>



          </div></td>

           </c:forEach>
           </tr>
          </table>
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
<div class="title1">



    <div id="chatbot" class="main-card collapsed">
        <button id="chatbot_toggle">
            <svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M15 4v7H5.17l-.59.59-.58.58V4h11m1-2H3c-.55 0-1 .45-1 1v14l4-4h10c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm5 4h-2v9H6v2c0 .55.45 1 1 1h11l4 4V7c0-.55-.45-1-1-1z"/></svg>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" style="display:none"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12 19 6.41z"/></svg>
            </svg>
        </button>
        <div class="main-title">
            <div>
                <svg viewBox="0 0 640 512" title="robot">
                    <path fill="currentColor"
                          d="M32,224H64V416H32A31.96166,31.96166,0,0,1,0,384V256A31.96166,31.96166,0,0,1,32,224Zm512-48V448a64.06328,64.06328,0,0,1-64,64H160a64.06328,64.06328,0,0,1-64-64V176a79.974,79.974,0,0,1,80-80H288V32a32,32,0,0,1,64,0V96H464A79.974,79.974,0,0,1,544,176ZM264,256a40,40,0,1,0-40,40A39.997,39.997,0,0,0,264,256Zm-8,128H192v32h64Zm96,0H288v32h64ZM456,256a40,40,0,1,0-40,40A39.997,39.997,0,0,0,456,256Zm-8,128H384v32h64ZM640,256V384a31.96166,31.96166,0,0,1-32,32H576V224h32A31.96166,31.96166,0,0,1,640,256Z" />
                </svg>
            </div>
            <span>마루챗봇</span>

        </div>
        <div class="chat-area" id="message-box">
            <div class="chatdiv1">😀 무엇을 도와드릴까요?</div>
            <div class="chatdiv2">
                <div class="chatdiv3">
                    <button class="chatbtn" onclick="addResponseMsg('마루는 전문가와 고객을 매칭해주는 사이트 입니다🧑‍🤝‍🧑 가입은 하셨나요? 메인에서 오른쪽 상단에 가입하기 누르고 전문가를 알아보세요👆')">마루가 처음이에요👶</button>
                    <button class="chatbtn">에어컨 청소 하고싶어요🧙</button>
                    <button class="chatbtn">전문가 가입 하고싶어요👩‍🔧</button>
                    <button class="chatbtn">1:1문의하기👨‍💼</button>

                </div>
            </div>
        </div>

        <div class="line"></div>
        <div class="input-div">
            <input class="input-message" name="message" type="text" id="message" placeholder="Type your message ..." />
            <button class="input-send" onclick="send()">
                <svg style="width:24px;height:24px">
                    <path d="M2,2 1L23,12L2,3V10L17,12L2,14V21Z" />
                </svg>
            </button>
        </div>
    </div>
</div>
</body>

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

// 	챗봇
var running = false;
function send() {
    if (running == true) return;
    var msg = document.getElementById("message").value;
    if (msg == "") return;
    running = true;
    addMsg(msg);
    //DELEAY MESSAGE RESPOSE Echo
    window.setTimeout(addResponseMsg, 1000, msg);
}
function addMsg(msg) {
    var div = document.createElement("div");
    div.innerHTML =
        "<span style='flex-grow:1'></span><div class='chat-message-sent'>" +
        msg +
        "</div>";
    div.className = "chat-message-div";
    document.getElementById("message-box").appendChild(div);
    //SEND MESSAGE TO API
    document.getElementById("message").value = "";
    document.getElementById("message-box").scrollTop = document.getElementById(
        "message-box"
    ).scrollHeight;
}
function addResponseMsg(msg) {
    var div = document.createElement("div");
    div.innerHTML = "<div class='chat-message-received'>" + msg + "</div>";
    div.className = "chat-message-div";
    document.getElementById("message-box").appendChild(div);
    document.getElementById("message-box").scrollTop = document.getElementById(
        "message-box"
    ).scrollHeight;
    running = false;
}
document.getElementById("message").addEventListener("keyup", function (event) {
    if (event.keyCode === 13) {
        event.preventDefault();
        send();
    }
});
document.getElementById("chatbot_toggle").onclick = function () {
    if (document.getElementById("chatbot").classList.contains("collapsed")) {
        document.getElementById("chatbot").classList.remove("collapsed")
        document.getElementById("chatbot_toggle").children[0].style.display = "none"
        document.getElementById("chatbot_toggle").children[1].style.display = ""

    }
    else {
        document.getElementById("chatbot").classList.add("collapsed")
        document.getElementById("chatbot_toggle").children[0].style.display = ""
        document.getElementById("chatbot_toggle").children[1].style.display = "none"
    }
}

// 알림
function openCloseToc() {
  if (document.getElementById('alarmdiv').style.display === 'block') {
    document.getElementById('alarmdiv').style.display = 'none';

  } else {
    document.getElementById('alarmdiv').style.display = 'block';

  }
}
//검색창
function openClose() {
	  if (document.getElementById('searchdiv').style.display === 'block') {
	    document.getElementById('searchdiv').style.display = 'none';

	  } else {
	    document.getElementById('searchdiv').style.display = 'block';

	  }
	}

function closebtn(){
    document.getElementById('searchdiv').style.display = 'none';
}

// 	챗봇
var running = false;
function send() {
    if (running == true) return;
    var msg = document.getElementById("message").value;
    if (msg == "") return;
    running = true;
    addMsg(msg);
    //DELEAY MESSAGE RESPOSE Echo
    window.setTimeout(addResponseMsg, 1000, msg);
}
function addMsg(msg) {
    var div = document.createElement("div");
    div.innerHTML =
        "<span style='flex-grow:1'></span><div class='chat-message-sent'>" +
        msg +
        "</div>";
    div.className = "chat-message-div";
    document.getElementById("message-box").appendChild(div);
    //SEND MESSAGE TO API
    document.getElementById("message").value = "";
    document.getElementById("message-box").scrollTop = document.getElementById(
        "message-box"
    ).scrollHeight;
}
function addResponseMsg(msg) {
    var div = document.createElement("div");
    div.innerHTML = "<div class='chat-message-received'>" + msg + "</div>";
    div.className = "chat-message-div";
    document.getElementById("message-box").appendChild(div);
    document.getElementById("message-box").scrollTop = document.getElementById(
        "message-box"
    ).scrollHeight;
    running = false;
}
document.getElementById("message").addEventListener("keyup", function (event) {
    if (event.keyCode === 13) {
        event.preventDefault();
        send();
    }
});
document.getElementById("chatbot_toggle").onclick = function () {
    if (document.getElementById("chatbot").classList.contains("collapsed")) {
        document.getElementById("chatbot").classList.remove("collapsed")
        document.getElementById("chatbot_toggle").children[0].style.display = "none"
        document.getElementById("chatbot_toggle").children[1].style.display = ""

    }
    else {
        document.getElementById("chatbot").classList.add("collapsed")
        document.getElementById("chatbot_toggle").children[0].style.display = ""
        document.getElementById("chatbot_toggle").children[1].style.display = "none"
    }
}
</script>


</body>
</html>