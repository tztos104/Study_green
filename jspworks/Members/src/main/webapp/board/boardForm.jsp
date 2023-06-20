<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link rel="stylesheet" href="../resources/css/style.css">
</head>
<body>
	<c:if test="${empty sessionId}">
		<script >
			alert("로그인을 해주세요")
			location.href = "/loginForm.do";
		</script>
	
	</c:if>

	<jsp:include page="../header.jsp"/> <!-- 해더 삽입 -->
	<div id = "container">
		<section id="board_reg">
			<h3>글쓰기</h3>
			<form action="addBoard.do" method="post">
			<table>
				<tbody>
					<tr>					
						<td>
							<input type="text" name="title" placeholder="글제목" required> 
						</td>
					</tr>
					<tr>
						<td>
							<textarea rows="8" cols="100" name="content" placeholder="글내용"></textarea>
						</td>
					</tr>
					<tr>
						<td>
					 		<input type="submit" value="글쓰기">
                			<input type="reset" value="취소">
						</td>
					</tr>
				</tbody>
			
			</table>
			
			    
               
           
           
           
           
			</form>
		
		
		</section>
	
	
	</div>

</body>
<jsp:include page="../footer.jsp"/> <!-- 푸더 삽입 -->
</html>