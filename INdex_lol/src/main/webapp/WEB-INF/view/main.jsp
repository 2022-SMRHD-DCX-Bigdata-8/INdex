<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Jointest.do" method="post">
		이름<input type="text" id="email" name="name" required><br>
		핸드폰번호<input type="tel" id="email"
			name="tel" required><br> 
		Email:<input type="text" id="email" name="email" required><br>
		비밀번호: <input type="password" id="password" name="password" required><br>

		LoL 닉네임:<input type="text" id="lolNickname" name="lolNickname"
			required><br> <input type="submit" value="회원가입">
	</form>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>