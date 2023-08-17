<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div >
					<nav>	
						<ul>
							<li><h5>회원정보수정</h5></li>
							
								<form action="update.do" method="post">
									<li>접속한 Email : ${user.u_email} </li>
									<li><input value="${user.u_pw}" type="password" name="pw" placeholder="PW를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input value="${user.u_nick}" type="text" name="nick" placeholder="집주소를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="submit" value="UPDATE" class="button fit" style="width: 500px; margin: 0 auto;"></li>
								</form>
						</ul>
					</nav>			
			</div>
</body>
</html>