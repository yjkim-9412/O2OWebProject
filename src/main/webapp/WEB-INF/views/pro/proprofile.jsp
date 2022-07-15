<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>star.jsp</title>

<style type="text/css">

.reviewlist{
	width: 100%;
    display: inline-block;
	padding-left: 29px;
}

h2{
	font-size: 1.25rem;
    font-weight: 700;
    line-height: 1.5;
    letter-spacing: -.03125rem;
    margin-bottom: 1rem;
    color: #323232;
}
.avg{
	font-size: 2.5rem;
    font-weight: 500;
    line-height: 1.45;
    letter-spacing: -.05rem;
    color: #323232;
    float: left;
    margin-right: 0.9375rem;
}

.ratingul{
	font-size: .875rem;
    line-height: 1.43;
    letter-spacing: -.0125rem;
    color: #737373;
    display: inline-block;
    position: relative;
    top: 0.8125rem;
}

.ulstar{margin-top: 0.625rem; 
    padding: 0;
    margin: 0;
    line-height: 0;
    display: table-row;
     list-style: none;
}

.star1{
	width: 1.25rem;
    height: 1.125rem;
    margin-right: 0.25rem;
   
}

.reviewdata{
	font-size: .875rem;
    line-height: 1.43;
    letter-spacing: -.0125rem;
    color: #737373;
}

.review1{
	width: 100%;
    margin-bottom: 0.5rem;
    display: flex;
    align-items: center;
    
}
.detail{
	display: flex;
    align-items: center;
    max-width: calc(100% - 5rem);
}
.id1{
	overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-weight: 700;
    line-height: 1.5;
    letter-spacing: -.01875rem;
    color: #323232;
    margin-right: 0.375rem;
    display: inline-block;
	position: relative;
	top: 4px;
}
.ulstar2{
	display: inline-block;
    margin-right: 0.375rem;
     list-style: none;
}
img{
	vertical-align: middle;
	    border-style: none;
}
#star2{
	
}
li{
	float: left;
}
.box{
    display: inline-block;
    width: 100%;
    margin-bottom: 0;
    list-style: none;
}
.date{
	font-size: .875rem;
    line-height: 1.43;
    letter-spacing: -.0125rem;
    color: #b5b5b5;
    word-break: keep-all;
    padding-top: 17px;
    padding-left: 10px;
	position: relative;
	bottom: 10px;
}
.commentbox{
	padding: 0.25rem 0 0;
    margin-bottom: 0.75rem;
}
.commentdiv1{
	position: relative;
    
}
.commentdiv2{
	position: relative;
    display: block;
    overflow: hidden;
    text-overflow: ellipsis;
    word-break: break-all;
}
.comment{
	line-height: 1.5;
    letter-spacing: -.01875rem;
    color: #737373;
    padding-left: 40px;
    border:0 solid black;
}
input[type=button] {
	background-color: #FFCD4A;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 9em;
}
.reviewbtndiv{
	padding-left: 15em;
	position: relative;
	top: 49px;
}

.allbox{
	margin-left:40em;
}
/*푸터*/
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
	bottom: 46px;
	display: grid;
}
#footermenu2{
	margin: 0;
	font-size: .875rem;
	line-height: normal;
	letter-spacing: normal;
	color: #737373;
	display: grid;


}
#footermenu3{
	margin: 0;
	font-size: .875rem;
	line-height: normal;
	letter-spacing: normal;
	color: #737373;
	display: grid;
	bottom: 4px;

}
</style>

<script type="text/javascript">

var openWin;

function openChild() {
	

	window.name="proprofile";

	  openWin = window.open("writereviews",
			  "writereviews", "width=570, height=350, resizeble= no, scrollbars=no");

	
}

</script>

</head>
<body>
<header>
	<jsp:include page="../inc/top.jsp"></jsp:include>
</header>

<!-- 출력부분 -->

<div class="allbox">

<div>
<h2>리뷰</h2>
	<div class="reviewbtndiv">
	<c:choose>
		<c:when test="${ empty sessionScope }">
			<input type="hidden" value="리뷰쓰기">
		</c:when>
		<c:otherwise>
			<input type="button" value = "리뷰쓰기" onclick="openChild()"><br>
		</c:otherwise>
	</c:choose>
	</div>
<div class="reviewlist">
<div class="avg">${avg}</div>
<div class="ratingul">
<ul class="ulstar">
	<c:forEach  begin="1" end="${roundavg}">
<li><img  class="star1" src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt="Star Icon"></li>
	</c:forEach>
</ul>
<div class="reviewdata">${count}개 리뷰</div>
</div>
</div>
</div>

<c:forEach var="reviewDTO" items="${reviewList}">
<div>
<div class="review1">
<div class="detail">
<ul class="box">
<li>
	<span class="id1">${reviewDTO.name }</span>

	<ul class="ulstar2">
		<c:forEach  begin="1" end="${reviewDTO.rating}">
	<li><img class="star2" src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt="Star Icon" id="1"></li>
		</c:forEach>
	</ul>

</li>
</ul>
</div>
<span class="date">${reviewDTO.date}</span>
</div>
</div>
<div class="commentbox">
<div class="commentdiv1">
<div class="commentdiv2">
<p class="comment">${reviewDTO.comment}</p>
</div>
</div>
</div>
</c:forEach>
<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
<a href="${pageContext.request.contextPath}/pro/list?pageNum=${pageDTO.startPage-pageDTO.pageBlock }">Prev</a>
</c:if>

<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
	<a href="${pageContext.request.contextPath}/pro/list?pageNum=${i}">${i }</a>
</c:forEach>

<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
<a href="${pageContext.request.contextPath}/pro/list?pageNum=${pageDTO.startPage+pageDTO.pageBlock }">Next</a>
</c:if>

</div>
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
</body>
</html>