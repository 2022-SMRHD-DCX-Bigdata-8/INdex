<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.entity.L_user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Main</title>

<style>
#tool {
	cursor: pointer;
}

.joinForm {
	visibility: hidden;
}

.right {
	background-image: url("assets/img/ball.jpg") !important;
}
</style>
</head>

<link rel="stylesheet" href="assets/css/L_login.css">
<body>

	<%
	// session에서 사용자 정보를 꺼내기

	L_user user = (L_user) session.getAttribute("user");
	String num = (String) session.getAttribute("num");
	
	System.out.print(num+"asdbhgfahj");
	
	%>
	<!-- 백그라운드 배경 html -->
	<!-- Starbackground -->
	<div id='stars'></div>
	<div id='stars2'></div>
	<div id='stars3'></div>


	<div class="all">
		<section class="login">
			<div class="login_box">
				<div class="left">

					<div class="contact">

						<form action="login.do">
							<h3>로그인</h3>
							<input name="u_id" class="input_text" type="text"
								placeholder="아이디를 입력해주세요" required> 
							<input name="u_pw" class="input_text" type="password" placeholder="비밀번호를 입력해주세요" required>
							<button id="login" type="submit">로그인</button>
						</form>

						<button id="join" type="submit">회원가입</button>

						<span><a href="goFind.do">아이디/비밀번호를 잊으셨나요?</a></span>

					</div>

				</div>
				<div class="right">
					<div class="right-text">
						<h2>L.GM</h2>
						<br>
						<h5>INDEX_P2</h5>
					</div>
				</div>
			</div>

			<form action="Join.do" method="POST" class="joinForm">

				<div id="tool">
					<h2>회원가입</h2>
					<div class="textForm">
						<input name="name" type="text" class="name" placeholder="회원 이름"
							<c:if test="${!empty user}"> value="<%= user.getU_name() %>" </c:if>
							required>
					</div>

					<div class="textForm">
						<input name="joinId" type="text" class="id" id="checkId"
							placeholder="회원 아이디"
							<c:if test="${!empty user}"> value="<%= user.getU_id() %>" </c:if>
							required>
						<p id="idCheckResult">
					</div>

					<div class="textForm">
						<input name="joinPw" type="password" class="pw"
							placeholder="회원비밀번호" required>
					</div>



					<div class="textForm">
						<input name="email" type="text" class="email" id="checkEmail"
							placeholder="회원이메일" maxlength="30"
							<c:if test="${!empty user}"> value="<%= user.getU_email() %>" </c:if>
							required> <input id="emailsend" type="button"
							value="인증번호보내기">
						<p id="emailCheckResult"></p>
					</div>

					<div class="textForm">
						<input type="text" name="verified" id="verifiedinput"
							placeholder="인증번호 4자리" class="verify"> <input
							id="verifiedbtn" type="button" value="인증번호확인">
						<p id="verifyCheckResult">
					</div>





					<div class="textForm">
						<input name="lolNickname" type="text" class="nickname"
							id="checkNick" placeholder="회원 롤 닉네임" required>
						<p id="nickCheckResult"></p>
					</div>


					<input id="joinButton" type="submit" class="btn" value="JOIN"
						disabled="disabled">
				</div>
			</form>
			

		</section>
	</div>



	<script src="https://code.jquery.com/jquery-3.7.0.min.js"
		integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
		crossorigin="anonymous"></script>

	<script>
		$("#join").on("click", function() {
			$(".login_box").fadeTo(600, 0.4, function() {
			});
			$(".joinForm").css("visibility", "visible");
		});

		$("#btn").on("click", function() {
			$(".login_box").fadeTo(600, 1, function() {
			});
			$(".joinForm").css("visibility", "hidden");
		});

		$(document).click(
				function(e) {
					if (!$(e.target).is('#join') && !$(e.target).is('#tool')
							&& !$(e.target).is('input')) {
						$(".login_box").fadeTo(600, 1, function() {
						});
						$(".joinForm").css("visibility", "hidden");
					}
				});
	</script>



	<%--비동기 이메일,닉네임 중복체크 --%>

	<%-- 비동기 이메일,닉네임 중복체크 --%>
	<script type="text/javascript">
		$(document).ready(function() {
			// apiError 메시지가 있다면
			<%if (request.getAttribute("apiError") != null) {%>
			alert("<%=request.getAttribute("apiError")%>");
		window.location.href = "http://localhost:8081/INdex_lol/goLogin.do";
	<%}%>
		});
	</script>

	<script type="text/javascript">
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
				dataType : "text",
				success : function(res) {
					console.log(res.length, res);
					// 사용여부 알려주기

					var p = $("#emailCheckResult")

					if (res == "true") {
						p.html("사용이 가능한 이메일 입니다").css("color", "white")

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
				dataType : "text",
				success : function(res) {

					console.log(res.length, res);

					var p = $('#nickCheckResult');

					if (res == "true") {
						p.html('사용이 가능한 닉네임입니다.').css("color", "white");
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
	<script>
		$(document).ready(function() {
			var button = $('#emailsend');
			button.on('click', gmailsend);
		});

		function gmailsend() {
			var value = $('#checkEmail').val();

			if (value.trim() !== '') {
				$.ajax({
					url : 'gmailSend.do',
					type : 'post',
					data : {
						"email" : value
					},
					dataType : "text",

					success : function(value) {
						alert("인증번호 발송완료");
						console.log(emaildata.length, emaildata);

					},
					error : function(e) {
						alert('실패');
					}
				});
			} else {
				alert('이메일 값을 입력해주세요.');
			}
		}

		$(document).ready(function() {
			var v_button = $('#verifiedbtn');
			v_button.on('click', verified);
		});

		function verified() {
			var value = $('#verifiedinput').val();
			$.ajax({
				url : 'verified.do',
				type : 'post',
				data : {
					"verified" : value
				},
				dataType : "text",

				success : function(res) {
					var p = $("#verifyCheckResult")

					if (res == "true") {
						p.html("인증 성공").css("color", "white")
						$('#joinButton').prop('disabled', false);
					} else {
						p.html("인증 실패").css("color", "red")
					}

				},
				error : function(e) {
					alert('실패');
				}

			});

		}
		
		
		
	</script>


	<script type="text/javascript">
		$(document).ready(function() {
			var input = $('#checkId')
			input.on('input', idCheck);
		});

		function idCheck() {
			var value = $(this).val();
			$.ajax({
				url : 'idCheck.do',
				type : 'post',
				data : {
					"joinId" : value
				},
				dataType : "text",
				success : function(res) {

					console.log(res.length, res);

					var p = $('#idCheckResult');

					if (res == "true") {
						p.html('사용이 가능한 아이디입니다.').css("color", "white");
					} else {
						p.html('중복된 아이디입니다.').css("color", "red");

					}

				},
				error : function(e) {
					alert('실패');
				}

			});

		}
	</script>
	
	
<!-- <script type="text/javascript">
	$('#joinButton').on("click", function() {
		if(num!=null){
			alert("회원가입 성공")
		}else{
			alert("시이일패")
		}
	});
</script>-->

</body>
</html>