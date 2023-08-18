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
						<li>접속중인 ID : ${user.u_id} </li>
						<li><input value="${user.u_pw}" type="password" name="pw" placeholder="${user.u_pw}" style="width: 500px; margin: 0 auto;"></li>
						<li><input value="${user.u_email}" type="text" name="email" placeholder="${user.u_email}" style="width: 500px; margin: 0 auto;"></li>
						<li><input value="${user.u_nick}" type="text" name="nick" placeholder="${user.u_nick}" style="width: 500px; margin: 0 auto;"></li>
						<li><input value="${user.u_name}" type="text" name="name" placeholder="${user.u_name}" style="width: 500px; margin: 0 auto;"></li>
						<li><input type="submit" value="UPDATE" class="button fit" style="width: 500px; margin: 0 auto;"></li>
					</form>
			</ul>
		</nav>			
	</div>
</body>
</html>