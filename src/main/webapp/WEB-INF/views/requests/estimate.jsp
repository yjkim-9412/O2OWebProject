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
  
<style>
  
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


.business-card, .flippable-business-card{
	width:600px;
	height:235px;
	max-width:100%;	
	border-radius:4px;	
	margin:0 auto;
}

.business-card{
	display:flex;
	flex-direction:column;	
	background-color: white;
	color:rgba(0,0,0,.8);	
	box-shadow: 0 3px 6px rgba(0,0,0,0.16);
}

.info{
	display:flex;
	flex-grow:1;
}

.info-bio{
	display:flex;
	flex-grow:1;
	flex-basis:50%;
	flex-direction:column;
	justify-content:space-around;
	padding:15px;
	text-align:center;
}
	
.info-contact{
	padding: 20px 25px;
	display:flex;
	flex-shrink:1;
	flex-direction:column;
	justify-content:space-around;
}	

.profile{
	display:flex;
	flex-basis:150px;
	width:100%;
	padding:25px 25px 0px 25px;		
}
	
.profile-title{
	padding-left:15px;
	display:flex;
	flex-direction:column;
	justify-content:space-around;		
}	

h2{
	font-size:1.4em;
}
			
.profile-image{
	background-image: url(https://images.unsplash.com/photo-1507120878965-54b2d3939100?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&s=57f3676a7820564424855d5e5c6b09e7);
	background-position:center;
	background-size:cover;
	width:120px;
	height:120px;
	border-radius:100%;			
}


.page-footer {
width: 100%; bottom:0;
} 

.cancle {
background-color: white; 
border-color: #FFCD4A; 
color: #FFCD4A; 
width: 142px; 
height: 48px;
padding: 11px 12px;
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

  <script type="text/javaScript">
    function deleteProEstimate(proEstimates_id){
      if (!confirm("정말로 취소하시겠습니까?")) {
        return;
      } else {
        location.href="<%=request.getContextPath() %>/requests/proEstimate-delete?proEstimates_id="+proEstimates_id;
      }
    }
  </script>



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
        <button type="submit" class="btn btn-primary btn chat" style="margin-left: 0px; width: 220px; background-color:#FFCD4A; ">내 요청서 보기</button>
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
<c:forEach var="i" begin="0" end="${proEstimatesDTO.size() - 1}" step="1">
<tr><td>
		<div class="display-item" >
			<div class="business-card">
				<div class="profile">
					<div class="profile-image" onclick="location.href='<%=request.getContextPath() %>/pro/info?num=${proEstimates.pro_id}'"></div>
					<div class="profile-title">
						<h4>${proEstimatesDTO.get(i).pro_name}</h4>
                        <span>${proEstimatesDTO.get(i).pro_email}</span>
						<span>${proEstimatesDTO.get(i).content}</span>
					</div>
				</div>
				<div class="info" style="width: 100%;">
					<div class="info-contact" style="float: left;">
						<span style="color: #737373;">${proAddrList.get(i).city_name} ${proAddrList.get(i).district_name}</span>
						<span>${proEstimatesDTO.get(i).price}원</span>
					</div>
					<div style="margin-left: 135px; margin-top: 18px;">
						<button type="button" class="btn cancle">취소하기</button>
						<button type="button" class="btn chat" onclick="location.href='<%=request.getContextPath() %>/chat/newChat?user_email=${proEstimatesDTO.get(i).pro_email}'">채팅하기</button>
					</div>
				</div>
			</div>
		</div>
  </td></tr>
 </c:forEach>
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



