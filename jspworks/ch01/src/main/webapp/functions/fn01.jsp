<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> Java 문자열 분리</h2>
	<p> hello, 자바 서버 페이지
	<p><c:set var="text"
				value="${fn:split('hello, java server page!', ' ')}"/>
	<p>text[0] = ${text[0]}
	<p>text[3] = ${text[3]}
	<p>문자열 총 개수 : ${fn:length(text)}
	
	<p>
		<c:forEach var="i" begin="0" end="${fn:length(text)-1}">
		text[${i}] =${text[i]}<br>
		</c:forEach>
		</p>
		
		<h2> Java 문자열 연결</h2>
		<p>${fn:join(text, '-')}
		<c:set var="fruit" value="${fn:split('apple banana berry', ' ') }"/>
		<p>${fn:join(fruit , ':')}
		
		<h2>문자열 검색(매칭)</h2>
		<p>${fn:contains("Have a nice day!", "have")}</p>
		<p>${fn:containsIgnoreCase("Have a nice day!", "have")}</p>
</body>
</html>