<%--
  Created by IntelliJ IDEA.
  User: KyungSubin
  Date: 2022-07-16
  Time: 오전 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/mypage/settings/profile-update" class="contact-form py-5 px-lg-5" style="width: 700px; margin: auto;" method="post" enctype="multipart/form-data">
    <h2 class="text-black"><b>프로필 수정</b></h2>
    <div class="row form-group">
        <div class="col-md-12" style="width: 100%; padding-bottom: 50px; margin-top: 50px;">
            <label class="text-black" style="margin-bottom:5px"><b>프로필</b></label>
            <div class="input-group" data-validate="email">
                <input type="file" class="form-control" name="file" value="${memberDTO.email}" required style="border-radius: 0.25rem;">
                <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
            </div>
        </div>
    </div>
    <div class="button-group" align="right">

        <!-- This is a comment text, these buttons are the default bootstrap buttons with icons in front
             of them. Grab their code and just edit the text as you wish to. * Follow me twitter.com/Impresiun -->

        <button type="button" class="btn-cancle" onclick = "history.back()"><b>취소</b></button>
        <input type="submit" class="btn-update" value="수정 완료">
        <input type="hidden" name="password" value="${memberDTO.password }">
        <input type="hidden" name="id" value="${sessionScope.id }">

    </div>
</form>
</body>
</html>
