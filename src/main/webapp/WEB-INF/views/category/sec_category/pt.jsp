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
  
<style type="text/css">
  
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
  font-size: 13px;
    margin: 5px;
}
input:focus{
	outline:1px solid #FEEBB6;
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

/* wizard form */
body {
  background-color: #ffffff;
  color: #444444;
  font-family: 'Roboto', sans-serif;
  font-size: 16px;
  font-weight: 300;
  margin: 0;
  padding: 0;
}

.wizard-content-left h1 {
  color: #ffffff;
  font-size: 38px;
  font-weight: 600;
  padding: 12px 20px;
  text-align: center;
}

.form-wizard {
  color: #888888;
  padding: 30px;
  border: 1px solid #f3f3f3;
  border-radius: 10px;
  margin-bottom: 50px;
}
.form-wizard .wizard-form-radio {
  display: inline-block;
  margin-left: 5px;
  position: relative;
  color: black;
  font-weight: 500;
  font-size: 16px;
}
.form-wizard .wizard-form-radio input[type="radio"] {
  -webkit-appearance: none;
  -moz-appearance: none;
  -ms-appearance: none;
  -o-appearance: none;
  appearance: none;
  background-color: #dddddd;
  height: 20px;
  width: 20px;
  display: inline-block;
  vertical-align: middle;
  border-radius: 50%;
  position: relative;
  cursor: pointer;
}
.form-wizard .wizard-form-radio input[type="radio"]:focus {
  outline: 0;
}
.form-wizard .wizard-form-radio input[type="radio"]:checked {
  background-color: #FEEBB6;
}
.form-wizard .wizard-form-radio input[type="radio"]:checked::before {
  content: "";
  position: absolute;
  width: 10px;
  height: 10px;
  display: inline-block;
  background-color: #ffffff;
  border-radius: 50%;
  left: 0.8px;
  right: 0;
  margin: 0 auto;
  top: 4px;
}
.form-wizard .wizard-form-radio input[type="radio"]:checked::after {
  content: "";
  display: inline-block;
  webkit-animation: click-radio-wave 0.65s;
  -moz-animation: click-radio-wave 0.65s;
  animation: click-radio-wave 0.65s;
  background: #000000;
  content: '';
  display: block;
  position: relative;
  z-index: 100;
  border-radius: 50%;
}
.form-wizard .wizard-form-radio input[type="radio"] ~ label {
  padding-left: 10px;
  cursor: pointer;
}
.form-wizard .form-wizard-header {
  text-align: center;
}
.form-wizard .form-wizard-next-btn, .form-wizard .form-wizard-previous-btn, .form-wizard .form-wizard-submit {
  background-color: #FFCD4A;
  color: #ffffff;
  display: inline-block;
  min-width: 100px;
  min-width: 120px;
  padding: 10px;
  text-align: center;
  margin: 40px;
  margin-right: 0px;
  margin-left: 0px;
}

.submit22 {
  background-color: #FFCD4A;
  color: #ffffff;
  display: inline-block;
  min-width: 100px;
  min-width: 120px;
  padding: 10px;
  text-align: center;
  margin: 40px;
  margin-right: 0px;
  margin-left: 0px;
}

.form-wizard .form-wizard-next-btn:hover, .form-wizard .form-wizard-next-btn:focus, .form-wizard .form-wizard-previous-btn:hover, .form-wizard .form-wizard-previous-btn:focus, .form-wizard .form-wizard-submit:hover, .form-wizard .form-wizard-submit:focus {
  color: #ffffff;
  opacity: 0.6;
  text-decoration: none;
}
.form-wizard .wizard-fieldset {
  display: none;
}
.form-wizard .wizard-fieldset.show {
  display: block;
}
.form-wizard .wizard-form-error {
  display: none;
  background-color: #d70b0b;
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  height: 2px;
  width: 100%;
}
.form-wizard .form-wizard-previous-btn {
  background-color: #FFCD4A;
}
.form-wizard .form-control {
  font-weight: 300;
  height: auto !important;
  padding: 15px;
  color: #888888;
  background-color: #f1f1f1;
  border: none;
  margin-bottom: 20px;
}
.form-wizard .form-control:focus {
  box-shadow: none;
}
.form-wizard .form-group {
  position: relative;
  padding: 20px;
  border: 0.0625rem solid #f2f2f2;
}
.form-wizard .wizard-form-text-label {
  position: absolute;
  left: 10px;
  top: 16px;
  transition: 0.2s linear all;
}
.form-wizard .focus-input .wizard-form-text-label {
  color: #d65470;
  top: -18px;
  transition: 0.2s linear all;
  font-size: 12px;
}
.form-wizard .form-wizard-steps {
  margin: 30px 0;
  
}
.form-wizard .form-wizard-steps li {
  width: 16%;			/*숫자 사이 간격 조절*/
  float: left;
  position: relative;
  
}
.form-wizard .form-wizard-steps li::after {
  background-color: #f3f3f3;
  content: "";
  height: 5px;
  left: 0;
  position: absolute;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
  width: 100%;
  border-bottom: 1px solid #dddddd;
  border-top: 1px solid #dddddd;
}
.form-wizard .form-wizard-steps li span {
  background-color: #dddddd;
  border-radius: 50%;
  display: inline-block;
  height: 30px;
  line-height: 30px;
  position: relative;
  text-align: center;
  width: 30px;
  z-index: 1;
}
.form-wizard .form-wizard-steps li:last-child::after {
  width: 50%;
}
.form-wizard .form-wizard-steps li.active span, .form-wizard .form-wizard-steps li.activated span {
  background-color: #FFCD4A;
  color: #ffffff;
}
.form-wizard .form-wizard-steps li.active::after, .form-wizard .form-wizard-steps li.activated::after {
  background-color: #FFCD4A;
  left: 50%;
  width: 50%;
  border-color: #f3f3f3;
}
.form-wizard .form-wizard-steps li.activated::after {
  width: 100%;
  border-color: #f3f3f3;
}
.form-wizard .form-wizard-steps li:last-child::after {
  left: 0;
}
.form-wizard .wizard-password-eye {
  position: absolute;
  right: 32px;
  top: 50%;
  transform: translateY(-50%);
  cursor: pointer;
}
@keyframes click-radio-wave {
  0% {
    width: 25px;
    height: 25px;
    opacity: 0.35;
    position: relative;
  }
  100% {
    width: 8px;
    height: 60px;
    margin-left: -15px;
    margin-top: -15px;
    opacity: 0.0;
  }
}
@media screen and (max-width: 767px) {
  .wizard-content-left {
    height: auto;
  }
}

h5 {
	text-align: center;
	margin-top: 20px;
	margin-bottom: 70px;
	color: black;
	font-size: 25px;
	font-weight: 600;
}

/* wizard form 끝 */

.title {
	margin: 50px;
}

.sub-title {
	margin-top: 20px;
	margin-bottom: 100px;
	font-size: 20px;
	font-weight: bold;
	text-align: center;
}

a {
	text-decoration: none;
}

/* select box */
select.form-control {
  appearance: none;
  line-height: normal;
  position: relative;
  background-image: url(data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgNDA1LjQ1NiA0MDUuNDU2IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0MDUuNDU2IDQwNS40NTY7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iMTZweCIgaGVpZ2h0PSIxNnB4Ij4NCjxnPg0KCTxwYXRoIGQ9Ik03NC4xMzQsNjQuMTQ3Yy00Ljk4NSwwLjA3OC05LjkxMSwyLjE2My0xMy40MzgsNS42ODhsLTU1LDU1QzIuMDk2LDEyOC40MzIsMCwxMzMuNDkyLDAsMTM4LjU4MyAgIHMyLjA5NiwxMC4xNTEsNS42OTcsMTMuNzVsMTgzLjI4MSwxODMuMjgxYzMuNTk5LDMuNjAxLDguNjU5LDUuNjk3LDEzLjc1LDUuNjk3czEwLjE1MS0yLjA5NiwxMy43NS01LjY5N2wxODMuMjgxLTE4My4yODEgICBjMy42MDEtMy41OTksNS42OTctOC42NTksNS42OTctMTMuNzVzLTIuMDk2LTEwLjE1MS01LjY5Ny0xMy43NWwtNTUtNTVjLTMuNTk4LTMuNTkxLTguNjUxLTUuNjgxLTEzLjczNC01LjY4MSAgIGMtNS4wODMsMC0xMC4xMzYsMi4wOS0xMy43MzQsNS42ODFMMjAyLjcyOCwxODQuMzk3TDg4LjE2Niw2OS44MzNDODQuNDk5LDY2LjE2OSw3OS4zMTgsNjQuMDcsNzQuMTM0LDY0LjE0N0w3NC4xMzQsNjQuMTQ3eiIgZmlsbD0iIzk2OTY5NiIvPg0KPC9nPg0KPC9zdmc+DQo=);
  background-position: right 10px top 50%;
  background-repeat: no-repeat;
}

#wrap {
display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative;
}

