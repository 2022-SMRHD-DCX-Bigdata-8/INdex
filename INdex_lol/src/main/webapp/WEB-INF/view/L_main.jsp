<%@page import="com.smhrd.entity.L_champimg"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.entity.L_userdata"%>
<%@page import="com.smhrd.entity.L_user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>L.GM</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.0/css/all.css">
<link rel="stylesheet" href="assets/css/L_main.css">
<script src="../../assets/실험.js"></script>


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/echarts/5.4.2/echarts.min.js"></script>
<script
	src="https://fastly.jsdelivr.net/npm/echarts@5.4.3/dist/echarts.min.js"></script>
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

<style>
html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

body[data-darkmode=on] {
	background-color: #1e1f21;
	color: #e8e8e8 !important;
}

/* Darkmode Toggle */
body[data-darkmode=on] .darkmode>.inner {
	background-color: rgba(255, 255, 255, 0.25);
}

.darkmode>.inner {
	position: relative;
	display: inline-flex;
	border-radius: 1.5em;
	background-color: rgba(0, 0, 0, 0.1);
	justify-content: right;
	/* 추가 */
}

.darkmode label {
	cursor: pointer;
}

.darkmode label:first-of-type {
	padding: 5px 5px 5px 10px;
	border-radius: 50% 0 0 50%;
}

.darkmode label:last-of-type {
	padding: 5px 10px 5px 5px;
	border-radius: 0 50% 50% 0;
}

.darkmode i {
	font-size: 1.5em;
	color: #aaa;
}

.darkmode input[type=radio] {
	display: none;
}

.darkmode input[type=radio]:checked+label>i {
	color: #fff;
	transition: all 0.35s ease-in-out;
}

.darkmode .darkmode-bg {
	width: 39px;
	height: 34px;
	position: absolute;
	left: 5px;
	border-radius: 50px 15px 15px 50px;
	z-index: -1;
	transition: all 0.35s ease-in-out;
	background-color: #03a9f4;
}

#toggle-radio-dark:checked ~.darkmode-bg {
	border-radius: 15px 50px 50px 15px;
	top: 5px;
	left: 44px;
}
</style>
</head>

