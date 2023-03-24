<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

#container{
padding-top: 30px;
width:100%;
height: 789px;
}
body {font-family: "Lato", sans-serif;}

.content{
 
  font-size: 20px; 
  margin-left: 300px;
 
}
.content label{
  width: 150px;
}
.content input{

  width: 250px;
}
#modBtn{
margin-left: 260px;
background-color: cyan;
border-radius: 30px;
border: none;
}
#delBtn{
margin-left: 10px;
background-color: cyan;
border-radius: 30px;
border: none;
}
.sidebar {
  margin-top: -30px;
  height: 130%;
  width: 15%;
  float: left;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 16px;
}

.sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}
</style>
</head>

<body>

<div id="container">
	<div class="sidebar">
	  <a href="#home"><i class="fa fa-fw fa-home"></i> 내 정보</a>
	  <a href="#services"><i class="fa fa-fw fa-wrench"></i> 예약 내역</a>
	  <% String auth = (String) session.getAttribute("auth"); %>
      <%if(auth.equals("A")){ %>
		<a href="manageHotelList.do"><i class="fa fa-fw fa-envelope"></i> 관리자 화면</a>
      <%}%>
   </div>

	<form id="modifyBtn" action="userModify.do">
	
	<div class="content">
<label  >이메일 </label><input style="background-color: #bac0cfbd;" type="text" name="userEmail" value="${userVO.userEmail}" readonly><br>
<label>비밀번호 </label><input type="text" name="userPassword" value="${userVO.userPassword}"><br>
<label >권한 </label><input style="background-color: #bac0cfbd;" type="text" name="userAuth" value="${userVO.userAuth}" readonly><br>
<label>닉네임</label><input type="text" name="userNickname" value="${userVO.userNickname}"><br>
<label >쿠폰 </label><input style="background-color: #bac0cfbd;" type="text" name="userCoupon" value="${userVO.userCoupon}" readonly><br>
<label >찜목록 </label><input style="background-color: #bac0cfbd;" type="text" name="userLikelist" value="${userVO.userLikelist}" readonly><br>
<button id="modBtn">수정</button> <button id="delBtn">회원 탈퇴</button>	
	
	</div>
	</form>
	
</div>

<script>
console.log('${msg}' + "msg 데이터 입니다");
let msg = '${msg}';
if(msg){
	alert(msg)
}

document.querySelector('#delBtn').addEventListener('click',)

</script>
</body>

</html> 