</style>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }

    // function callFunction() {
    //     alert("확인!!");
    //
    //     if($("input[name=#radio1]:radio:checked").length == 0){
    //
    //         alert("버튼을 선택해 주세요.");
    //
    //         return;
    //
    //     }
    // }



</script>
  
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
        <a href="<%=request.getContextPath() %>/" class="navbar-brand"><img id="logo1" src="<%=request.getContextPath() %>/resources/img/logo1.jpg" ></a>

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
          <a href="<%=request.getContextPath() %>/" class="navbar-brand"><img id="logo1" src="<%=request.getContextPath() %>/resources/img/logo1.jpg" ></a>

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
  </header>

  <input type="hidden" name="id" value="${sessionScope.id }">
  <input type="hidden" name="email" value="${memberDTO.email }">
  <input type="hidden" name="password" value="${memberDTO.password }">
  

  <section class="form-contents">
    <div class="container">
    <div class="title">
    	<h2><b>${questions.get(0).service_name } / 레슨</b></h2>
    </div>
<section class="wizard-section" style="width: 600px; height:800px; margin: 0 auto;">
<div class="form-wizard">
          <form action="<%=request.getContextPath() %>/category/result5" method="get" role="form" id="survey">
            <div class="form-wizard-header">
             <ul class="list-unstyled form-wizard-steps clearfix">
                <li class="active"><span>1</span></li>
             <c:forEach var="i" begin="2" end="${questions.size()}" step="1">
             	<li><span>${i }</span></li>
             </c:forEach>
             </ul>
            </div>
            
            <!-- 문항1 -->
            <fieldset class="wizard-fieldset show">
              <h5>${questions.get(0).ques_contents }</h5>
            <input type="hidden" name="ques0" value="${questions.get(0).ques_id }">
			<c:forEach var="answers" items="${answers.get(0) }">
   				<div class="form-group">
                <div class="wizard-form-radio">
                  <input name="ans0" id="radio1" type="radio" value="${answers }">
                  <label for="radio2">${answers}</label>
                </div>
              </div>
                </c:forEach>
                <div id="div1"></div>
                <a href="javascript:;" class="form-wizard-next-btn float-right" id="btn-next" onclick="callFunction();">Next</a>
            </fieldset> 
        
        <!-- 문항2 -->
       	<fieldset class="wizard-fieldset">
              <h5>${questions.get(1).ques_contents }</h5>
              <input type="hidden" name="ques1" value="${questions.get(1).ques_id }">
               <c:forEach var="answers" items="${answers.get(1) }">
   				<div class="form-group">
                <div class="wizard-form-radio">
                  <input name="ans1" id="radio2" type="radio" value="${answers }">
                  <label for="radio2">${answers}</label>
                </div>
              </div>
                </c:forEach>
                <a href="javascript:;" class="form-wizard-next-btn float-right">Next</a>
                <a href="javascript:;" class="form-wizard-previous-btn float-left">Prev</a>
        </fieldset> 
        
        <!-- 문항3 -->
       	<fieldset class="wizard-fieldset">
              <h5>${questions.get(2).ques_contents }</h5>
              <input type="hidden" name="ques2" value="${questions.get(2).ques_id }">
               <c:forEach var="answers" items="${answers.get(2) }">
   				<div class="form-group">
                <div class="wizard-form-radio">
                  <input name="ans2" id="radio3" type="radio" value="${answers }">
                  <label for="radio2">${answers}</label>
                </div>
              </div>
                </c:forEach>
                <a href="javascript:;" class="form-wizard-next-btn float-right">Next</a>
                <a href="javascript:;" class="form-wizard-previous-btn float-left">Prev</a>
        </fieldset>
        
        <!-- 문항4 -->
       	<fieldset class="wizard-fieldset">
              <h5>${questions.get(3).ques_contents }</h5>
              <input type="hidden" name="ques3" value="${questions.get(3).ques_id }">
               <c:forEach var="answers" items="${answers.get(3) }">
   				<div class="form-group">
                <div class="wizard-form-radio">
                  <input name="ans3" id="radio4" type="radio" value="${answers }">
                  <label for="radio2">${answers}</label>
                </div>
              </div>
                </c:forEach>
                <a href="javascript:;" class="form-wizard-next-btn float-right">Next</a>
                <a href="javascript:;" class="form-wizard-previous-btn float-left">Prev</a>
        </fieldset> 
        
        <!-- 문항5 -->
       	<fieldset class="wizard-fieldset">
              <h5>${questions.get(4).ques_contents }</h5>
                <input type="text" id="sample4_postcode" placeholder="우편번호" style="width: 200px;">
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="width: 200px;"><br>
				<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
				<input type="text" id="sample4_jibunAddress" placeholder="지번주소" name ="jibunAddress">
				<span id="guide" style="color:#999;display:none"></span>
				<input type="text" id="sample4_detailAddress" placeholder="상세주소" name = "addressdetail">
        <a href="javascript:;" class="form-wizard-next-btn float-right">Next</a>
        <a href="javascript:;" class="form-wizard-previous-btn float-left">Prev</a>
        </fieldset> 



        
        
        <!-- 문항6 -->
       	<fieldset class="wizard-fieldset">
              <h5>${questions.get(5).ques_contents }</h5>
              <input type="hidden" name="ques4" value="${questions.get(5).ques_id }">
               <c:forEach var="answers" items="${answers.get(5) }">
   				<div class="form-group">
                <div class="wizard-form-radio">
                  <input name="ans4" id="radio5" type="radio" value="${answers }">
                  <label for="radio2">${answers}</label>
                </div>
              </div>
                </c:forEach>
                <input type="submit" class="form-wizard-submit" value="Submit" style="width: 80px; height: 45px; float: right; border: white; border-radius: 0px; font-size: 16px;">
                <a href="javascript:;" class="form-wizard-previous-btn float-left">Prev</a>
        </fieldset> 
          </form>
 	</div>
