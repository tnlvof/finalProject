<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
	<script>
		$(document).ready(function(){
			alert("로그인에 실패하였습니다.");
		});
	</script>
	<jsp:forward page="/WEB-INF/views/main/main.jsp"/>
</body>
</html>