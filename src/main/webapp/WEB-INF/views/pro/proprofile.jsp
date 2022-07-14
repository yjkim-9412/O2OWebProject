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
<c:choose>
	<c:when test="${ empty sessionScope }">
		<input type="hidden" value="리뷰쓰기">
	</c:when>
	<c:otherwise>
<input type="button" value = "리뷰쓰기" onclick="openChild()"><br>
	</c:otherwise>
</c:choose>
<!-- 출력부분 -->
<div>
<h2>리뷰</h2>
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
	<a href="${pageContext.request.contextPath}/pro/list?pageNum=${i }">${i }</a>
</c:forEach>

<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
<a href="${pageContext.request.contextPath}/pro/list?pageNum=${pageDTO.startPage+pageDTO.pageBlock }">Next</a>
</c:if>


</body>
</html>