<body>

	<%
	// session에서 사용자 정보를 꺼내기

	L_user user = (L_user) session.getAttribute("user");
	List<L_userdata> userdata = (List<L_userdata>) session.getAttribute("userdata");

	System.out.print("success" + userdata);
	%>


	<header class="header">
		<div class="logo">
			<a href="goMain.do"><img src="assets/img/logo.png" alt=""
				class="chal"></a> <a href="goMain.do" class="lgm-link">L.gm</a>
		</div>


		<div class="dkdk">
			<div class="darkmode">
				<div class="inner">
					<input type="radio" name="toggle" id="toggle-radio-light" checked><label
						for="toggle-radio-light" class="tolight"><i
						class="fas fa-sun tolight"></i></label> <input type="radio" name="toggle"
						id="toggle-radio-dark"><label for="toggle-radio-dark"
						class="todark"><i class="fas fa-moon todark"></i></label>
					<div class="darkmode-bg"></div>
				</div>
			</div>
		</div>

		<div class="header-icons">




			<div class="profile-card" id="profileCard">
				<img class="profile-image" src="assets/img/profile.png" alt="프로필 사진">
			</div>
			<div id="editBox">
				<div id="edit-box-tool">
					<h3>내 정보</h3>
					<a href="goUpdate.do" class="info">내정보 수정</a>
				</div>

				<div>
					<a href="goDelete.do" class="info" id="withdrawLink">회원 탈퇴</a>

				</div>
				<div>
					<a href="logout.do" class="info" id="withdrawLink">로그아웃</a>

				</div>
			</div>
		</div>


	</header>

	<div id="wrap">

		<nav>
			<div class="side_navbar" style="border: 1;">
				<form action="#">
					<div id="tear">
						 <img id="tierImage" src="" alt="tier">
						<p id="nick">${user.u_nick }</p>
						<button id="renewal">갱신</button>
					</div>
				</form>

				<a href="#">통계</a> <a href="champion.do">챔피언분석</a> <a href="#">대전기록</a>
				<a href="#">패치노트</a>

			</div>

		</nav>


		<!-- 대시보드 수정할것들!!!! -->
		<div class="body_main">



			<div id="best5Box">
				<div class="champion-box">
					<div class="faced">
						<img class="faceimg" src="">
					</div>

					<div class="best5">
						<div class="champname"></div>
						<div class="csavg"></div>
					</div>

					<div class="champavg">
						<div>평점</div>
						<div></div>
					</div>

					<div class="played">
						<div class="cnt"></div>
					</div>
				</div>

				<div class="champion-box">
					<div class="faced">
						<img class="faceimg" src="">
					</div>

					<div class="best5">
						<div class="champname"></div>
						<div class="csavg"></div>
					</div>

					<div class="champavg">
						<div>평점</div>
						<div></div>
					</div>

					<div class="played">
						<div class="cnt">게임</div>
					</div>
				</div>

				<div class="champion-box">
					<div class="faced">
						<img class="faceimg" src="">
					</div>

					<div class="best5">
						<div class="champname"></div>
						<div class="csavg"></div>
					</div>

					<div class="champavg">
						<div>평점</div>
						<div></div>
					</div>

					<div class="played">
						<div class="cnt">게임</div>
					</div>
				</div>

				<div class="champion-box">
					<div class="faced">
						<img class="faceimg" src="">
					</div>

					<div class="best5">
						<div class="champname"></div>
						<div class="csavg"></div>
					</div>

					<div class="champavg">
						<div>평점</div>
						<div></div>
					</div>

					<div class="played">
						<div class="cnt">게임</div>
					</div>
				</div>

				<div class="champion-box">
					<div class="faced">
						<img class="faceimg" src="">
					</div>

					<div class="best5">
						<div class="champname"></div>
						<div class="csavg"></div>
					</div>

					<div class="champavg">
						<div>평점</div>
						<div></div>
					</div>

					<div class="played">
						<div class="cnt">게임</div>
					</div>
				</div>
			</div>

			<!-- 전체차트 -->
			<div class="bodyfirst">

				<div id="chartAll">
					<div id="chart">
						<canvas>

                        </canvas>
					</div>
				</div>

				<!-- 레이더차트 -->
				<div id="radarChartAll">
					<div id="radarChart" class="echart">
						<canvas>

                        </canvas>
					</div>
				</div>
				<div id="kdaavg">
					<div id="KDA">
						<span> </span> <span class="death"> </span> <span> </span>
					</div>

					<div class="ratio"></div>

				</div>



				<!-- 대전기록 -->

				<div id="wrapper"></div>

				<!-- lastQue animated-item2 -->
			</div>

		</div>

	</div>

	</div>

	<!-- 다른 필드들도 위와 같이 출력 -->


	<script src="https://code.jquery.com/jquery-3.7.0.min.js"
		integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
		crossorigin="anonymous">
            </script>

	<script src="text/javascript">

 </script>
	<!-- 메인화면 스크립트 -->
	<script>
	// 사용자 rank에 따른 이미지 URL 매핑
	const rankImages = {
	    "BRONZE": "https://opgg-static.akamaized.net/images/medals_new/bronze.png?image=q_auto,f_webp,w_144&v=1692712288005",
	    "SILVER": "https://opgg-static.akamaized.net/images/medals_new/silver.png?image=q_auto,f_webp,w_144&v=1692712288005",
	    "GOLD": "https://opgg-static.akamaized.net/images/medals_new/gold.png?image=q_auto,f_webp,w_144&v=1692712288005",
	    "PLATINUM": "https://opgg-static.akamaized.net/images/medals_new/platinum.png?image=q_auto,f_webp,w_144&v=1692712288005",
	    "EMERALD": "https://opgg-static.akamaized.net/images/medals_new/emerald.png?image=q_auto,f_webp,w_144&v=1692712288005",
	    "DIAMOND": "https://opgg-static.akamaized.net/images/medals_new/diamond.png?image=q_auto,f_webp,w_144&v=1692712288005",
		"unranked" : "http://ddragon.leagueoflegends.com/cdn/4.19.2/img/profileicon/23.png"
	};

	
	// 사용자 rank 가져오기 (세션에서 가져오거나 하드코딩)
	const userRankIcon= "${user.u_rank}"; // 예시로 "GOLD"로 설정
	console.log(rankImages)
	console.log(userRankIcon)
	const userTier = userRankIcon.split(" ")[0];
	
	// 이미지 요소 참조
	const tierImage = document.getElementById("tierImage");

	// 사용자 rank에 해당하는 이미지 URL 설정
	tierImage.src = rankImages[userTier];
		// 일정 시간마다 데이터 업데이트 실행
		// 1분마다 실행
		
		function storeDataInLocalStorage(data) {
		    localStorage.setItem('userData', JSON.stringify(data));
		}

		// 데이터를 받아온 후에 호출
		//fetchDataChampImg(); // 이 함수 내부에서 데이터를 업데이트하고 로컬 스토리지에 저장
		
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
           /* $(document).ready(function () {
                $("#withdrawLink").click(function () {
                    var password = prompt("비밀번호를 입력하세요:");
                    if (password !== null) {
                        // 비밀번호 검증 및 회원 탈퇴 처리 로직 추가
                        // 탈퇴 성공 시 아래와 같이 알림을 표시할 수 있습니다.
                        alert("회원 탈퇴가 성공적으로 완료되었습니다.");
                    }
                });
            });*/

            // 다크모드 변환 시작
            document.addEventListener('DOMContentLoaded', function () {
                if (document.querySelector('.darkmode')) {
                    const header = document.querySelector('.header');
                    const lgmLink = document.querySelector('.lgm-link');
                    const sideNav = document.querySelector('nav');
                    const bodyMain = document.querySelector('.body_main');
                    const wrap = document.querySelector('#wrap');
                    const side_navbar = document.querySelector('.side_navbar');
                    const renewalButton = document.querySelector('#renewal');
                    const bodyfirst = document.querySelector('.bodyfirst');
                    const best5 = document.querySelector('#best5Box');
                    const canvas = document.querySelector("canvas");
                    let countdownTime = 120; // 카운트 다운 시간 (초 단위)
                    let canRenew = true; // 클릭 가능한 상태를 나타내는 변수
                    const countdownElement = document.querySelector('#countdown'); // 시간을 업데이트할 엘리먼트

                    if (localStorage.getItem("tolight") == 'on') {
                        document.body.dataset.darkmode = 'off';
                        localStorage.setItem("darkmode", "off");
                        header.style.background = "#e2dddd"; // 라이트 모드 에서 헤더 배경색변경
                        header.style.color = "#000"; // 라이트 모드에서 헤더 텍스트변경
                        lgmLink.style.color = "#000"; // 라이트 모드에서 l.gm 텍스트변경
                        sideNav.style.background = "#e2dddd"; // 라이트 모드에서 사이드바 배경색변경
                        bodyMain.style.color = "#e8e8e8"; // 라이트 모드에서 텍스트 색상변경
                        bodyMain.style.background = "#e2dddd"; // 라이트 모드에서 바디 색상 변경
                        header.style.boxShadow = "0 2px 4px rgba(0, 0, 0, 0.3)"; // 라이트 모드에서 그림자 설정
                        wrap.style.background = "#e2dddd";
                        renewalButton.style.background = "#462679"; // 다크 모드에서 버튼 배경색 변경
                        renewalButton.style.color = "#e8e8e8";
                        bodyfirst.style.background = "#1e1f21"
                        side_navbar.style.boxShadow = "0 2px 4px rgba(239, 237, 237, 0.5)";
                        bodyfirst.style.boxShadow = "0 2px 4px rgba(239, 237, 237, 0.5)";
                        best5.style.boxShadow = "0 2px 4px rgba(239, 237, 237, 0.5)";
                        canvas.style.color = "#e8e8e8"

                    }

                    document.querySelector('.darkmode').addEventListener("click", e => {
                        if (e.target.classList.contains('todark')) {
                            document.body.dataset.darkmode = 'on';
                            localStorage.setItem("darkmode", "on");
                            header.style.background = "#1e1f21"; // 다크 모드에서 헤더 배경색변경
                            header.style.color = "#e8e8e8"; // 다크 모드에서 헤더 텍스트변경
                            lgmLink.style.color = "#e8e8e8"; // 다크 모드에서 l.gm 텍스트변경
                            sideNav.style.background = "#1e1f21"; // 다크 모드에서 사이드바 배경색변경
                            bodyMain.style.color = "#e8e8e8"; // 다크 모드에서 텍스트 색상변경
                            bodyMain.style.background = "#1e1f21"; // 다크모드에서 바디 색상 변경
                            header.style.boxShadow = "0 2px 4px rgba(239, 237, 237, 0.3)"; // 다크모드에서 그림자 설정
                            wrap.style.background = "#1e1f21";
                            renewalButton.style.background = "#462679"; // 다크 모드에서 버튼 배경색 변경
                            renewalButton.style.color = "#e8e8e8";
                            bodyfirst.style.background = "#1e1f21";
                            side_navbar.style.boxShadow = "0 2px 4px rgba(239, 237, 237, 0.5)";
                            bodyfirst.style.boxShadow = "0 2px 4px rgba(239, 237, 237, 0.5)";
                            best5.style.boxShadow = "0 2px 4px rgba(239, 237, 237, 0.5)";
                            canvas.style.color = "#e8e8e8"

                        } else if (e.target.classList.contains('tolight')) {
                            document.body.dataset.darkmode = 'off';
                            localStorage.setItem("darkmode", "off");
                            header.style.background = "#e2dddd"; // 라이트 모드 에서 헤더 배경색변경
                            header.style.color = "#000"; // 라이트 모드에서 헤더 텍스트변경
                            lgmLink.style.color = "#000"; // 라이트 모드에서 l.gm 텍스트변경
                            sideNav.style.background = "#e2dddd"; // 라이트 모드에서 사이드바 배경색변경
                            bodyMain.style.color = "#1e1f21"; // 라이트 모드에서 텍스트 색상변경
                            bodyMain.style.background = "#e2dddd"; // 라이트 모드에서 바디 색상 변경
                            header.style.boxShadow = "0 2px 4px rgba(0, 0, 0, 0.3)"; // 라이트 모드에서 그림자 설정
                            wrap.style.background = "#e2dddd";
                            renewalButton.style.background = "#462679"; // 다크 모드에서 버튼 배경색 변경
                            renewalButton.style.color = "#e8e8e8";
                            bodyfirst.style.background = "#e2dddd";
                            side_navbar.style.boxShadow = "0 2px 4px rgba(0, 0, 0, 0.5)";
                            bodyfirst.style.boxShadow = "0 2px 4px rgba(0, 0, 0, 0.5)";
                            best5.style.boxShadow = "0 2px 4px rgba(0, 0, 0, 0.5)";
                            canvas.style.color = "#e2dddd"

                        }
                    }, false);
                } else {
                    localStorage.removeItem("darkmode");
                }
            });
            // 다크 모드 변경 끝

            document.addEventListener('DOMContentLoaded', function () {
                const renewalButton = document.querySelector('#renewal');
                let canRenew = true; // 클릭 가능한 상태를 나타내는 변수

                renewalButton.addEventListener('click', function () {
                    if (canRenew) {
                        canRenew = false; // 버튼 클릭 비활성화



                        renewalButton.style.background = "#D3D3D3";
                        renewalButton.style.color = "#1e1f21";
                        console.log("클릭");

                        var userId = "${user.u_id}";
                        var userPuuid = "${user.u_lolcd}";

                        //newrefreshPlayData(userId, userPuuid);
                        refreshPlayData(userId, userPuuid);


                        // 일정 시간(여기서는 120초) 후에 다시 클릭 가능하게 설정
                        setTimeout(function () {
                            canRenew = true; // 버튼 클릭 활성화
                            console.log('다시 버튼을 클릭할 수 있습니다.');
                            renewalButton.style.background = "#462679";
                            renewalButton.style.color = "#e8e8e8";
                        }, 120000); // 120초 (2분)
                    }
                });
            });


            //갱신버튼용 함수

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
                    // 확인 console.log(response);
                    location.reload(true);
                },
                error: function(error) {
                    // 서버 응답 실패 시 동작
                    console.log(error);
                }
            });
        }
        

        
    </script>
	<!-- 파이형 차트 수정 -->
	<script type="text/javascript">
		// 파이형차트
        var chartDom = document.getElementById('chart');
        var myChart = echarts.init(chartDom); // Initialize myChart

        var isDarkMode = false;
        var chartTitleText = document.body.dataset.darkmode === 'on' ? '20전 10승 10패' : '20전 10승 10패';
        var chartTitleColor = document.body.dataset.darkmode === 'on' ? '#e2dddd' : '#1e1f21';
        var userId = '${user.u_id}';
        var userRank = '${user.u_rank}';
 		
 		// console.log(userPosition)
        // console.log(userId)
        // console.log(userRank)
        
        
        
