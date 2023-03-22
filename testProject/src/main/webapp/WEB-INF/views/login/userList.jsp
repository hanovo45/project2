<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table">
	<thead>
                        <tr>
                            <th>이메일</th>
                            <th>비밀번호</th>
                            <th>권한</th>
                            <th>닉네임</th>
                            <th>보유 쿠폰</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>                  
                    <c:forEach var="user" items="${list }">               
                        <tr>
                        <form action="myPageForm.do">
                            <td>${user.userEmail}</td>
                            <td>${user.userPassword}</td>
                            <td>${user.userAuth}</td>
                            <td>${user.userNickname}</td>
                            <td>${user.userCoupon}</td>
                            <td>${user.userLikelist}</td>
                        </tr>
                        </form>
                        </c:forEach>                 
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>