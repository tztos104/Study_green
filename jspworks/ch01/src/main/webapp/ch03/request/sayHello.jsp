<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<% 
   //쿼리 스트링 연습 
   int cnt = 0 ;
   if(request.getParameter("cnt") != null ){//객체이므로 null로 비교
	   cnt = Integer.parseInt(request.getParameter("cnt"));
   }

   for(int i=1; i <= cnt; i++ ){
	   out.println("안녕~ Jsp<br>");
   }
       
%>
<h3> 주소 표시줄에 ?cnt=숫자로 입력해 주세요</h3>


