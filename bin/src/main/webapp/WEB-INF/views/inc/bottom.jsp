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


</style> 

</head>
<body>



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

<script src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/google-maps.js"></script>

<script src="<%=request.getContextPath() %>/resources/vendor/wow/wow.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/js/theme.js"></script>




</body>
</html>