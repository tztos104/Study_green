<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>String userId = request.getParameter("userid");
	String userPw = request.getParameter("passwd");
</head>
<body>
	<form action="cookieProcess.jsp" method="post">
		<p> 
			<lebel for="userid">아이디 </lebel>
			<input type="text" id="userid" name="userid">
		</p>
		<p> 
			<lebel for="passwd">비밀번호</lebel>
			<input type="passwd" id="passwd" name="passwd">
		</p>
		<p><input type="submit" value="로그인"> </p>
	</form>
</body>
</html>