///////////////////////////////ajax 데이터 불러오기 /////////////////////////
///////////////////////////////////////////////////////////////////////////

//승률파이, 가운데 글자 총 kda / 평점
        function fetchDataKDAWinlose() {
      
            $.ajax({
                url: 'kdaChart.do',
                type: 'GET', 
                dataType: 'json', 
                data: { userId: userId },
                success: function(data) {
                    // 확인함 console.log(data)
                    $('#KDA span:eq(0)').text('평균 K ' + data.K);
            		$('#KDA span.death').text('/ D '+ data.D);
           			$('#KDA span:eq(2)').text('/ A '+data.A);
            		const ratioValue = (data.K + data.A) / data.D;
            		$('.ratio').text(ratioValue.toFixed(2)); // 소수점 2자리까지 표시
                    PieUpdateChart(data); // 받아온 데이터로 차트 업데이트
                    
                    
                    
                },
                error: function(xhr, status, error) {
                
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
 		
 
        // fetchDataChampImgAndData()
        
       /* function fetchDataChampImg() {
        	updateChampionImages(champImgData);
            ajax({
                url: 'getChampImg.do',
                type: 'GET', 
                dataType: 'json', 
                success: function(champImgData) {
                    console.log(champImgData)
                    //받아온 데이터로 차트 업데이트
                    // 가져온 데이터를 이용하여 이미지 업데이트
                    
                    fetchDataWithDelay(3000); // 3초마다
                    
                },
                error: function(xhr, status, error) {
                    // 요청이 실패했을 때 실행될 콜백 함수
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
        fetchDataChampImg();*/
        
        
     	// 메인 페이지에서 호출
     	      /*function findImageSrc(champImgData, champName) {
        	console.log("findImageSrc")
            for (var i = 0; i < champImgData.length; i++) {
                if (champImgData[i].championName === champName) {
                    return champImgData[i].championImg;
                }
            }
            return null; 
        }*/
         // fetchDataBest5 호출
        useStoredChampImgData(); // useStoredChampImgData 호출
        function useStoredChampImgData() {
            // 웹 스토리지에서 이미지 데이터 가져오기
            const storedChampImgData = localStorage.getItem('champImgData');
            if (storedChampImgData) {
                const champImgData = JSON.parse(storedChampImgData);
                // 가져온 데이터를 이용하여 이미지 업데이트 등의 작업 실행
                updateChampionImages(champImgData);
                // 확인함 console.log(champImgData)
                fetchDataBest5(function(bestChamp) {
                    updateChampionBoxes(bestChamp, champImgData);
                });
       		 }
         }
  
        
        function findImageSrc(champImgData, champNameFind) {
         // 확인함   console.log("findImageSrc");
          // 확인함  console.log(champImgData);
           //확인함  console.log(champNameFind);

            // 데이터 형태에 따라서 접근 방법을 수정
            if (Array.isArray(champImgData)) {
                for (var i = 0; i < champImgData.length; i++) {
                    if (champImgData[i]["championName"] === champNameFind) {
                        return champImgData[i]["championImg"];
                    }
                }
            } else if (typeof champImgData === "object") {
                if (champImgData[champNameFind]) {
                    return champImgData[champNameFind]["championImg"];
                }
            }

            return null;
        }
        
        
        // 이미지 업데이트 함수
        function updateChampionImages(champImgData) {
            $('.champion-box').each(function() {
                var champNameFind = $(this).find('.champname').text();
             // 확인함   console.log(champNameFind)
                var imgSrc = findImageSrc(champImgData, champNameFind);
                // 확인함 console.log(imgSrc)
                if (imgSrc) {
                    $(this).find('.faceimg').attr('src', imgSrc);
                }
            });
        }
        function updateChampionBoxes(bestChamp, champImgData) {
            const championBoxes = $('.champion-box');

            for (let i = 0; i < bestChamp.champAvgArray.length; i++) {
                const championBox = championBoxes.eq(i);
                const champData = bestChamp.champAvgArray[i];

                const championName = champData.championName;
                const csAvg = champData.csAvg;
                const k = champData.k;
                const d = champData.d;
                const a = champData.a;
                const played = champData.played;

                const imgUrl = findImageSrc(champImgData, championName); // 이미지 URL 가져오기

                championBox.find('.champname').text(championName);
                championBox.find('.csavg').text('CS ' + csAvg);
                championBox.find('.champavg > div:first-child').text('KDA ' + k + '/' + d + '/' + a);
                championBox.find('.played .cnt').text(played + ' 게임');

                if (imgUrl) {
                    championBox.find('.faceimg').attr('src', imgUrl);
                }
            }
        }

        // best5개 추천
        function fetchDataBest5(callback) {
            $.ajax({
                url: 'getBest5Chart.do',
                type: 'GET',
                dataType: 'json',
                data: { userId: userId },
                success: function (bestChamp) {
                    // 확인함 console.log(bestChamp);
                    callback(bestChamp); // 콜백 함수 호출하여 데이터 전달
                },
                error: function (xhr, status, error) {
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        

        //새로고침 딜레이용 함수
        //새로고침 필요한 ajax function 안에 넣어주면됨
       /* function fetchDataWithDelay(delayTime) {
            setTimeout(function() {
                fetchDataChampImg();
            }, delayTime);
        }*/

        
        
       
        
        
        function updateChampionData(userPlayData) {
            // userPlayData를 이용하여 데이터 업데이트
            // 예: $(this).find('.kda').text(userPlayData.kda);
        }
 		
        
 		
 	
        
 		
        function fetchPlayData() {
        	
        	// 유저 대전기록 리스트 
            $.ajax({
                url: 'getPlayDataList.do',
                type: 'GET', 
                dataType: 'json', 
                data: { userId: userId },
                success: function(playDataList) {
                  // 확인함  console.log(playDataList)
                    
                  console.log(playDataList)
                    const ListPlayData = playDataList.userPlayData;

                    // 대전기록 출력 함수 호출
                    renderPlayData(ListPlayData);
                   
                    

                    
                 
                },
                  
                    
                error: function(xhr, status, error) {
                
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        

        
        
        
       /* for (var i = 1; i <= 20; i++) {
            var dom = document.getElementById('main' + i);
            var myChart6 = echarts.init(dom, null, {
                renderer: 'canvas',
                useDirtyRect: false
            });

            var option = {
                xAxis: {
                    type: 'category',
                    data: ['5분', '10분', '15분', '20분', '25분', '30분', '35분', '40분']
                },
                yAxis: {
                    type: 'value'
                },
                series: [
                    {
                        data: [820, 932, 901, 934, 1290, 1330, 1320, 1700],
                        type: 'line',
                        smooth: true
                    },
                    {
                        data: [720, 632, 701, 834, 990, 1130, 1220, 1500],
                        type: 'line',
                        smooth: true
                    }
                ]
            };

            myChart6.setOption(option);

            // 그래프 크기 변경
            myChart6.resize(800, 600);
        }
        */
    
     

// 대전기록 출력함수
function renderPlayData(playDataList) {
    const wrapper = $("#wrapper"); // wrapper 선택

    playDataList.forEach(function(playData, index) {
    	console.log(playData.u_level)
        const champImgSrc = "https://opgg-static.akamaized.net/meta/images/lol/champion/" + playData.u_champ + ".png";
        const champName = playData.u_champ;
        const champlevel = playData.u_levle;
        const gold = playData.u_gold;
        const damage = playData.u_damage;
        const kill = playData.u_kill;
        const death = playData.u_death;
        const assist = playData.u_assist;
        
        const queContainer = $("<div>", { class: "que_container" }); // que_container 생성

        const recordElement = $("<div>", { class: "record"+(index+1) });
        const champImgElement = $("<span>", { class: "ChampImg" });
        const imgElement = $("<img>", { src: champImgSrc, alt: "선택한 챔프사진" });
        const spanCloseElement = $("<span>");
        const itemContentDiv = $("<div>", { class: "item-content" });
        const champNameElement = $("<strong><span>").text("챔피언명ㅤ" + champName+"ㅤ");
        const levelElement = $("<strong><span>").text("레벨ㅤ" + champlevel +"ㅤ");
        const goldElement = $("<strong><span>").text("골드량ㅤ" + gold +"ㅤ") ;
        const damageElement = $("<strong><span>").text("피해량ㅤ" + damage +"ㅤ");
        const killElement = $("<strong><span>").text("킬 " + kill +" / ");
        const deathElement = $("<strong><span>").text("데스 " + death +" / ");
        const assistElement = $("<strong><span>").text("어시 " + assist);
        
        const buttonChartContainer = $("<div>", { class: "button_chart" });
        const damageButton = $("<button>", { class: "lastQue animated-item" + (index+1) }).text("피해량");
        const goldButton = $("<button>", { class: "lastQue animated-item"+ (index+1) }).text("골드량");
        
        const expandableContent = $("<div>", { class: "expandable-content" });
        const expandedContentInner = $("<div>", { class: "expanded-content-inner" });
        const expandedContentWrapper = $("<div>", { class: "expanded-content-wrapper" });

        const infoElement = $("<div>", { id: "info" + index }).text("게임 상세 정보를 표시합니다.\n승리 or 패배");
        const chartCanvas = $("<canvas>", { id: "main" + index, style: "width: 800px; height: 600px;" });

        const chartContainer = $("<div>", { class: "chart-container" }); // 새로운 div 추가
        chartContainer.append(chartCanvas); // chartCanvas를 chartContainer에 추가

        expandedContentWrapper.append(infoElement);
        expandedContentWrapper.append(chartContainer); // chartContainer 추가

        // 요소들을 계층적으로 구조에 추가
        wrapper.append(queContainer);
        queContainer.append(recordElement); // recordElement 추가
        recordElement.append(champImgElement);
        champImgElement.append(imgElement);
        champImgElement.append(spanCloseElement);
        recordElement.append(itemContentDiv);
        itemContentDiv.append(champNameElement);
        itemContentDiv.append(levelElement);
        itemContentDiv.append(goldElement);
        itemContentDiv.append(damageElement);
        itemContentDiv.append(killElement);
        itemContentDiv.append(deathElement);
        itemContentDiv.append(assistElement);
        queContainer.append(buttonChartContainer); // buttonChartContainer 추가
        buttonChartContainer.append(damageButton);
        buttonChartContainer.append(goldButton);
        buttonChartContainer.append(expandableContent); // expandableContent 추가
        expandableContent.append(expandedContentInner);
        expandedContentInner.append(expandedContentWrapper);
        
        $("#wrapper").on("click", ".record"+ (index+1), function () {
            const clickedIndex = index; // 클로저 문제를 해결하기 위해 index를 상수로 저장

            console.log("클릭이벤트");
            event.stopPropagation(); // 버튼 클릭 이벤트 전파 중단

            var animatedItem = $(".lastQue.animated-item"+(clickedIndex + 1));

            // 다른 토글된 요소들을 닫음
            $(".lastQue.animated-item"+(clickedIndex + 1)).not(animatedItem).slideUp();

            // 현재 토글할 요소를 열거나 닫음
            animatedItem.slideToggle();
            
       
        
        });
    });
    
    // 대전기록 컨테이너에 클릭 이벤트 위임
    
}


$(document).ready(function () {
    fetchPlayData(); // 대전기록 데이터 요청 및 처리

   

});






        
        // ghost 플레이데이터 목록 userRank 인자
        function fetchGhostPlayData() {
            $.ajax({
                url: 'getGhostDataList.do',
                type: 'GET', 
                dataType: 'json', 
                data: { userRank: userRank },
                success: function(ghostplayDataList) {
                	
                   // 데이터확인함 console.log(ghostplayDataList)
                  // 받아온 데이터로 차트 업데이트
                  // 단 position 매칭시켜서 같은것만 가져오게해야함
                    
                    
                },
                error: function(xhr, status, error) {
                	
                
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
        // 레이더 데이터용 json 최근경기 단 하나
        function fetchUserRadarData() {
            $.ajax({
                url: 'getRadar.do',
                type: 'GET', 
                dataType: 'json', 
                data: { userId: userId },
                success: function(UserRadarData) {
                	
                  // 확인함  console.log(UserRadarData)
                  
                    
                    
                },
                error: function(xhr, status, error) {
                	
                
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
     // 고스트 타임라인 (시간별)
        function fetchGhostTimeLineData() {
            $.ajax({
                url: 'getGhostTimeLineData.do',
                type: 'GET', 
                dataType: 'json', 
                data: { userRank: userRank },
                success: function(GhostTimeLineData) {
                	  console.log(GhostTimeLineData);
                	 
                	 
                      
              
                 } ,
                error: function(xhr, status, error) {
                	
                
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
        
        // 유저 타임라인 (시간별)
        function fetchUserTimeLineData() {
        	// matchcd 로 넘겨야함
            $.ajax({
                url: 'getUserTimeLineData.do',
                type: 'GET', 
                dataType: 'json', 
                data: { userMatch: userMatch },
                success: function(userTimeLineData) {
                	
                  // 확인함  console.log(userTimeLineData)
                  
                    
                    
                },
                error: function(xhr, status, error) {
                	
                
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
  
        
        
        
        
///////////////////////////////ajax 데이터 불러오기 끝 /////////////////////////
///////////////////////////////////////////////////////////////////////////
        fetchGhostPlayData();
      
        
        fetchUserRadarData();
        fetchGhostTimeLineData();
        // fetchUserTimeLineData();
        
        
      /*  $(document).ready(function () {
            $('.playDataList').click(function () {
                var userRank = $(this).data('userRank');
                  // position 부분
                fetchChartData(userRank);
            });
        }); */
         
        function fetchChartData(userRank) {
            $.ajax({
                url: 'getGhostTimeLineData.do',
                type: 'GET',
                dataType: 'json',
                data: {
                    userRank: userRank
                },
                success: function (chartData) {
                
                },
                error: function (xhr, status, error) {
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
  
        
        //BEST5
        
       
        
        
      
      

        function PieUpdateChart(data) {
        	if(data){
        		
        	
            var option = {
                title: {
                    text: data.totalWinloseCnt.toString()+'전'+ data.wincnt.toString()+'승'+data.losecnt.toString()+'패',
                    subtext: '승률',
                    left: 'center'
                },
                tooltip: {
                    trigger: 'item'
                },
                graphic: [{
                    type: 'text',
                    left: 'center',
                    top: 'center',
                    style: {
                    	text: data.winlose.toString() + '%',
                        font: 'bold 30px Arial',
                        fill: '#333'
                    }
                }],
                legend: {
                    orient: 'vertical',
                    left: 'left'
                },
                series: [
                    {
                        name: '승패',
                        type: 'pie',
                        radius: ['60%', '35%'],
                        data: [
                            { value: data.losecnt, name: '패', itemStyle: { color: 'red' } },
                            { value: data.wincnt, name: '승', itemStyle: { color: 'blue' } }
                        ],
                        label: {
                            show: false,
                            position: 'center'
                        },
                        itemStyle: {
                            borderRadius: 10,
                            borderColor: '#fff',
                            borderWidth: 2
                        },
                        emphasis: {
                            itemStyle: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }
                ]
            };

            
            myChart.setOption(option); // Set option to myChart

            document.querySelector('.darkmode').addEventListener('click', function () {
                chartTitleText = document.body.dataset.darkmode === 'on' ? data.totalWinloseCnt.toString()+'전'+ data.wincnt.toString()+'승'+data.losecnt.toString()+'패' : data.totalWinloseCnt.toString()+'전'+ data.wincnt.toString()+'승'+data.losecnt.toString()+'패';
                chartTitleColor = document.body.dataset.darkmode === 'on' ? '#e2dddd' : '#1e1f21';
                myChart.setOption({
                    title: {
                        text: chartTitleText,
                        textStyle: {
                            color: chartTitleColor
                        }
                    },
                    graphic: [{
                        type: 'text',
                        left: 'center',
                        top: 'center',
                        z: 2,
                        style: {
                            text: '50%', // 여기서 고정된 텍스트 내용을 수정하지 않습니다.
                            font: 'bold 30px Arial',
                            fill: chartTitleColor
                        }
                    }]
                });
            }, false);
          
            
        	}else{
        		// 데이터를 받아오지 못한 경우에 대한 처리
                var option = {
                    title: {
                        text: '데이터를 가져오지 못했습니다.',
                        subtext: 'Error',
                        left: 'center',
                        top: 'middle'
                    },
                    graphic: [{
                        type: 'text',
                        left: 'center',
                        top: 'center',
                        style: {
                            text: 'Error',
                            font: 'bold 30px Arial',
                            fill: 'red'
                        }
                    }]
                };

               
                myChart.setOption(option); // Set option to myChart

                document.querySelector('.darkmode').addEventListener('click', function () {
                    chartTitleText = document.body.dataset.darkmode === 'on' ? '20전 10승 10패' : '20전 10승 10패';
                    chartTitleColor = document.body.dataset.darkmode === 'on' ? '#e2dddd' : '#1e1f21';
                    myChart.setOption({
                        title: {
                            text: chartTitleText,
                            textStyle: {
                                color: chartTitleColor
                            }
                        },
                        graphic: [{
                            type: 'text',
                            left: 'center',
                            top: 'center',
                            z: 2,
                            style: {
                                text: '50%', // 여기서 고정된 텍스트 내용을 수정하지 않습니다.
                                font: 'bold 30px Arial',
                                fill: chartTitleColor
                            }
                        }]
                    });
                }, false);
            }
        	
        }

        // 페이지 로딩 시 데이터 가져오고 차트 업데이트
       fetchDataKDAWinlose();
      
        
      
        
    </script>
	<!-- 라이더차트 스크립트 수정 -->
	<script>
            document.addEventListener("DOMContentLoaded", () => {
                var radarChart = echarts.init(document.querySelector("#radarChart"));

                var isDarkMode = document.body.dataset.darkmode === 'on';
                var ghostColor = isDarkMode ? '#e2dddd' : '#1e1f21';
                var playerColor = isDarkMode ? '#e2dddd' : '#1e1f21';
            
                var option = {
                    responsive: false,
                    legend: {
                        data: ['PlayerData', 'GhostData'],
                        textStyle: {
                            color: isDarkMode ? '#e2dddd' : '#1e1f21'
                        }
                    },
                    radar: {
                        shape: 'polygon',
                        indicator: [
                            { name: '생존력', max: 10 },
                            { name: '성장력', max: 14000 },
                            { name: '전투력', max: 30000 },
                            { name: '시야력', max: 25 },
                            { name: 'CS 획득', max: 200 }
                        ],
                        axisLabel: {
                            textStyle: {
                                color: isDarkMode ? '#e2dddd' : '#1e1f21'
                            }
                        },
                        name: {
                            textStyle: {
                                color: isDarkMode ? '#e2dddd' : '#1e1f21'
                            }
                        } // 이 부분을 추가하여 이름 글자 색 변경
                    },
                    series: [
                        {
                            name: 'userData vs ghostData',
                            type: 'radar',
                            data: [
                                {
                                    value: [0, 0, 0, 0, 0],
                                    name: 'GhostData',
                                    areaStyle: {
                                        color: 'rgba(16, 212, 243, 0.37)'
                                    },
                                    itemStyle: {
                                        color: '#b4e2ed',
                                    },
                                    symbol: 'none',
                                },
                                {
                                   
                                    value: [0, 0, 0, 0, 0],
                                    name: 'PlayerData',
                                    areaStyle: {
                                        color: 'rgba(253, 101, 5, 0.35)'
                                    },
                                    itemStyle: {
                                        color: 'rgb(253, 101, 5)',
                                    },
                                    symbol: 'none',
                                }
                            ],
                            label: {
                                show: true, // Indicator 이름을 표시하도록 설정
                                color: isDarkMode ? '#e2dddd' : '#1e1f21', // 글자 색상 설정
                            }
                        }
                    ]
                };
/*
                function fetchUserData() {
                    $.ajax({
                        url: 'getRadarChart.do',
                        type: 'GET',
                        dataType: 'json',
                        data: { userId: userId },
                        success: function(userDataArray) {
                            // 유저 데이터를 가져와서 차트 데이터 업데이트
                          clonsole.log(userdataArray)
                            option.series[0].data[1].value = [
                                userRadarData.userRadarData.u_death,
                                userRadarData.userRadarData.u_gold,
                                userRadarData.userRadarData.u_damage,
                                userRadarData.userRadarData.u_wardsplaced,
                                userRadarData.userRadarData.u_minionkill
                            ];
                            
                            // 차트 업데이트
                            radarChart.setOption(option);
                        },
                        error: function(xhr, status, error) {
                        }
                    });
                }
*/
         // 유패치레이더데이터 // 
            function fetchUserRadarData() {
                $.ajax({
                    url: 'getRadar.do',
                    type: 'GET', 
                    dataType: 'json', 
                    data: { userId: userId },
                    success: function(UserRadarData) {

                       //확인함  
            var udeath = UserRadarData.userRadarData.u_death;
                var ugold = UserRadarData.userRadarData.u_gold;
                var udamage = UserRadarData.userRadarData.u_damage;
                var uwardsplaced = UserRadarData.userRadarData.u_wardsplaced;
                var uminionkill = UserRadarData.userRadarData.u_minionkill;
                // 포지션
                var u_teamposition = UserRadarData.userRadarData.u_teamposition
                // 확인 console.log(u_teamposition)
                fetchGhostData(u_teamposition);
                // 차트 업데이트
                var modifiedUdeath = transformUdeath(udeath);

            option.series[0].data[1].value = [
               modifiedUdeath,
                   ugold,
                   udamage,
                   uwardsplaced,
                   uminionkill
                            ];
                            
                            // 차트 업데이트
                            radarChart.setOption(option);
                       
              /*         var u_death = UserRadarData.userRadarData.u_death;
                         var u_gold = UserRadarData.userRadarData.u_gold;
                         var u_damage = UserRadarData.userRadarData.u_damage;
                         var u_wardsplaced = UserRadarData.userRadarData.u_wardsplaced;
                         var u_minionkill = UserRadarData.userRadarData.u_minionkill;
               */         
                    },
                    error: function(xhr, status, error) {
                          console.error('Error fetching ghost data:', error);
                           console.log(xhr.responseText); // 서버 응답 본문 확인
                    }
                });
            }
function transformUdeath(udeath) {
    if (udeath >= 10) {
        return 1;
    } else if (udeath === 9) {
        return 2;
    } else if (udeath === 8) {
        return 3;
    } else if (udeath === 7) {
        return 4;
    } else if (udeath === 6) {
        return 5;
    } else if (udeath === 5) {
        return 6;
    } else if (udeath === 4) {
        return 7;
    } else if (udeath === 3) {
        return 8;
    } else if (udeath === 2) {
        return 9;
    } else if (udeath === 1) {
        return 10;
    }
    return udeath;
}


// 고패치레이더데이터 // 

                function fetchGhostData(u_teamposition) {
                    $.ajax({
                        url: 'getGhostDataList.do',
                        type: 'GET',
                        dataType: 'json',
                        success: function(ghostDataArray) {
                            // 고스트 데이터를 가져와서 차트 데이터 업데이트
                            ghostData = ghostDataArray.ghostDataArray;

                            // 유저 데이터의 팀 포지션
                             // 예시로 BOTTOM으로 설정
                        
                            // 일치하는 데이터 찾기
                            var matchedGhostData = ghostData.find(function(ghostData) {
                                return ghostData.g_teamposition === u_teamposition;
                            });

                            // matchedGhostData가 null이 아니면 데이터 활용
                            if (matchedGhostData) {
                                // matchedGhostData를 이용해서 필요한 작업 수행
                                console.log("Matched Ghost Data:", matchedGhostData);
                                // 여기에 차트 업데이트 등 작업 추가
                                var gdeath = matchedGhostData.g_death;
                                var ggold = matchedGhostData.g_gold;
                                var gdamage = matchedGhostData.g_damage;
                                var gwardsplaced = matchedGhostData.g_wardsplaced;
                                var gminionkill = matchedGhostData.g_minionkill;
                                
                                var modifiedGdeath = transformUdeath(gdeath);

                            option.series[0].data[0].value = [
                               modifiedGdeath,
                                   ggold,
                                   gdamage,
                                   gwardsplaced,
                                   gminionkill
                                            ];
                                            
                                            // 차트 업데이트
                                            radarChart.setOption(option);
                                
                                
                            } else {
                                console.log("No matching ghost data found for user's team position.");
                            }
                        },
                        error: function(xhr, status, error) {
                            console.error('Error fetching ghost data:', error);
                            console.log(xhr.responseText); // 서버 응답 본문 확인
                        }
                    });
                }
                function transformGdeath(gdeath) {
                    if (gdeath >= 10) {
                        return 1;
                    } else if (gdeath === 9) {
                        return 2;
                    } else if (gdeath === 8) {
                        return 3;
                    } else if (gdeath === 7) {
                        return 4;
                    } else if (gdeath === 6) {
                        return 5;
                    } else if (gdeath === 5) {
                        return 6;
                    } else if (gdeath === 4) {
                        return 7;
                    } else if (gdeath === 3) {
                        return 8;
                    } else if (gdeath === 2) {
                        return 9;
                    } else if (gdeath === 1) {
                        return 10;
                    }
                    return gdeath; // Return the original value if no condition is met
                }

                // 페이지가 로드되면 유저 데이터와 고스트 데이터를 가져와서 차트에 적용
                fetchUserRadarData();
                fetchGhostData();
                
                
                
                
                radarChart.setOption(option);

                document.querySelector('.darkmode').addEventListener('click', function () {
                    isDarkMode = document.body.dataset.darkmode === 'on';

                    option.legend.textStyle.color = isDarkMode ? '#e2dddd' : '#1e1f21';
                    option.radar.axisLabel.textStyle.color = isDarkMode ? '#e2dddd' : '#1e1f21';
                    option.radar.name.textStyle.color = isDarkMode ? '#e2dddd' : '#1e1f21';

                    radarChart.setOption(option);
                }, false);
            });
        </script>
</body>
</html>