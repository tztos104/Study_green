<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>hello</title>
<style>
	#content{width: 90%; margin: 20px auto; text-allign: center;}
</style>
<script>
	//������ �ð�
	setInterval(myWatch, 1000);
	function myWatch() {
		let date = new Date();
		let now = date.toLocaleTimeString();
		document.getElementById("demo").innerHTML = now;
		
	}
		
</script>

</head>
<body>
	<div id="content">
	<h1> ó�� ����� ��������</h1>
	<h3> ���� ��¥�� �ð��� <%= LocalDateTime.now() %></h3>
	<% 
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter datetime = DateTimeFormatter.ofPattern("yyyy-MM-dd a hh:mm:ss");
		String current_time = now.format(datetime);
		
		//5���� ���ΰ�ħ
		//response.setIntHeader("Refresh", 5);
		
	%>
	<h3> ���� ��¥�� �ð��� <%= current_time %></h3>
	<img src="../resources/images/time.jpg" alt="�սð�">
	<p id ="demo"></p>
	</div>
</body>
</html>