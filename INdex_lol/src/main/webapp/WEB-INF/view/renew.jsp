<%@page import="com.smhrd.entity.L_user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	
	<button id="refreshBtn">갱신하기</button>
	

	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#refreshBtn").click(function() {
				// 갱신 버튼을 클릭했을 때 수행할 작업
				var userId = "${user.u_id}";
				var userPuuid = "${user.u_lolcd}";
				refreshPlayData(userId, userPuuid);
			});
		});

		function refreshPlayData(userId, userPuuid) {
			$.ajax({
				url: "getPlayData.do", // 서버의 처리 URL
				method: "POST",
				data: {
					userId: userId,
					userPuuid: userPuuid
				},
				success: function(response) {
					// 서버 응답 성공 시 동작
					console.log("Rank data refreshed successfully.");
					console.log(response)
				},
				error: function(error) {
					// 서버 응답 실패 시 동작
					console.log(error);
				}
			});
		}
	</script>

</body>
</html>