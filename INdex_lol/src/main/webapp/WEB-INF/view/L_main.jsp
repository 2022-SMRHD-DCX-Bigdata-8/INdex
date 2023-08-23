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
				<img class="profile-image" src="유저2.png" alt="프로필 사진">
			</div>
			<div id="editBox">
				<div id="edit-box-tool">
					<h3>내 정보</h3>
					<a href="#" class="info">내정보 수정</a>
				</div>

				<div>
					<a href="#" class="info" id="withdrawLink">회원 탈퇴</a>

				</div>
				<div>
					<a href="#" class="info" id="withdrawLink">로그아웃</a>

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
						<p id="nick">렝가는유미될래요</p>
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
						<img class="faceimg"
							src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378">
					</div>

					<div class="best5">
						<div class="champname">가렌</div>
						<div class="csavg">CS 176.3 (6.6)</div>
					</div>

					<div class="champavg">
						<div>평점</div>
						<div>K/D/A</div>
					</div>

					<div class="played">
						<div class="cnt">6게임</div>
					</div>
				</div>

				<div class="champion-box">
					<div class="faced">
						<img class="faceimg"
							src="https://opgg-static.akamaized.net/meta/images/lol/champion/Galio.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378">
					</div>

					<div class="best5">
						<div class="champname">갈리오</div>
						<div class="csavg">CS 176.3 (6.6)</div>
					</div>

					<div class="champavg">
						<div>평점</div>
						<div>K/D/A</div>
					</div>

					<div class="played">
						<div class="cnt">6게임</div>
					</div>
				</div>

				<div class="champion-box">
					<div class="faced">
						<img class="faceimg"
							src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gangplank.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378">
					</div>

					<div class="best5">
						<div class="champname">갱플랭크</div>
						<div class="csavg">CS 176.3 (6.6)</div>
					</div>

					<div class="champavg">
						<div>평점</div>
						<div>K/D/A</div>
					</div>

					<div class="played">
						<div class="cnt">6게임</div>
					</div>
				</div>

				<div class="champion-box">
					<div class="faced">
						<img class="faceimg"
							src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gragas.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378">
					</div>

					<div class="best5">
						<div class="champname">그라가스</div>
						<div class="csavg">CS 176.3 (6.6)</div>
					</div>

					<div class="champavg">
						<div>평점</div>
						<div>K/D/A</div>
					</div>

					<div class="played">
						<div class="cnt">6게임</div>
					</div>
				</div>

				<div class="champion-box">
					<div class="faced">
						<img class="faceimg"
							src="https://opgg-static.akamaized.net/meta/images/lol/champion/Graves.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378">
					</div>

					<div class="best5">
						<div class="champname">그레이브즈</div>
						<div class="csavg">CS 176.3 (6.6)</div>
					</div>

					<div class="champavg">
						<div>평점</div>
						<div>K/D/A</div>
					</div>

					<div class="played">
						<div class="cnt">6게임</div>
					</div>
				</div>
			</div>

			<div class="bodyfirst">

				<div id="chartAll">
					<div id="chart">
						<canvas>

                        </canvas>
					</div>
				</div>

				<div id="radarChartAll">
					<div id="radarChart" class="echart">
						<canvas>

                        </canvas>
					</div>
				</div>
				<div id="kdaavg">
					<div id="KDA">
						<span> 10 </span> / <span class="death"> 1 </span> / <span>
							20 </span>
					</div>

					<div class="ratio">30.0</div>

				</div>

				<div id="wrapper">
					<div class="que_container">
						<button class="lastQue animated-item1">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main1" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item2 -->
						<button class="lastQue animated-item2">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main2" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item4 -->
						<button class="lastQue animated-item3">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main3" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item6 -->
						<button class="lastQue animated-item4">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main4" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item8 -->
						<button class="lastQue animated-item5">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main5" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item10 -->
						<button class="lastQue animated-item6">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main6" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item12 -->
						<button class="lastQue animated-item7">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main7" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item14 -->
						<button class="lastQue animated-item8">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main8" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item16 -->
						<button class="lastQue animated-item9">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main9" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item18 -->
						<button class="lastQue animated-item10">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main10" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item20 -->
						<button class="lastQue animated-item11">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main11" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item -->
						<button class="lastQue animated-item12">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main12" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item -->
						<button class="lastQue animated-item13">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main13" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item -->
						<button class="lastQue animated-item14">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main14" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item -->
						<button class="lastQue animated-item15">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main15" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item -->
						<button class="lastQue animated-item16">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main16" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item -->
						<button class="lastQue animated-item17">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main17" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item -->
						<button class="lastQue animated-item18">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main18" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item -->
						<button class="lastQue animated-item19">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main19" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item -->
						<button class="lastQue animated-item20">
							<div>
								<span id="ChampImg"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378"
									alt="선택한 챔프사진" /></span>
							</div>

							<div class="item-content">
								<span>k/d/a</span>
								<div>

									<span>win or loss (색으로 표현)</span> <br> <span>게임 플레이
										시간</span>
								</div>
								<div class="expandable-content">
									<div class="expanded-content-inner">
										<div class="expanded-content-wrapper">

											<div>
												<p>최근 매치 기준으로 챔피언 통계를 먼저 보여드립니다. 시즌 전체의 챔피언 통계는 현재 서버가
													열심히 산출 중입니다. 잠시 후 페이지를 새로고침 해주십시오.</p>
											</div>
											<!-- 실제 상세 정보 내용을 여기에 입력 -->
											게임 상세 정보를 표시합니다.
											<div id="info1">승리 or 패배</div>

											<canvas id="main20" style="width: 800px; height: 600px;"></canvas>
										</div>
									</div>
								</div>

							</div>
						</button>
						<!-- lastQue animated-item -->




					</div>
					<!-- wrapper -->


				</div>

			</div>

		</div>

		<!-- 다른 필드들도 위와 같이 출력 -->

	</div>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"
		integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
		crossorigin="anonymous"></script>
	<script type="text/javascript">
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
			            $(document).ready(function () {
			                $("#withdrawLink").click(function () {
			                    var password = prompt("비밀번호를 입력하세요:");
			                    if (password !== null) {
			                        // 비밀번호 검증 및 회원 탈퇴 처리 로직 추가
			                        // 탈퇴 성공 시 아래와 같이 알림을 표시할 수 있습니다.
			                        alert("회원 탈퇴가 성공적으로 완료되었습니다.");
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
                    renewalButton.disabled = true; // 버튼 비활성화

                    
                    var userId = "${user.u_id}";
                    var userPuuid = "${user.u_lolcd}";

                    // 여기 수정해야함 null !null 로 nerefresh , refresh 버튼 분기
                    //newrefreshPlayData(userId, userPuuid);
                    
    
                    renewalButton.style.background = "#D3D3D3";
                    renewalButton.style.color = "#1e1f21";
                    console.log("클릭");
                    
            
                    refreshPlayData(userId, userPuuid);

                    setTimeout(function () {
                        canRenew = true; // 버튼 클릭 활성화
                        console.log('다시 버튼을 클릭할 수 있습니다.');
                        renewalButton.style.background = "#462679";
                        renewalButton.style.color = "#e8e8e8";
                    }, 120000); // 120초 (2분)
                    
                }
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
                    console.log(response);
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
        var userId = '${user.u_id}';
        var userRank = '${user.u_rank}';
 		var userPosition = ""
 		console.log(userPosition)
        console.log(userId)
        console.log(userRank)
        
        
        
///////////////////////////////ajax 데이터 불러오기 /////////////////////////
///////////////////////////////////////////////////////////////////////////
        function fetchDataKDAWinlose() {
      
            $.ajax({
                url: 'kdaChart.do',
                type: 'GET', 
                dataType: 'json', 
                data: { userId: userId },
                success: function(data) {
                    console.log(data)
                    updateChart(data); // 받아온 데이터로 차트 업데이트
                    
                    
                },
                error: function(xhr, status, error) {
                
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
        function fetchDataChampImg() {
       
            $.ajax({
                url: 'getChampImg.do',
                type: 'GET', 
                dataType: 'json', 
                success: function(champImgData) {
                    console.log(champImgData)
                    //받아온 데이터로 차트 업데이트
                    
                    
                },
                error: function(xhr, status, error) {
                    // 요청이 실패했을 때 실행될 콜백 함수
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
        function fetchDataBest5() {
            $.ajax({
                url: 'getBest5Chart.do',
                type: 'GET', 
                dataType: 'json', 
                data: { userId: userId },
                success: function(bestChamp) {
                    console.log(bestChamp)
                    updateChampionBoxes(bestChamp)// 받아온 데이터로 차트 업데이트
                    
                    
                },
                error: function(xhr, status, error) {
                
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
        function fetchPlayData() {
        	
        	// 유저 대전기록 리스트 
            $.ajax({
                url: 'getPlayDataList.do',
                type: 'GET', 
                dataType: 'json', 
                data: { userId: userId },
                success: function(playDataList) {
                    console.log(playDataList)
                  // 받아온 데이터로 차트 업데이트
                    
                    
                },
                error: function(xhr, status, error) {
                
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
        
        function fetchGhostPlayData() {
            $.ajax({
                url: 'getGhostDataList.do',
                type: 'GET', 
                dataType: 'json', 
                data: { userRank: userRank },
                success: function(ghostplayDataList) {
                	
                    console.log(ghostplayDataList)
                  // 받아온 데이터로 차트 업데이트
                    
                    
                },
                error: function(xhr, status, error) {
                	console.log(userRank)
                
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
        function fetchUserRadarData() {
            $.ajax({
                url: 'getRadar.do',
                type: 'GET', 
                dataType: 'json', 
                data: { userId: userId },
                success: function(UserRadarData) {
                	
                    console.log(UserRadarData)
                  
                    
                    
                },
                error: function(xhr, status, error) {
                	
                
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
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
        
        
        function fetchUserTimeLineData() {
        	// u_id하고 matchcd 로 넘겨야함
            $.ajax({
                url: 'getUserTimeLineData.do',
                type: 'GET', 
                dataType: 'json', 
                data: { userId: userId },
                success: function(userTimeLineData) {
                	
                    console.log(userTimeLineData)
                  
                    
                    
                },
                error: function(xhr, status, error) {
                	
                
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
  
        
        
        
        
///////////////////////////////ajax 데이터 불러오기 끝 /////////////////////////
///////////////////////////////////////////////////////////////////////////
        fetchGhostPlayData();
        fetchPlayData();
        fetchDataChampImg();
        fetchUserRadarData();
        fetchGhostTimeLineData();
        fetchUserTimeLineData();
        
        
        $(document).ready(function () {
            $('.playDataList').click(function () {
                var userRank = $(this).data('userRank');
                  // position 부분
                fetchChartData(userRank);
            });
        });
        
        function fetchChartData(userRank) {
            $.ajax({
                url: 'getGhostTimeLineData.do',
                type: 'GET',
                dataType: 'json',
                data: {
                    userRank: userRank
                },
                success: function (chartData) {
                    drawChart(chartData);
                },
                error: function (xhr, status, error) {
                    console.error('데이터를 가져오는데 실패했습니다:', error);
                }
            });
        }
        
        function drawChart(chartData) {
        	console.log('드로우차트안입니다.')
            // 여기에서 차트를 그리는 로직을 구현
            // 예: Chart.js 등의 라이브러리를 사용하여 차트 그리기
            // chartData 객체를 이용하여 필요한 데이터 사용
        }
        
        function updateChampionBoxes(bestChamp) {
            var str = "championBoxes 들어왔습니다";
            console.log(str);
            console.log(bestChamp.champAvgArray.length);
            const championBoxes = $('.champion-box');

            for (let i = 0; i < bestChamp.champAvgArray.length; i++) {
                const championBox = championBoxes.eq(i);
                const champAvgData = bestChamp.champAvgArray[i];
                console.log(str);

                console.log(champAvgData);
                championBox.find('.champname').text(champAvgData.championName);
                championBox.find('.csavg').text(`CS ${champAvgData.csAvg}`);
                championBox.find('.champavg > div:first-child').text(champAvgData.k);
                championBox.find('.champavg > div:last-child').text(champAvgData.d);
                championBox.find('.played .cnt').text(`게임 ${champAvgData.played}`);
            }
        }
        
        fetchDataBest5();
        
        
      
      

        function updateChart(data) {
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

            myChart.setOption(option);
          
            
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

                myChart.setOption(option);
            }
        	
        }

        // 페이지 로딩 시 데이터 가져오고 차트 업데이트
       fetchDataKDAWinlose();
      
        
      
        
    </script>
	<!-- 방사형차트 스크립트 수정 -->
	<script>
            document.addEventListener("DOMContentLoaded", () => {
                var radarChart = echarts.init(document.querySelector("#radarChart"));

                var isDarkMode = document.body.dataset.darkmode === 'on';
                var ghostColor = isDarkMode ? '#e2dddd' : '#1e1f21';
                var playerColor = isDarkMode ? '#e2dddd' : '#1e1f21';

                var option = {
                    responsive: false,
                    legend: {
                        data: ['GhostData', 'PlayerData'],
                        textStyle: {
                            color: isDarkMode ? '#e2dddd' : '#1e1f21'
                        }
                    },
                    radar: {
                        shape: 'polygon',
                        indicator: [
                            { name: '생존력', max: 6500 },
                            { name: '성장력', max: 16000 },
                            { name: '전투력', max: 30000 },
                            { name: '시야력', max: 38000 },
                            { name: '총 골드량', max: 52000 }
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
	<script>
            var expandableButtons = document.querySelectorAll('.lastQue');

            expandableButtons.forEach(function (button) {
                var expandableContent = button.querySelector('.expandable-content');

                button.addEventListener('click', function (event) {
                    expandableContent.classList.toggle('expanded');
                    event.stopPropagation(); // 이벤트 전파 중지

                    if (expandableContent.classList.contains('expanded')) {
                        // 확장된 컨텐츠가 나타날 때
                        var spaceElement = document.createElement('div');
                        spaceElement.classList.add('expandable-space');
                        button.parentNode.insertBefore(spaceElement, button.nextSibling);
                    } else {
                        // 확장된 컨텐츠가 사라질 때
                        var spaceElement = button.nextElementSibling;
                        if (spaceElement && spaceElement.classList.contains('expandable-space')) {
                            spaceElement.remove();
                        }
                    }
                });
            });

            /* main1 에대한 스크립트 코드 */

            // 라인차트 main1~20 까지 적용
            // 같은데이터만 적용 되는듯 

            for (var i = 1; i <= 20; i++) {
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
        </script>
</body>
</html>