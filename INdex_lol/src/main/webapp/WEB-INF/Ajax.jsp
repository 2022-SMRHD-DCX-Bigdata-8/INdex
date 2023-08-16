<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
form -> 페이지 이동도 같이 요청 !
button을 사용하여 페이지 이동 없이 데이터만 전달 !

 -->

	<input type="text" name="data">
	<button id="btn" type="button">전송</button>

	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script type="text/javascript">
		// Ajax 기술 활용 ! -> Jquery 라이브러리도 필요하다 !
		// Jquery 방식으로 사용하고자 하는 버튼 선택 !
		var btn = $('#btn');
		var input = $('input[name=data]'); // [] -> 태그의 속성을 찾기위한 기능
		// button 이벤트 연결하기
		btn.on('click', request);
		// 연결될 fuction 생성
		function request() {
			console.log("클릭");
			
			$.ajax({
				url : "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/",
				type : 'GET',
				dataType : 'json',
				async : false,
				data : {
					"api_key" : "RGAPI-56fcce04-30ba-498a-b745-e5938782cb20",
					"data" : input.val()
				},
				success : function(res) {
					console.log(res);
				},
				error : function(req, stat, err) {
					console.log(err);
				},
			});

		}
	</script>


</body>
</html>