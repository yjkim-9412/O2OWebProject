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
  
<style type="text/css">
  
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
}

table td {
  width: 350px;
  height: 200px;
  padding: 5px -9px;
}

.page-footer .bg-image {
 	width: 1250px;
 	height: 390px;
}

/* 카드*/

.request-card {
    padding: 1rem;
    border: 0.0625rem solid #e1e1e1;
    border-radius: 4px;
    height: 15.5rem;
    display: flex;
    flex-direction: column;
    width: 350px;
}

.request-card-header {
	color: #323232;
    margin-bottom: 0;
    font-size: 20px;
    font-weight: 700;
}

.request-card-body {
    margin-top: 1rem;
}

.btn-update{
	font-weight: 500;
	text-align: center;
    vertical-align: middle;
    font-size: 1rem;
    line-height: 1.5;
    border: 0.0625rem solid transparent;
    border-radius: 0.25rem;
    display: block;
    width: 100%;
    background-color: #FFCD4A;
    margin: -76px 10px 16px 0px;
}

.btn-cancle{
     font-weight: 500;
     text-align: center;
     vertical-align: middle;
     font-size: 1rem;
     line-height: 1.5;
     border: 0.0625rem solid transparent;
     border-radius: 0.25rem;
     display: block;
     width: 100%;
     background-color: #FEEBB6;
     margin: -12px -36px 87px 0px;
     height: 46px;
 }

 
.page-footer {
width: 100%; bottom:0;
}
</style>

    <script type="text/javaScript">
    function deleteEstimate(estimate_id){
        if (!confirm("정말로 취소하시겠습니까?")) {
            return;
        } else {
            location.href="<%=request.getContextPath() %>/requests/estimate-delete?estimate_id="+estimate_id;
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


<div class="container">
    <span><h3 style="margin-top: 100px; margin-left: 80px;"><b>받은 견적</b></h3></span>
<table style="border-spacing: 80px; border-collapse: separate;">
<tr>
	<c:forEach var="i" begin="0" end="${getProEstimateDTO.size() - 1}" step="1">
<td style="width: 350px; height: 200px; padding: 5px -9px;">
	<form class="request-card" action="<%=request.getContextPath() %>/requests/estimate"  method="get">
		<div class="request-card-header">${getProEstimateDTO.get(i).get(0).service_name }</div>
		<div class="request-card-body">

            <div style="height: 70px;">${date.get(i)}</div>
            <button type="button" class="btn-cancle" onclick="deleteEstimate(${getProEstimateDTO.get(i).get(0).estimates_id });">취소하기</button>
            <input type="submit" class="btn-update" value="자세히 보기">
		</div>
		  <input type="hidden" name="estimates_id" value="${getProEstimateDTO.get(i).get(0).estimates_id }">
          <input type="hidden" name="service_name" value="${getProEstimateDTO.get(i).get(0).service_name }">
	</form>
</td>
        <c:if test="${(i+1) % 3 == 0}">
        </tr><tr>
        </c:if>
	</c:forEach>
</tr>
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


<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIA_zqjFMsJM_sxP9-6Pde5vVCTyJmUHM&callback=initMap"></script>

</body>
</html>



