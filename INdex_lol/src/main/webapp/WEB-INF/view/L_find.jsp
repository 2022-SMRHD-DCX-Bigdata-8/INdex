<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>
<link rel="stylesheet" href="assets/css/find.css">
<body>
    



    <section>
    <div id="tool"> 
   
	<form action="findid.do" method="post">
    <div class="login_FindID">
        <div class="login_findId">아이디 찾기</div>
        <input name="u_name" id="login_findIdname" type="text" placeholder="이름을 입력해주세요.">
        <input name="u_email" id="login_findIdEmail" type="text" placeholder="이메일을 입력해주세요.">
        <input name="u_tel" id="login_findPhoneNumber" type="text" placeholder="전화번호 입력해주세요.">
        
        <button id="login_findIdButton">아이디 찾기</button>
    </div>
    </form>
    
    <form action="findpw.do" method="post">
    <div class="login_FindPW">
        <div class="login_findPW">비밀번호 찾기</div>
        <input name="u_name" id="login_findIdname" type="text" placeholder="이름을 입력해주세요.">
        <input name="u_id" id="login_findId" type="text" placeholder="아이디를 입력해주세요.">
        <input name="u_email" id="login_findIdEmail" type="text" placeholder="이메일을 입력해주세요.">     
        <input name="u_tel" id="login_findPhoneNumber" type="text" placeholder="전화번호 입력해주세요.">
        
        <button id="login_findPWButton">비밀번호 찾기</button>
    </div>
    </form>
</section>
</div>

</body>
</html>