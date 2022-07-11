<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<title>reviews/writereviews2</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"   ></script>

	<style type="text/css">
	#myform fieldset{
		display: inline-block;
		direction: rtl;
		border:0;
	}
	#myform fieldset legend{
		text-align: right;
	}
	#myform input[type=radio]{
		display: none;
	}
	#myform label{
		font-size: 3em;
		color: transparent;
		text-shadow: 0 0 0 #f0f0f0;
	}
	#myform label:hover{
		text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#myform label:hover ~ label{
		text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#myform input[type=radio]:checked ~ label{
		text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#reviewContents {
		width: 100%;
		height: 150px;
		padding: 10px;
		box-sizing: border-box;
		border: solid 1.5px #FFCD4A;
		border-radius: 5px;
		font-size: 16px;
		resize: none;
	}
input[type=button] {
  background-color: #FFCD4A;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;


  
}


</style>

<script type="text/javascript">
	function setInsertrating() {
		opener.document.getElementById("star2").value=document.getElementById("star").value
		
	}
	function setInsertcomment() {
		opener.document.getElementById("comment2").value=document.getElementById("comment1").value
	}
</script>
</head>
<body>




<form id="myform">
	<fieldset>
		<span class="text-bold">별점을 선택해주세요</span>
		<input type="radio" name="rating" value="5" id="rate1"><label
			for="rate1">★</label>
		<input type="radio" name="rating" value="4" id="rate2"><label
			for="rate2">★</label>
		<input type="radio" name="rating" value="3" id="rate3"><label
			for="rate3">★</label>
		<input type="radio" name="rating" value="2" id="rate4"><label
			for="rate4">★</label>
		<input type="radio" name="rating" value="1" id="rate5"><label
			for="rate5">★</label>
	</fieldset>
	<div>
		<textarea class="col-auto form-control" type="text" id="reviewContents" name="comment"
				  placeholder="리뷰를 작성해주세요."></textarea>
	</div>
	<input type="button" value="리뷰작성" id="submit">
<input type="hidden" id="pro_id" name="pro_id" value="1">
<input type="hidden" id="account_id" name="account_id" value="3">
</form>

	<script>
		$(document).ready(function(){
			// id="dup" 클릭했을때  dupcheck2.jsp 페이지에 id="id" val() 값을 가지고 가서
			// 아이디 중복체크한 출력결과를 가져와서 id="dupdiv"에 출력
			$('#submit').click(function(){
//         alert("클릭");
				$.ajax({
					url:'${pageContext.request.contextPath}/pro/insertPro',
					data:{'account_id':$('#account_id').val(),
					      'pro_id':$('#pro_id').val(),
						  'comment':$('#reviewContents').val(),
						  'rating':$('input:radio[name=rating]:checked').val()
						  },
					success:function(rdata){

						window.opener.location.reload();
						window.close();

					}
				});
			});
		});


	</script>
</body>
</html>