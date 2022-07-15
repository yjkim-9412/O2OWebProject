<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">

<!--   구글폰트(버튼) -->

  <title>MaRoo</title>

  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/maicons.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/vendor/animate/animate.css">

  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/theme.css">


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
#logo1{
	 width: 140px;
	 height: 70px;
    margin-bottom: 5px;
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
.search-suggestion .popular-recent-section[data-v-8f67d2d4] ul.nav-tabs {
    border-color: #f2f2f2;
}
.search-suggestion .popular-recent-section[data-v-8f67d2d4] li.nav-item {
    flex-basis: 0;
    flex-grow: 1;
    margin: 0;
}
.search-suggestion .popular-recent-section[data-v-8f67d2d4] li.nav-item a.nav-link.active {
    color: #FFCD4A;
}
.search-suggestion .popular-recent-section[data-v-8f67d2d4] li.nav-item a.nav-link {
    text-align: center;
    font-weight: 500;
    border: none;
    color: #b5b5b5;
    padding-top: 0.75rem;
    padding-bottom: 0.75rem;
    outline: none;
    font-size: 15px;
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


</style>

<script type="text/javascript">

function openCloseToc() {
	  if (document.getElementById('searchdiv').style.display === 'block') {
	    document.getElementById('searchdiv').style.display = 'none';

	  } else {
	    document.getElementById('searchdiv').style.display = 'block';

	  }
	}
function closebtn(){
	document.getElementById('searchdiv').style.display = 'none';
}
$(document).ready(function (){

    connectStomp();
    function connectStomp (){
        StompStatus = true;
        var sock = new SockJS("/stompTest");
        var client = Stomp.over(sock);
        socket = client;
        client.connect({}, function () {
			console.log("top STOMP 연결 완료");
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
                    $socketAlert.html(sender + "님이 메세지를 보냈습니다!<input type='button' id='socketMove' value='이동하기' onclick='location.hr'>");
                    setTimeout(function () {
                        $socketAlert.css('display', 'none');
                    }, 6000);

                });
            }



        });

    }
});

/*$('#plz').on('blur',function (){
	$('#searchdiv').attr('style', "display:none;");
});*/


</script>


</head>
<div id="socketAlert" class="alert alert-success" role="alert" style="display: none"></div>

<header>
<c:catch>
<c:choose>
<c:when test="${ empty sessionScope }">

<nav class="navbar navbar-expand-lg navbar-light bg-white sticky" data-offset="500">



        <div class="container">
        <a href="<%=request.getContextPath()%>" class="navbar-brand"><img id="logo1" src="<%=request.getContextPath() %>/resources/img/logo1.jpg" ></a>

        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarContent">

           <!--search바  -->
           <div class="search">
              <input type="text" id="plz" placeholder="어떤 서비스가 필요하세요?" onclick="openCloseToc()" >
              <img id="img1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">

<!--             검색창 -->
								<div data-v-8f67d2d4="" data-v-7563eff3=""
									class="search-suggestion" id="searchdiv">
									<div data-v-8f67d2d4="" class="suggestion-body"
										style="height: calc(43.5625rem);">
										<section data-v-8f67d2d4="" class="popular-recent-section">
											<div data-v-8f67d2d4="" class="tabs" id="__BVID__371">
												<!---->
												<div class="">
													<ul role="tablist" class="nav nav-tabs"
														id="__BVID__371__BV_tab_controls_">
														<!---->
														<li role="presentation" class="nav-item"><a
															role="tab" aria-selected="true" aria-setsize="2"
															aria-posinset="1" href="#" target="_self"
															class="nav-link active"
															id="__BVID__372___BV_tab_button__"
															aria-controls="__BVID__372">인기 키워드</a></li>
														<li role="presentation" class="nav-item"><a
															role="tab" tabindex="-1" aria-selected="false"
															aria-setsize="2" aria-posinset="2" href="#"
															target="_self" class="nav-link"
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
										</section>
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
              <a class="nav-link" href="about.html">고수찾기</a>
            </li>
            <li class="nav-item">
                  <a class="nav-link" href="<%=request.getContextPath() %>/chat/rooms">채팅</a>
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
              <input type="text" placeholder="어떤 서비스가 필요하세요?" onclick="openCloseToc()">
              <img id="img1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">

<!--             검색창 -->
								<div data-v-8f67d2d4="" data-v-7563eff3=""
									class="search-suggestion" id="searchdiv">
									<div data-v-8f67d2d4="" class="suggestion-body"
										style="height: calc(43.5625rem);">
										<section data-v-8f67d2d4="" class="popular-recent-section">
											<div data-v-8f67d2d4="" class="tabs" id="__BVID__371">
												<!---->
												<div class="">
													<ul role="tablist" class="nav nav-tabs"
														id="__BVID__371__BV_tab_controls_">
														<!---->
														<li role="presentation" class="nav-item"><a
															role="tab" aria-selected="true" aria-setsize="2"
															aria-posinset="1" href="#" target="_self"
															class="nav-link active"
															id="__BVID__372___BV_tab_button__"
															aria-controls="__BVID__372">인기 키워드</a></li>
														<li role="presentation" class="nav-item"><a
															role="tab" tabindex="-1" aria-selected="false"
															aria-setsize="2" aria-posinset="2" href="#"
															target="_self" class="nav-link"
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
										</section>
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
                <a class="nav-link" href="<%=request.getContextPath() %>/pro/info">마이페이지</a>
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
              <input type="text" placeholder="어떤 서비스가 필요하세요?" onclick="openCloseToc()">
              <img id="img1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">

<!--             검색창 -->
								<div data-v-8f67d2d4="" data-v-7563eff3=""
									class="search-suggestion" id="searchdiv">
									<div data-v-8f67d2d4="" class="suggestion-body"
										style="height: calc(43.5625rem);">
										<section data-v-8f67d2d4="" class="popular-recent-section">
											<div data-v-8f67d2d4="" class="tabs" id="__BVID__371">
												<!---->
												<div class="">
													<ul role="tablist" class="nav nav-tabs"
														id="__BVID__371__BV_tab_controls_">
														<!---->
														<li role="presentation" class="nav-item"><a
															role="tab" aria-selected="true" aria-setsize="2"
															aria-posinset="1" href="#" target="_self"
															class="nav-link active"
															id="__BVID__372___BV_tab_button__"
															aria-controls="__BVID__372">인기 키워드</a></li>
														<li role="presentation" class="nav-item"><a
															role="tab" tabindex="-1" aria-selected="false"
															aria-setsize="2" aria-posinset="2" href="#"
															target="_self" class="nav-link"
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
										</section>
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
</header>


<script src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/google-maps.js"></script>

<script src="<%=request.getContextPath() %>/resources/vendor/wow/wow.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/theme.js"></script>




</body>
</html>