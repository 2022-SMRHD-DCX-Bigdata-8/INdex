<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>L.GM</title>
<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.15.0/css/all.css">
<link rel="stylesheet" href="assets/css/L_champion.css">
<style>
    #editBox{
        visibility: hidden;
    }
     html,
    body {
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

    #toggle-radio-dark:checked~.darkmode-bg {
        border-radius: 15px 50px 50px 15px;
        top: 5px;
        left: 44px;
    }
</style>
</head>
<body>
 <header class="header">
        <div class="logo">
            <a href="goMain.do"><img src="assets/img/logo.png" alt="" class="chal"></a>
            <a href="goMain.do" class="lgm-link">L.gm</a>
        </div>

        <div class="dkdk">
            <div class="darkmode">
                <div class="inner">
                    <input type="radio" name="toggle" id="toggle-radio-light" checked><label for="toggle-radio-light"
                        class="tolight"><i class="fas fa-sun tolight"></i></label>
                    <input type="radio" name="toggle" id="toggle-radio-dark"><label for="toggle-radio-dark"
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
                    <h3>내 정보 </h3>
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

        <nav class="side_bar">
            <div class="side_navbar" style="border: 1;">
                <form action="#">
                    <div id="tear">
                        <img src="https://opgg-static.akamaized.net/images/medals_new/gold.png?image=q_auto,f_webp,w_144&amp;v=1692255489132"
                            alt="GOLD">
                        <p id="nick">렝가는유미가될래요</p>
                        <button id="renewal">갱신</button>
                    </div>
                </form>
                <a href="goMain.do">통계</a>
                <a href="champion.do">챔피언분석</a>
                <!-- <a href="#">대전기록</a>  -->
                <a href="https://www.leagueoflegends.com/ko-kr/news/tags/patch-notes/">패치노트</a>
            </div>

        </nav>

        <div class="body_main">
            <div>
                <input type="text" placeholder="챔피언 검색">
            </div>
            <nav class="champion">
                <ul>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>가렌</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Galio.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>갈리오</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gangplank.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>갱플랭크</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gragas.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>그라가스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Graves.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>그레이브즈</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gwen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>그웬</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gnar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>나르</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nami.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>나미</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nasus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>나서스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Naafiri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>나피리</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nautilus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>노틸러스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nocturne.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>녹턴</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nunu.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>누누와 윌럼프</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nidalee.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>니달리</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Neeko.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>니코</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nilah.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>닐라</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Darius.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>다리우스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Diana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>다이애나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Draven.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>드레이븐</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ryze.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>라이즈</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rakan.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>라칸</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rammus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>람머스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lux.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>럭스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rumble.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>럼블</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Renata.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>레나타 글라스크</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Renekton.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>레넥톤</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Leona.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>레오나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/RekSai.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>렉사이</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rell.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>렐</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rengar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>렝가</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lucian.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>루시안</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lulu.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>룰루</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Leblanc.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>르블랑</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/LeeSin.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>리 신</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Riven.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>리븐</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lissandra.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>리산드라</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lillia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>릴리아</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/MasterYi.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>마스터 이</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Maokai.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>마오카이</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Malzahar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>말자하</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Malphite.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>말파이트</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Mordekaiser.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>모데카이저</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Morgana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>모르가나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/DrMundo.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>문도 박사</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/MissFortune.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>미스 포츈</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Milio.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>밀리오</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Bard.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>바드</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Varus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>바루스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Veigar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>베이가</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Vayne.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>베인</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Vex.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>벡스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Belveth.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>벨베스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Velkoz.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>벨코즈</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Volibear.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>볼리베어</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Braum.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>브라움</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Brand.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>브랜드</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Vladimir.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>블라디미르</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Blitzcrank.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>블리츠크랭크</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Viego.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>비에고</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Viktor.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>빅토르</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Poppy.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>뽀삐</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Samira.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>사미라</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sion.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>사이온</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sylas.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>사일러스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Shaco.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>샤코</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Senna.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>세나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Seraphine.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>세라핀</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sejuani.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>세주아니</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sett.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>세트</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sona.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>소나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Soraka.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>소라카</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Shen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>쉔</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Shyvana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>쉬바나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Swain.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>스웨인</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Skarner.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>스카너</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sivir.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>시비르</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/XinZhao.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>신 짜오</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Syndra.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>신드라</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Singed.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>신지드</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Thresh.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>쓰레쉬</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ahri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아리</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Amumu.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아무무</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/AurelionSol.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아우렐리온 솔</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ivern.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아이번</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Azir.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아지르</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Akali.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아칼리</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Akshan.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아크샨</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Aatrox.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아트록스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Aphelios.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아펠리오스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Alistar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>알리스타</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Annie.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>애니</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Anivia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>애니비아</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ashe.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>애쉬</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Yasuo.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>야스오</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ekko.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>에코</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Elise.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>엘리스</span>
                            </div>
                        </a>    
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/MonkeyKing.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>오공</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ornn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>오른</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Orianna.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>오리아나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Olaf.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>올라프</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Yone.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>요네</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Yorick.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>요릭</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Udyr.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>우디르</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Urgot.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>우르곳</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Warwick.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>워윅</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Yuumi.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>유미</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Irelia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>이렐리아</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Evelynn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>이블린</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ezreal.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>이즈리얼</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Illaoi.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>일라오이</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/JarvanIV.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>자르반 4세</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Xayah.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>자야</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zyra.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>자이라</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Janna.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>잔나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jax.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>잭스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zed.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>제드</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Xerath.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>제라스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zeri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>제리</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jayce.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>제이스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zoe.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>조이</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ziggs.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>직스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jhin.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>진</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zilean.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>질리언</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jinx.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>징크스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Chogath.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>초가스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Karma.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카르마</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Camille.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카밀</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kassadin.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카사딘</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Karthus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카서스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Cassiopeia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카시오페아</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kaisa.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카이사</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Khazix.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카직스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Katarina.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카타리나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kalista.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>칼리스타</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kennen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>케넨</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Caitlyn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>케이틀린</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kayn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>케인</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kayle.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>케일</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/KogMaw.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>코그모</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Corki.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>코르키</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Quinn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>퀸</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/KSante.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>크산테</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kled.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>클레드</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Qiyana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>키아나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kindred.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>킨드레드</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Taric.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>타릭</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Talon.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>탈론</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Taliyah.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>탈리야</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/TahmKench.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>탐 켄치</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Trundle.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>트런들</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Tristana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>트리스타나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Tryndamere.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>트린다미어</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/TwistedFate.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>트위스티드 페이트</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Twitch.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>트위치</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Teemo.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>티모</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Pyke.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>파이크</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Pantheon.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>판테온</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Fiddlesticks.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>피들스틱</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Fiora.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>피오라</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Fizz.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>피즈</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Heimerdinger.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>하이머딩거</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Hecarim.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>헤카림</span>
                            </div>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>

    </div>

    <script src="https://code.jquery.com/jquery-3.7.0.min.js"
    integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
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
                    bodyMain.style.background = "#1e1f21";                          // 다크모드에서 바디 색상 변경
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
                        bodyMain.style.background = "#1e1f21"; // 다크모드에서 바디 색상 변경
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
                        bodyMain.style.background = "#e2dddd"; // 라이트 모드에서 바디 색상 변경
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

                    // 여기서 원하는 작업을 수행
                    renewalButton.style.background = "#D3D3D3";
                    renewalButton.style.color = "#1e1f21";
                    console.log("클릭");


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
        
    </script>


</body>
</html>