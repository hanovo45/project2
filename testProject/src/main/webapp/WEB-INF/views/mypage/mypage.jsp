<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

#container{
width:100%;
height: 790px;
}
body {font-family: "Lato", sans-serif;}

.table{
  width: 85%;
  max-width: 100%;
  margin-bottom: 20px;
}

.sidebar {
  height: 100%;
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
  <a href="#clients"><i class="fa fa-fw fa-user"></i> 1:1 문의</a>
  <a href="manageHotellist.do"><i class="fa fa-fw fa-envelope"></i> 관리자 화면</a>


<div class="main">
  <h2>Sidebar with Icons</h2>
  <p>This side navigation is of full height (100%) and always shown.</p>
  <p>Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
  <p>Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
</div>
</div>

<table class="table">
                    <tbody>
                        <tr>
                            <td>이메일</td>
                            <td><input type="text" name="userEmail" value="${userVO.userEmail }"></td>
                        </tr>
                        <tr>
                            <td>비밀번호</td>
                            <td><input type="text" name="userPassword" value="${userVO.userPassword }"></td>
                        </tr>
                        <tr>
                            <td>권한</td>
                            <td><input type="text" name="userAuth" value="${userVO.userAuth }"></td>
                        </tr>
                        <tr>
                            <td>닉네임</td>
                            <td><input type="text" name="userNickname" value="${userVO.userNickname }"></td>
                        </tr>
                        <tr>
                            <td>보유 쿠폰</td>
                            <td><input type="text" name="userCoupon" value="${userVO.userCoupon }"></td>
                        </tr>
                        <tr>
                            <td>좋아요 리스트</td>
                            <td><input type="text" name="userLikelist" value="${userVO.userLikelist }원"></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <input class="btn btn-primary" type="button" value="수정">
                                <input class="btn btn-warning" type="button" value="삭제"></td>
                        </tr>
                    </tbody>
                </table>
                </div>
</body>
</html> 