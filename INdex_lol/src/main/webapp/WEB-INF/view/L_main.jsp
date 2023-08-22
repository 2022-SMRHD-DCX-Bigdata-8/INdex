<%@page import="com.smhrd.entity.L_champimg"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.entity.L_userdata"%>
<%@page import="com.smhrd.entity.L_user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/echarts/5.4.2/echarts.min.js"></script>
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
	padding: 5px;
	border-radius: 1.5em;
	background-color: rgba(0, 0, 0, 0.1);
	justify-content: right;
	position: absolute;
	/* 추가 */
	bottom: 7px;
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
	List<L_userdata> userdataDesc = (List<L_userdata>) session.getAttribute("userdataDesc");
	List<L_userdata> champDesc = (List<L_userdata>) session.getAttribute("champDesc");
	List<L_champimg> champimg = (List<L_champimg>) session.getAttribute("champimg");

	System.out.println("success" + userdataDesc);
	
	String[] arr = new String[5];
	for (int j = 0; j < 5; j++) {
		for (int i = 0; i < champimg.size(); i++) {
			if (champDesc.get(j).getU_champ().equals(champimg.get(i).getChamp_nick())) {
			arr[j] = champimg.get(i).getChamp_img();
			}
		}
	}

	int allkill = 0;
	int alldeath = 0;
	int allassist = 0;
	for (int i = 0; i < userdataDesc.size(); i++) {
		allkill += userdataDesc.get(i).getU_kill();
		alldeath += userdataDesc.get(i).getU_death();
		allassist += userdataDesc.get(i).getU_assist();
	}
	double K = Math.round(allkill / (double) userdataDesc.size() * 10) / 10.0;
	double D = Math.round(alldeath / (double) userdataDesc.size() * 10) / 10.0;
	double A = Math.round(allassist / (double) userdataDesc.size() * 10) / 10.0;
	double KDA = Math.round((K + A) / D * 10) / 10.0;
	System.out.println(KDA);

	int wincnt = 0;
	int losecnt = 0;
	for (int i = 0; i < 20; i++) {
		if (userdataDesc.get(i).getU_winlose().equals("true")) {
			wincnt += 1;
		} else if (userdataDesc.get(i).getU_winlose().equals("false")) {
			losecnt += 1;
		}
	}
	int winlose = (int) ((wincnt / 20.0) * 100);

	int champ1kill = 0;
	int champ1death = 0;
	int champ1assist = 0;
	double[][] Array = new double[5][3];
	for (int j = 0; j < 5; j++) {
		for (int i = 0; i < userdata.size(); i++) {
			if (champDesc.get(j).getU_champ().equals(userdata.get(i).getU_champ())) {
		champ1kill += userdata.get(i).getU_kill();
		champ1death += userdata.get(i).getU_death();
		champ1assist += userdata.get(i).getU_assist();
			}
		}
		Array[j][0] = Math.round(champ1kill / (double) champDesc.get(j).getChampcnt() * 10) / 10.0;
		champ1kill = 0;
		Array[j][1] = Math.round(champ1death / (double) champDesc.get(j).getChampcnt() * 10) / 10.0;
		champ1death = 0;
		Array[j][2] = Math.round(champ1assist / (double) champDesc.get(j).getChampcnt() * 10) / 10.0;
		champ1assist = 0;
	}
	double champAvg1 = Math.round((Array[0][0] + Array[0][2]) / Array[0][1] * 10) / 10.0;
	double champAvg2 = Math.round((Array[1][0] + Array[1][2]) / Array[1][1] * 10) / 10.0;
	double champAvg3 = Math.round((Array[2][0] + Array[2][2]) / Array[2][1] * 10) / 10.0;
	double champAvg4 = Math.round((Array[3][0] + Array[3][2]) / Array[3][1] * 10) / 10.0;
	double champAvg5 = Math.round((Array[4][0] + Array[4][2]) / Array[4][1] * 10) / 10.0;
	%>
	<header class="header">
		<div class="logo">
			<a href="#"><img src="/HTML/로고.png" alt="" class="chal"></a> <a
				href="#" class="lgm-link">L.gm</a>
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
				<img class="profile-image"
					src="/HTML/KakaoTalk_20230814_124926300.jpg" alt="프로필 사진">
			</div>
			<div id="editBox">
				<div id="edit-box-tool">
					<h3>내 정보</h3>
					<a href="#" class="info">내정보 수정</a>
				</div>
			</div>
		</div>

	</header>

	<div id="wrap">

		<nav>
			<div class="side_navbar" style="border: 1;">
				<form action="#">
					<div id="tear">
						<img
							src="https://opgg-static.akamaized.net/images/medals_new/gold.png?image=q_auto,f_webp,w_144&amp;v=1692255489132"
							alt="GOLD">
						<p id="nick">${user.u_nick}</p>
						<%
						if (userdata == null) {
						%>
						<button id="new_renewal">갱신</button>
						<%
						} else {
						%>

						<button id="renewal">갱신</button>
						<%
						}
						%>
					</div>
				</form>

				<a href="#">통계</a> <a href="champion.do">챔피언분석</a> <a href="#">대전기록</a>
				<a href="#">패치노트</a>

			</div>

		</nav>


		<!-- 대시보드 수정할것들!!!! -->
		<div class="body_main">


			<div class="bodyfirst">
				<div id="chartAll">
					<div id="chart" style="width: 400px; height: 300px;"></div>
				</div>

				<div id="kdaavg">
					<div id="KDA">
						<span> <%=K%>
						</span> / <span class="death"> <%=D%>
						</span> / <span> <%=A%>
						</span>
					</div>

					<div class="ratio"><%=KDA%></div>

				</div>


				<div id="best5Box">
					<div class="champion-box">
						<div class="faced">
							<img class="faceimg"
								src="<%=arr[0]%>">
						</div>

						<div class="best5">
							<div class="champname">
								<%=champDesc.get(0).getU_champ()%>
							</div>
							<div class="csavg">CS 176.3 (6.6)</div>
						</div>

						<div class="champavg">
							<div>
								평점<%=champAvg1%></div>
							<div><%=Array[0][0]%>/<%=Array[0][1]%>/<%=Array[0][2]%></div>
						</div>

						<div class="played">
							<div class="cnt">
								<%=champDesc.get(0).getChampcnt()%>게임
							</div>
						</div>
					</div>

					<div class="champion-box">
						<div class="faced">
							<img class="faceimg"
								src="<%=arr[1]%>">
						</div>

						<div class="best5">
							<div class="champname">
								<%=champDesc.get(1).getU_champ()%>
							</div>
							<div class="csavg">CS 176.3 (6.6)</div>
						</div>

						<div class="champavg">
							<div>
								평점<%=champAvg2%></div>
							<div><%=Array[1][0]%>/<%=Array[1][1]%>/<%=Array[1][2]%></div>
						</div>

						<div class="played">
							<div class="cnt"><%=champDesc.get(1).getChampcnt()%>게임
							</div>
						</div>
					</div>

					<div class="champion-box">
						<div class="faced">
							<img class="faceimg"
								src="<%=arr[2]%>">
						</div>

						<div class="best5">
							<div class="champname">
								<%=champDesc.get(2).getU_champ()%>
							</div>
							<div class="csavg">CS 176.3 (6.6)</div>
						</div>

						<div class="champavg">
							<div>
								평점<%=champAvg3%></div>
							<div><%=Array[2][0]%>/<%=Array[2][1]%>/<%=Array[2][2]%></div>
						</div>

						<div class="played">
							<div class="cnt"><%=champDesc.get(2).getChampcnt()%>게임
							</div>
						</div>
					</div>

					<div class="champion-box">
						<div class="faced">
							<img class="faceimg"
								src="<%=arr[3]%>">
						</div>

						<div class="best5">
							<div class="champname">
								<%=champDesc.get(3).getU_champ()%>
							</div>
							<div class="csavg">CS 176.3 (6.6)</div>
						</div>

						<div class="champavg">
							<div>
								평점<%=champAvg4%></div>
							<div><%=Array[3][0]%>/<%=Array[3][1]%>/<%=Array[3][2]%></div>
						</div>

						<div class="played">
							<div class="cnt"><%=champDesc.get(3).getChampcnt()%>게임
							</div>
						</div>
					</div>

					<div class="champion-box">
						<div class="faced">
							<img class="faceimg"
								src="<%=arr[4]%>">
						</div>

						<div class="best5">
							<div class="champname">
								<%=champDesc.get(4).getU_champ()%>
							</div>
							<div class="csavg">CS 176.3 (6.6)</div>
						</div>

						<div class="champavg">
							<div>
								평점<%=champAvg5%></div>
							<div><%=Array[4][0]%>/<%=Array[4][1]%>/<%=Array[4][2]%></div>
						</div>

						<div class="played">
							<div class="cnt"><%=champDesc.get(4).getChampcnt()%>게임
							</div>
						</div>
					</div>
				</div>

				<div id="radarChartAll">
					<div class="card-body">
						<div id="radarChart" style="width: 400%; height: 400px;"
							class="echart"></div>
					</div>
				</div>
			</div>

			<table border="1">
				<c:forEach var="user" items="${userdata}">
					<tr>

						<td>챔피언명 ${user.u_champ}</td>
						<td>레벨 ${user.u_level}</td>
						<td>골드량 ${user.u_gold}</td>
						<td>피해량 ${user.u_damage}</td>
						<td>킬 ${user.u_kill}</td>
						<td>데스 ${user.u_death}</td>
						<td>어시 ${user.u_assist}</td>
						<td>플레이타임 ${user.u_playtime}</td>
						<td>와드 파괴수 ${user.u_wardskill}</td>
						<td>와드 설치수 ${user.u_wardsplaced}</td>

						<!-- 다른 필드들도 위와 같이 출력 -->
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>




	<script src="https://code.jquery.com/jquery-3.7.0.min.js"
		integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
		crossorigin="anonymous">
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
        // 다크모드 변환 시작
        document.addEventListener('DOMContentLoaded', function () {
            if (document.querySelector('.darkmode')) {
                const header = document.querySelector('.header');
                const lgmLink = document.querySelector('.lgm-link');
                const sideNav = document.querySelector('nav');
                const bodyMain = document.querySelector('.body_main');
                const wrap = document.querySelector('#wrap')
                const renewalButton = document.querySelector('#renewal');
                let countdownTime = 120; // 카운트 다운 시간 (초 단위)
                let canRenew = true; // 클릭 가능한 상태를 나타내는 변수
                const countdownElement = document.querySelector('#countdown'); // 시간을 업데이트할 엘리먼트


                if (localStorage.getItem("darkmode") == 'on') {
                    document.body.dataset.darkmode = 'on';
                    document.querySelector('#toggle-radio-dark').checked = true;
                    header.style.background = "#1e1f21";                            // 다크 모드에서 헤더 배경색변경
                    header.style.color = "#e8e8e8";                                 // 다크 모드에서 헤더 텍스트변경
                    lgmLink.style.color = "#e8e8e8";                                // 다크 모드에서 l.gm 텍스트변경
                    sideNav.style.background = "#1e1f21";                           // 다크 모드에서 사이드바 배경색변경
                    bodyMain.style.color = "#e8e8e8";                               // 다크 모드에서 텍스트 색상변경
                    bodyMain.style.background = "#e8e8e8";                          // 다크모드에서 바디 색상 변경
                    header.style.boxShadow = "0 2px 4px rgba(239, 237, 237, 0.3)"; // 다크모드에서 그림자 설정
                    wrap.style.background = "#1e1f21";
                    renewalButton.style.background = "#462679"; // 다크 모드에서 버튼 배경색 변경
                    renewalButton.style.color = "#e8e8e8"
                    sideNav.style.boxshadow= "0px 0px 6px rgba(255, 255, 255, 0.5)";
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
                        bodyMain.style.background = "#e8e8e8"; // 다크모드에서 바디 색상 변경
                        header.style.boxShadow = "0 2px 4px rgba(239, 237, 237, 0.3)"; // 다크모드에서 그림자 설정
                        wrap.style.background = "#1e1f21";
                        renewalButton.style.background = "#462679"; // 다크 모드에서 버튼 배경색 변경
                        renewalButton.style.color = "#e8e8e8";
                        sideNav.style.boxshadow= "0px 0px 6px rgba(255, 255, 255, 0.5)";

                    } else if (e.target.classList.contains('tolight')) {
                        document.body.dataset.darkmode = 'off';
                        localStorage.setItem("darkmode", "off");
                        header.style.background = "#e2dddd"; // 라이트 모드 에서 헤더 배경색변경
                        header.style.color = "#000"; // 라이트 모드에서 헤더 텍스트변경
                        lgmLink.style.color = "#000"; // 라이트 모드에서 l.gm 텍스트변경
                        sideNav.style.background = "#e2dddd"; // 라이트 모드에서 사이드바 배경색변경
                        bodyMain.style.color = "#000"; // 라이트 모드에서 텍스트 색상변경
                        bodyMain.style.background = "#000"; // 라이트 모드에서 바디 색상 변경
                        header.style.boxShadow = "0 2px 4px rgba(0, 0, 0, 0.3)"; // 라이트 모드에서 그림자 설정
                        wrap.style.background = "#e2dddd";
                        renewalButton.style.background = "#462679"; // 다크 모드에서 버튼 배경색 변경
                        renewalButton.style.color = "#e8e8e8";
                        sideNav.style.boxshadow= "0px 0px 1px rgba(0, 0, 0, 0.5)";

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

                    newrefreshPlayData(userId, userPuuid);
                   // refreshPlayData(userId, userPuuid);


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
        
        function newrefreshPlayData(userId, userPuuid) {
        	console.log(userId)
        	console.log(userPuuid)
            $.ajax({
                url: "newUserLogin.do", // 서버의 처리 URL
                method: "POST",
                data: {
                    userId: userId,
                    userPuuid: userPuuid
                },
                success: function(response) {
                    // 서버 응답 성공 시 동작
                    console.log("Rank data refreshed successfully.");
                    console.log(response);
                },
                error: function(error) {
                    // 서버 응답 실패 시 동작
                    console.log(error);
                }
            });
        }

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
                    console.log(response);
                },
                error: function(error) {
                    // 서버 응답 실패 시 동작
                    console.log(error);
                }
            });
        }
        
        $("#new_renewal").click(function() {
            console.log("new_renewal 버튼 클릭");
            // ... 나머지 코드 ...
        });

        $("#renewal").click(function() {
            console.log("renewal 버튼 클릭");
            // ... 나머지 코드 ...
        });

        
    </script>

	<!-- 파이형 차트 수정 -->
	<script>
		// 파이형차트
        var chartDom = document.getElementById('chart');
        var myChart = echarts.init(chartDom); // Initialize myChart

        option = {
            title: {
                text: '<%=20%>전 <%=wincnt%>승 <%=losecnt%>패',
                subtext: 'Test Data',
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
                    text: ' <%=winlose%>% ' ,
                    font: 'bold 30px Arial', // 폰트 스타일
                    fill: '#333' // 텍스트 색상

                }
            }],
            legend: {
            	show: false, 
                orient: 'vertical',
                left: 'left'
            },
            series: [
                {
                    name: '승패',
                    type: 'pie',
                    radius: ['60%', '35%'],
                    data: [
                    	// 수정할 부분
                        { value: <%=losecnt%>, name: '패', itemStyle: { color: 'red' } }, // 패 시리즈 색상 변경
                        { value: <%=wincnt%>, name: '승', itemStyle: { color: 'blue' } } // 승 시리즈 색상 변경
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
    </script>

	<!-- 방사형차트 스크립트 수정 -->
	<script>
              document.addEventListener("DOMContentLoaded", () => {
                var radarChart = echarts.init(document.querySelector("#radarChart"));
                radarChart.setOption({
                  legend: {
                    data: ['GhostData', 'PlayerData']
                  },
                  radar: {
                    shape: 'polygon',
                    indicator: [
                      { name: '생존력', max: 6500 },
                      { name: '성장력', max: 16000 },
                      { name: '전투력', max: 30000 },
                      { name: '시야력', max: 38000 },
                      { name: '총 골드량', max: 52000 }
                    ]
                  },
                  series: [{
                    name: 'Budget vs spending',
                    type: 'radar',
                    data: [
                      { 
                        value: [4200, 3000, 20000, 35000, 50000],
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
                        value: [5000, 14000, 28000, 26000, 42000],
                        name: 'PlayerData',
                        areaStyle: {
                          color: 'rgba(253, 101, 5, 0.35)'
                        },
                        itemStyle: {
                          color: 'rgb(253, 101, 5)', // 변경하려는 색상
                          
                           // 변경하려는 테두리 색상
                        },
                        symbol: 'none',
                      }
                    ]
                  }]
                });
              });
            </script>
</body>
</html>