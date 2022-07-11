<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<title>star.jsp</title>

<style type="text/css">
.star-container {
  display: flex;
  width: 350px;
  flex-direction: row-reverse;
}

.star {
}

.star:before {
  content: "\f005";
  font-family: fontAwesome;
  font-size: 60px;
  position: relative;
  display: block;
  color: #aaa;
}

.star:after {
  content: "\f005";
  font-family: fontAwesome;
  position: absolute;
  top: 7px;
  font-size: 60px;
  color: #FFCD4A;
  opacity: 0;
}
.star:hover:after,
.star:hover ~ .star:after,
.star.star__checked:after,
.star.star__checked ~ .star:after{
  opacity: 1;
}
.rating{
  position: relative;
  left: 360px;
  bottom: 42px;
  font-size: 20px;
  color: #FFCD4A;
}
.reviewtext{
  float: left;
  width: 75%;
  margin-top: 6px;
}
#comment {
    width: 70%;
    height: 150px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #D3D3D3;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
    position: relative;
    bottom: 50px;
    outline-color: #FFCD4A;
}
input[type=submit] {
  background-color: #FFCD4A;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
  position: relative;
  bottom: 40px;
  right: 360px;
}
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

#star1{
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
.comment1{
	position: relative;
    
}
.comment2{
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
}
</style>

</head>
<body>
<form action="${pageContext.request.contextPath}/reviews/insertPro" method="post">
		<div class="star-container">
		<div class="star" value="5" name="rating" id="rating"></div>
		<div class="star" value="4" name="rating" id="rating"></div>
		<div class="star" value="3" name="rating" id="rating"></div>
		<div class="star" value="2" name="rating" id="rating"></div>
		<div class="star" value="1" name="rating" id="rating"></div>
	</div>
	<h1 class="rating">0/5</h1>
 <div>
 
		<textarea class="col-auto form-control"  id="comment" name="comment"
				  placeholder="리뷰를 작성해주세요."></textarea>
	</div>
<input type="submit" value="리뷰작성">
<input type="hidden" id="pro_id" name="pro_id">
<input type="hidden" id="account_id" name="account_id">
</form>

<!-- 출력부분 -->
<div>
<h2>리뷰</h2>
<div class="reviewlist">
<div class="avg">4.5</div>
<div class="ratingul">
<ul class="ulstar">
<li><img  id="star1" src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt="Star Icon"></li>
<li><img  id="star1" src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt="Star Icon"></li>
<li><img  id="star1" src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt="Star Icon"></li>
<li><img  id="star1" src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt="Star Icon"></li>
<li><img  id="star1" src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt="Star Icon"></li>
</ul>
<div class="reviewdata">10개 리뷰</div>
</div>
</div>
</div>

<div>
<div class="review1">
<div class="detail">
<ul class="box">
<li>
	<span class="id1">id값</span>
	<ul class="ulstar2">
	<li><img id="star2" src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt="Star Icon"></li>
	<li><img id="star2" src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt="Star Icon"></li>
	<li><img id="star2" src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt="Star Icon"></li>
	<li><img id="star2" src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt="Star Icon"></li>
	<li><img id="star2" src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg" alt="Star Icon"></li>
	</ul>
</li>
</ul>
</div>
<span class="date">2022.07.08</span>
</div>
</div>
<div class="commentbox">
<div class="comment1">
<div class="comment2">
<p class="comment">정말 좋았어요 최고</p>
</div>
</div>
</div>

<!-- 	<script src="app.js"></script> -->
	<script src="<%=request.getContextPath() %>/resources/js/star.js"></script>
</body>
</html>