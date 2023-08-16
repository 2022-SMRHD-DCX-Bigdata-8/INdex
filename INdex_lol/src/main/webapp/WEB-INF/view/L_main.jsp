<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        #tool {
            cursor: pointer;
        }

        .joinForm {
            visibility: hidden;
        }
    </style>
</head>

<link rel="stylesheet" href="assets/css/main.css">
<body>
 <!-- 백그라운드 배경 html -->
    <!-- Starbackground -->
    <div id='stars'></div>
    <div id='stars2'></div>
    <div id='stars3'></div>

    <link rel="stylesheet" href="연습.css">
    <div class="all">
        <section class="login">
            <div class="login_box">
                <div class="left">

                    <div class="contact">

                        <form action="#">
                            <h3>로그인</h3>
                            <input class="input_text" type="text" placeholder="아이디를 입력해주세요" required>
                            <input class="input_text" type="text" placeholder="비밀번호를 입력해주세요" required>
                            <button id="login" type="submit">로그인</button>
                        </form>

                        <button id="join" type="submit">회원가입</button>

                        <span><a href="#">아이디/비밀번호를 잊으셨나요?</a></span>

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

            <form action="#" method="POST" class="joinForm">

                <div id="tool">
                    <h2>회원가입</h2>
                    <div class="textForm">
                        <input name="name" type="text" class="name" placeholder="회원 이름" required>
                    </div>

                    <div class="textForm">
                        <input name="loginId" type="text" class="email" placeholder="회원이메일" required>
                    </div>

                    <div class="textForm">
                        <input name="loginPw" type="password" class="pw" placeholder="회원비밀번호" required>
                    </div>

                    <div class="textForm">
                        <input name="nickname" type="text" class="nickname" placeholder="회원 롤 닉네임" required>
                    </div>

                    <div class="textForm">
                        <input name="Phonenumber" type="tel" onKeyup="this.value=this.value.replace(/[^0-9]/g,'')"
                            class="Phonenumber" placeholder="회원 전화번호(- 없이입력)" required>
                    </div>

                    <input type="submit" class="btn" value="JOIN" />
                </div>
            </form>


        </section>
    </div>


</body>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"
    integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

<script>
    $("#join").on("click", function () {
        $(".login_box").fadeTo(600, 0.4, function () {
        });
        $(".joinForm").css("visibility", "visible");
    });

    $("#btn").on("click", function () {
        $(".login_box").fadeTo(600, 1, function () {
        });
        $(".joinForm").css("visibility", "hidden");
    });

    $(document).click(function (e) {
    if (!$(e.target).is('#join') && !$(e.target).is('#tool')&& !$(e.target).is('input')) { 
        $(".login_box").fadeTo(600, 1, function () {
        });
        $(".joinForm").css("visibility", "hidden");
    }
});
    
    
</script>

</body>
</html>