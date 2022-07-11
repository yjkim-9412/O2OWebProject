<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko-KR">
<head>

<style type="text/css">
img {
    width: 70px;
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

#sec{
border-radius: .625rem;
    box-shadow: 0 0 1.25rem 0 rgb(0 0 0 / 10%);
    padding-bottom: 35px;
}

</style> 
</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>

<jsp:include page="../inc/top.jsp"></jsp:include>
  <div class="page-section">
  
    <div class="container">
      <div class="row">
		
<!-- 아이콘 카테고리 -->
	
<section >
        <div class="container" id="sec" >
        <h5 class="icontext" style="text-align: center;">활동 분야를 선택하세요</h5>
            <div class="row" id="row1">
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath()%>/pro/lesson';">
                        <div class="card-body">
                            <img src="../resources/img/icon/lesson.png">                            
                            <h2 class="card-title display-1" style="font-size:2.5vmin;">레슨</h2>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath()%>/pro/health';">
                        <div class="card-body">
                            <img src="../resources/img/icon/health.png">                            
                            <h2 class="card-title display-1" style="font-size:2.5vmin;">건강</h2>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath()%>/pro/event';">
                        <div class="card-body">
                            <img src="../resources/img/icon/event.png">
                            <h2 class="card-title display-1" style="font-size:2.5vmin;">이벤트</h2>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 p-2">
                    <div class="card p-3 text-center border-0" style=" cursor: pointer;" onclick="location.href='<%=request.getContextPath()%>/pro/clean';">
                        <div class="card-body">
                            <img src="../resources/img/icon/cleaning.png">
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
<jsp:include page="../inc/bottom.jsp"></jsp:include>
</body>
</html>