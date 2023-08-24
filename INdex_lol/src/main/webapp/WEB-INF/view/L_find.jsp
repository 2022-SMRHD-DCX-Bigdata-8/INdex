<%@page import="com.smhrd.entity.L_user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

</head>
<link rel="stylesheet" href="assets/css/L_find.css">
<body>
<%
L_user l_user = (L_user) session.getAttribute("l_user");
System.out.println(l_user);
%>


	<section>
		<div id="tool">

			
				<div class="login_FindID">
					<div class="login_findId">아이디 찾기</div>
					<input name="u_name" id="login_findIdname" type="text" placeholder="이름을 입력해주세요." class="ip"> 
					<input name="u_email" id="login_findIdEmail" type="text" placeholder="이메일을 입력해주세요." class="ip">
					<input type="button" id="login_findIdButton" class="btn" value="아이디찾기">
				</div>
		

			
				<div class="login_FindPW">
					<div class="login_findPW">비밀번호 찾기</div>
					<input name="u_name" id="login_findIdname" class="ip" type="text"
							placeholder="이름을 입력해주세요."> 
					<input class="ip" name="u_id"
							id="login_findId" type="text" placeholder="아이디를 입력해주세요.">
					<input name="u_email" id="login_findIdEmail" type="text"
						placeholder="이메일을 입력해주세요.">

					<input type="button" id="login_findPWButton" class="btn" value="비밀번호찾기">
				</div>
			
	</section>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"
		integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
		crossorigin="anonymous"></script>
		
	<script type="text/javascript">
	
		$(document).ready(function() {
			var button = $('#login_findIdButton');
			button.on('click', findId);
		});
		
		function findId() {
			var uNameValue = $('#login_findIdname').val();  
		    var uEmailValue = $('#login_findIdEmail').val();
			$.ajax({
				url : 'findid.do',
				type : 'post',
				data : {
					 'u_name': uNameValue,
			         'u_email': uEmailValue
				},
				
				dataType : 'text',

				success : function(res) {
					console.log(res)
					if (res == "true") {
						alert('성공');

					} else {
						
					}
				},
				error : function(e) {
					console.log(e)
					alert('실패');
				}
			});
		}
	</script>


</body>
















</html>