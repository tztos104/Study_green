<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<div id="container">
		<section id="memberlist">
	<h3> 회원목록입니다</h3>
	<table id="tbl_list">
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>성별</th>
				<th>가입일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${memberList}" var="member">
			<tr>
				<td><c:out value="${member.memberId}"/></td>
				<td><c:out value="${member.passwd}"/></td>
				<td><c:out value="${member.name}"/></td>
				<td><c:out value="${member.gender}"/></td>
<%-- 				<td><c:out value="${member.joinDate}"/></td> --%>
				<td><f:formatDate value="${member.joinDate}"
						pattern="yyyy-MM-dd a hh:mm:ss"/></td>
				
			</tr>
			</c:forEach>
		</tbody>
	
	</table>
	
	
		
	
		</section>
	</div>
</body>
</html>