</section>
  </div>
</section>  
  

  
  
  
  
  <!-- 푸터 -->

  <footer class="page-footer bg-image" style="background-image: url(<%=request.getContextPath() %>/resources/img/footer1.jpg);">
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

<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
jQuery(document).ready(function() {
	// click on next button
	jQuery('.form-wizard-next-btn').click(function() {
		var parentFieldset = jQuery(this).parents('.wizard-fieldset');
		var currentActiveStep = jQuery(this).parents('.form-wizard').find('.form-wizard-steps .active');
		var next = jQuery(this);
		var nextWizardStep = true;
		parentFieldset.find('.wizard-required').each(function(){
			var thisValue = jQuery(this).val();

			if( thisValue == "") {
				jQuery(this).siblings(".wizard-form-error").slideDown();
				nextWizardStep = false;
			}
			else {
				jQuery(this).siblings(".wizard-form-error").slideUp();
			}
		});
		if( nextWizardStep) {
			next.parents('.wizard-fieldset').removeClass("show","400");
			currentActiveStep.removeClass('active').addClass('activated').next().addClass('active',"400");
			next.parents('.wizard-fieldset').next('.wizard-fieldset').addClass("show","400");
			jQuery(document).find('.wizard-fieldset').each(function(){
				if(jQuery(this).hasClass('show')){
					var formAtrr = jQuery(this).attr('data-tab-content');
					jQuery(document).find('.form-wizard-steps .form-wizard-step-item').each(function(){
						if(jQuery(this).attr('data-attr') == formAtrr){
							jQuery(this).addClass('active');
							var innerWidth = jQuery(this).innerWidth();
							var position = jQuery(this).position();
							jQuery(document).find('.form-wizard-step-move').css({"left": position.left, "width": innerWidth});
						}else{
							jQuery(this).removeClass('active');
						}
					});
				}
			});
		}
	});
	//click on previous button
	jQuery('.form-wizard-previous-btn').click(function() {
		var counter = parseInt(jQuery(".wizard-counter").text());;
		var prev =jQuery(this);
		var currentActiveStep = jQuery(this).parents('.form-wizard').find('.form-wizard-steps .active');
		prev.parents('.wizard-fieldset').removeClass("show","400");
		prev.parents('.wizard-fieldset').prev('.wizard-fieldset').addClass("show","400");
		currentActiveStep.removeClass('active').prev().removeClass('activated').addClass('active',"400");
		jQuery(document).find('.wizard-fieldset').each(function(){
			if(jQuery(this).hasClass('show')){
				var formAtrr = jQuery(this).attr('data-tab-content');
				jQuery(document).find('.form-wizard-steps .form-wizard-step-item').each(function(){
					if(jQuery(this).attr('data-attr') == formAtrr){
						jQuery(this).addClass('active');
						var innerWidth = jQuery(this).innerWidth();
						var position = jQuery(this).position();
						jQuery(document).find('.form-wizard-step-move').css({"left": position.left, "width": innerWidth});
					}else{
						jQuery(this).removeClass('active');
					}
				});
			}
		});
	});
	//click on form submit button
	jQuery(document).on("click",".form-wizard .form-wizard-submit" , function(){
		var parentFieldset = jQuery(this).parents('.wizard-fieldset');
		var currentActiveStep = jQuery(this).parents('.form-wizard').find('.form-wizard-steps .active');
		parentFieldset.find('.wizard-required').each(function() {
			var thisValue = jQuery(this).val();
			if( thisValue == "" ) {
				jQuery(this).siblings(".wizard-form-error").slideDown();
			}
			else {
				jQuery(this).siblings(".wizard-form-error").slideUp();
			}
		});
	});
	// focus on input field check empty or not
	jQuery(".form-control").on('focus', function(){
		var tmpThis = jQuery(this).val();
		if(tmpThis == '' ) {
			jQuery(this).parent().addClass("focus-input");
		}
		else if(tmpThis !='' ){
			jQuery(this).parent().addClass("focus-input");
		}
	}).on('blur', function(){
		var tmpThis = jQuery(this).val();
		if(tmpThis == '' ) {
			jQuery(this).parent().removeClass("focus-input");
			jQuery(this).siblings('.wizard-form-error').slideDown("3000");
		}
		else if(tmpThis !='' ){
			jQuery(this).parent().addClass("focus-input");
			jQuery(this).siblings('.wizard-form-error').slideUp("3000");
		}
	});
});

</script>

 
<script src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/google-maps.js"></script>

<script src="<%=request.getContextPath() %>/resources/vendor/wow/wow.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/theme.js"></script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIA_zqjFMsJM_sxP9-6Pde5vVCTyJmUHM&callback=initMap"></script>

</body>
</html>

