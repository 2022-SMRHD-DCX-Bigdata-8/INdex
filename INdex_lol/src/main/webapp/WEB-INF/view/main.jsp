<%@page import="com.smhrd.entity.L_user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// session에서 사용자 정보를 꺼내기

	L_user user = (L_user) session.getAttribute("user");
	%>

	<form action="Jointest.do" method="post">

			이름<input type="text" id="name" name="name"
			<c:if test="${!empty user}"> value="<%= user.getU_name() %>" </c:if>

			required><br> 아이디<input type="tel" id="tel" name="tel"
			<c:if test="${!empty user}"> value="<%= user.getU_id() %>" </c:if>
			required><br> Email:<input type="text" id="checkEmail"
			name="email"

			required>
			
			
			<br> 
			
			Email:<input type="text" id="checkEmail" name="email"
			<c:if test="${!empty user}"> value="<%= user.getU_email() %>" </c:if>
			required>
			
			
		<p id="emailCheckResult"></p>
		비밀번호: <input type="password" id="password" name="password" required><br>
		LoL 닉네임:<input type="text" id="checkNick" name="lolNickname" required>
		<br>
		<p id="nickCheckResult"></p>
		<input type="submit" value="회원가입">



	</form>


	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>


	<script type="text/javascript">
	 $(document).ready(function() {
         // apiError 메시지가 있다면
         <%if (request.getAttribute("apiError") != null) {%>
         alert("<%=request.getAttribute("apiError")%>");
	
		window.location.href = "http://localhost:8081/INdex_lol/goMaintest.do";
	<%}%>
		});

		$(document).ready(function() {
			var input = $("#checkEmail")

			input.on("input", emailCheck);
		});

		// emailCheck 기능 만들기
		function emailCheck() {
			// 입력된 값이 DB에 존재하는지 확인 필요

			// input에 입력되는 값을 바로 가져오는 명령
			var value = $("#checkEmail").val();

			$.ajax({
				url : "eCheck.do",
				type : "post",
				data : {
					"email" : value
				},
				success : function(res) {
					console.log(res.length, res);
					// 사용여부 알려주기

					var p = $("#emailCheckResult")

					if (res == "true") {
						p.html("사용이 가능한 이메일 입니다").css("color", "black")

					} else {
						p.html("사용이 불가능한 이메일입니다").css("color", "red")
					}
				},
				error : function(e) {
					alert("실패");
				}
			})
		}

		$(document).ready(function() {
			var input = $('#checkNick')
			input.on('input', nickCheck);
		});

		function nickCheck() {
			var value = $(this).val();
			$.ajax({
				url : 'nCheck.do',
				type : 'post',
				data : {
					"lolNickname" : value
				},
				success : function(res) {
					console.log(res.length, res);

					var p = $('#nickCheckResult');

					if (res == "true") {
						p.html('사용이 가능한 닉네임입니다.').css("color", "black");
					} else {
						p.html('중복된 닉네임입니다.').css("color", "red");

					}

				},
				error : function(e) {
					alert('실패');
				}

			});

		}
	</script>
</body>
</html>