<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
</style>
</head>
<body>
<div id="container">
	<form class ="findpw" name="idfindscreen" method = "POST">
			<div class = "search-title">
				<h3>비밀번호 찾기</h3>
			</div>
		<section class = "form-search">
			<div class = "find-mail">
				<label>이메일</label>
				<input type="hidden" name="hiddenumail" value="search">
				<input type="email" name="umail" class = "btn-name" placeholder = "등록한 이메일" required>
			<br>
			</div>
			<div class = "find-ninkname">
				<label>닉네임</label>
				<input type="text" name="uname" class = "btn-phone" placeholder = "등록한 닉네임" required>
			</div>
			<br>
	</section>
	<div class ="btnSearch">
		<input type="button" name="enter" value="찾기"  onClick="pw_search()">
		<input type="button" name="cancle" value="취소" onClick="history.back()">
 	</div>
 </form>
</div>
 <script>

 let msg = '${msg}';
 if(msg){
 	alert(msg);
 }
 
 
 function pw_search() { 
	 
	 	
	 	var frm = document.idfindscreen;
		
	 	
	 	if (frm.umail.value.length <= 1) {
		  alert("메일을 입력해주세요");
		  return;
		 }

		 if (frm.uname.value.length < 1) {
			  alert("닉네임을 입력해주세요");
			  return;
		 }

	 frm.method = "post";
	 frm.action = "findPw.do"; //넘어간화면
	 frm.submit();  
	 }
 
 
 
 </script>
 
</body>
</html>