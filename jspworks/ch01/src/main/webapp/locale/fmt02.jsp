<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다국어 처리</title>
</head>
<body>
	<h2>자바 서버 페이지</h2>
	<fmt:setLocale value="${param.language}"/>
	<fmt:setBundle basename="bundle.message"/>
	
	<a href="?language=ko">한국어</a>|<a href="?language=en">영어</a>
	
	 <p> 제 목 : <fmt:message key="title"/>
	 <p> 이 름 : <fmt:message key="username"/>
	 

</body>
</html>