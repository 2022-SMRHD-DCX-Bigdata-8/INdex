<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>L.GM</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.0/css/all.css">
    <link rel="stylesheet" href="assets/css/delete.css">


    <script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/5.4.2/echarts.min.js"></script>
    <style>
        /* CSS 스타일을 추가하여 name 텍스트를 굵게 표시 */
        .indicator-name {
            font-size: 16px;
            font-weight: bold;
        }
    </style>

 <style>
        #editBox {
            visibility: hidden;
        }
    </style>

</head>

<body>

    <header class="header">
        <div class="logo">
            <a href="goMain.do"><img src="assets/img/logo11.png" alt="" class="chal"></a> <a href="goMain.do" class="lgm-link">L.gm</a>
        </div>

      

        <div class="header-icons">


            <div class="profile-card" id="profileCard">
                <img class="profile-image" src="assets/img/2.png" alt="프로필 사진">
            </div>
            <div id="editBox">
                <div id="edit-box-tool">
                    <h3>내 정보</h3>
                	<a href="goUpdate.do" class="info">내정보 수정</a>
					<br>
					<a href="goDelete.do" class="info">회원 탈퇴</a>
					<br>
					<a href="logout.do" class="info">로그아웃</a>
                </div>
            </div>
        </div>

    </header>

    <div id="wrap">
        
        <!-- 대시보드 수정할것들!!!! -->
        <div class="body_main">

            <div class="container">
                <div class="header">
                    <img src="assets/img/logo11.png" alt="로고">
                    <h2>회원 탈퇴</h2>
                </div>
                <form action="delete.do" method="POST" class="joinForm">
                    <div id="tool">
                
                        <div class="id">  접속중인 ID : ${user.u_id}  </div>
                    <br>
                        <div class="textForm">
                            <input name="loginPw" type="password" class="input" placeholder="비밀번호를 입력해주세요" id="deletePw" required >
                        </div>
                            <input type="button" id="checkpw" value="비밀번호 확인">
                        <p id="pwCheckResult"></p>
                        <button type="submit" class="btn" id="deletebtn">탈퇴</button>
                    </div>
                </form>
            </div>

                </div>
                     
            </div>
                

        </div>



        <script src="https://code.jquery.com/jquery-3.7.0.min.js"
        integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous">
        </script>
    <!-- 메인화면 스크립트 -->
    <script>
        $(document).ready(function () {
            $(".profile-image").on("click", function (e) {
                e.stopPropagation(); // 이벤트 전파 중단 (버블링 방지)
                $("#editBox").css("visibility", "visible");
            });

            $(document).click(function (e) {
                if (!$(e.target).is('.profile-image')) {
                    $("#editBox").css("visibility", "hidden");
                }
            });
        });

        $(document).ready(function() {
    $("#withdrawLink").click(function() {
        var password = prompt("비밀번호를 입력하세요:");
        if (password !== null) {
            // 비밀번호 검증 및 회원 탈퇴 처리 로직 추가
            // 탈퇴 성공 시 아래와 같이 알림을 표시할 수 있습니다.
            alert("회원 탈퇴가 성공적으로 완료되었습니다.");
        }
    });
});
</script>
<script type="text/javascript">
$(document).ready(function() {
	var input = $('#checkpw')
	input.on('click', pwCheck);
});

function pwCheck() {
	var value = $("#deletePw").val();
	$.ajax({
		url : 'pwCheck.do',
		type : 'post',
		data : {
			"deletePw" : value
		},
		dataType : "text",
		success : function(res) {

			console.log(res);

			var p = $('#pwCheckResult');

			if (res == "true") {
				p.html('비밀번호가 일치합니다.').css("color", "black");
			} else {
				p.html('비밀번호가 일치하지 않습니다.').css("color", "red");

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