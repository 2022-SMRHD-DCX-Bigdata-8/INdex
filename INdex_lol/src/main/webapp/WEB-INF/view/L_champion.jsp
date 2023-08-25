<%@page import="com.smhrd.entity.L_user"%>
<%@page import="com.smhrd.entity.L_userdata"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>L.GM</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.0/css/all.css">
    <link rel="stylesheet" href="assets/css/L_champion.css">



    
       
    
</head>
<style>
    #editBox{
        visibility: hidden;
    }
    .profile-box{
        visibility: hidden;

    }
</style>
<style>
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

<body>

<%
	// session에서 사용자 정보를 꺼내기

	L_user user = (L_user) session.getAttribute("user");
	List<L_userdata> userdata = (List<L_userdata>) session.getAttribute("userdata");

	System.out.print("success" + userdata);
	%>
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
                    <a href="#" class="info">내정보 수정</a>
                    <div>
                        <a href="#" class="info" id="withdrawLink">회원 탈퇴</a>
                        

                    </div>

                    <div>
                        <a href="logout.do" >로그 아웃</a>
                        

                    </div>
                     ❤

                  </div>
            </div>
        </div>

    </header>

    <div id="wrap">

        <nav class="side_bar">
            <div class="side_navbar" style="border: 1;">
                <form action="#">
                    <div id="tear">
                         <img id="tierImage" src="" alt="tier">
						<p id="nick">${user.u_nick }</p>
                        <button id="renewal">갱신</button>
                    </div>
                </form>
                <a href="#">통계</a>
                <a href="#">챔피언분석</a>
                <a href="#">대전기록</a>
                <a href="#">패치노트</a>
            </div>

        </nav>

        <div class="body_main"  >
            
            <nav class="champion">
                <ul>
                    <li>
                        <a id="rkfps">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>가렌</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="rkffldh">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Galio.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>갈리오</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="rodvmffodzm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gangplank.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>갱플랭크</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="rmfkrktm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gragas.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>그라가스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="rmfpdlqmwm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Graves.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>그레이브즈</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="rmdnps">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gwen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>그웬</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="skfm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gnar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>나르</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="skal">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nami.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>나미</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="sktjtm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nasus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>나서스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="skvlfl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Naafiri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>나피리</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="shxlffjtm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nautilus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>노틸러스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="shrxjs">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nocturne.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>녹턴</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="snsndhkdnjffjavm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nunu.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>누누와 윌럼프</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="slekffl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nidalee.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>니달리</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="slzh">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Neeko.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>니코</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="slffk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nilah.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>닐라</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="ekfldntm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Darius.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>다리우스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="ekdldosk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Diana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>다이애나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="emfpdlqms">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Draven.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>드레이븐</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fkdlwm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ryze.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>라이즈</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fkzks">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rakan.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>라칸</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fkaajtm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rammus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>람머스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fjrtm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lux.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>럭스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fjaqmf">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rumble.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>럼블</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fpskxkrmffktmzm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Renata.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>레나타 글라스크</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fpsprxhs">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Renekton.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>레넥톤</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fpdhsk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Leona.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>레오나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fprtkdl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/RekSai.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>렉사이</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fpf">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rell.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>렐</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fpdrk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rengar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>렝가</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fntldks">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lucian.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>루시안</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fnffn">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lulu.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>룰루</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fmqmffkd">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Leblanc.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>르블랑</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fltls">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/LeeSin.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>리 신</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="flqms">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Riven.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>리븐</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="fltksemfk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lissandra.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>리산드라</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="flffldk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lillia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>릴리아</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="aktmxjdl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/MasterYi.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>마스터 이</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="akdhzkdl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Maokai.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>마오카이</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="akfwkgk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Malzahar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>말자하</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="akfvkdlxm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Malphite.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>말파이트</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="ahepzkdlwj">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Mordekaiser.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>모데카이저</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="ahfmrksk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Morgana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>모르가나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="ansehqkrtk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/DrMundo.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>문도 박사</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="altmvhcbs">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/MissFortune.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>미스 포츈</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="alffldh">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Milio.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>밀리오</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qkem">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Bard.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>바드</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qkfntm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Varus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>바루스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qkdl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Vi.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>바이</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qpdlrk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Veigar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>베이가</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qpdls">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Vayne.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>베인</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qprtm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Vex.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>벡스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qpfqptm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Belveth.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>벨베스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qpfzhwm"> 
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Velkoz.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>벨코즈</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qhfflqpdj">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Volibear.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>볼리베어</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qmfkdna">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Braum.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>브라움</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qmfosem">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Brand.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>브랜드</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qmffkelalfm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Vladimir.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>블라디미르</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qmfflcmzmfodzm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Blitzcrank.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>블리츠크랭크</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qldprh">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Viego.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>비에고</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="qlrxhfm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Viktor.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>빅토르</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="QhQl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Poppy.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>뽀삐</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tkalfk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Samira.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>사미라</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tkdldhs">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sion.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>사이온</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tkdlffjtm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sylas.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>사일러스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tizh">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Shaco.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>샤코</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tpsk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Senna.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>세나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tpfkvls">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Seraphine.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>세라핀</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tpwndksl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sejuani.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>세주아니</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tpxm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sett.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>세트</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="thsk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sona.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>소나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="thfkzk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Soraka.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>소라카</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tnps">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Shen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>쉔</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tnlqksk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Shyvana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>쉬바나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tmdnpdls">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Swain.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>스웨인</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tmzksj">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Skarner.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>스카너</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tlqlfm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sivir.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>시비르</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tlsWkdh">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/XinZhao.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>신 짜오</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tlsemfk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Syndra.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>신드라</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="tlswlem">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Singed.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>신지드</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="Tmfptnl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Thresh.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>쓰레쉬</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dkfl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ahri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아리</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dkanan">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Amumu.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아무무</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dkdnfpffldhsthf">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/AurelionSol.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아우렐리온 솔</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dkdlqjs">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ivern.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아이번</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dkwlfm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Azir.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아지르</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dkzkffl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Akali.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아칼리</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dkzmtis">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Akshan.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아크샨</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dkxmfhrtm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Aatrox.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아트록스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dkvpffldhtm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Aphelios.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>아펠리오스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dkffltmxk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Alistar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>알리스타</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dosl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Annie.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>애니</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="doslqldk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Anivia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>애니비아</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dotnl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ashe.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>애쉬</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="ditmdh">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Yasuo.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>야스오</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dpzh">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ekko.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>에코</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dpffltm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Elise.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>엘리스</span>
                            </div>
                        </a>    
                    </li>
                    <li>
                        <a href="#" id="dhrhd">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/MonkeyKing.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>오공</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dhfms">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ornn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>오른</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dhfldksk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Orianna.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>오리아나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dhffkvm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Olaf.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>올라프</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dysp">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Yone.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>요네</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dyflr">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Yorick.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>요릭</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dnelfm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Udyr.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>우디르</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dnfmrht">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Urgot.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>우르곳</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dnjdnlr">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Warwick.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>워윅</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dbal">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Yuumi.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>유미</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dlfpffldk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Irelia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>이렐리아</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dlqmffls">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Evelynn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>이블린</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dlwmfldjf">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ezreal.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>이즈리얼</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="dlffkdhdll">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Illaoi.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>일라오이</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wkfmqks4tp">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/JarvanIV.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>자르반 4세</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wkdi">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Xayah.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>자야</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wkdlfk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zyra.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>자이라</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wkzm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zac.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>자크</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wkssk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Janna.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>잔나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wortm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jax.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>잭스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wpem">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zed.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>제드</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wpfktm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Xerath.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>제라스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wpfl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zeri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>제리</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wpdltm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jayce.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>제이스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="whdl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zoe.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>조이</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wlrtm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ziggs.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>직스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wls">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jhin.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>진</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wlffldjs">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zilean.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>질리언</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="wldzmtm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jinx.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>징크스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="chrktm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Chogath.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>초가스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zkfmak">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Karma.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카르마</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zkalf">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Camille.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카밀</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zktkels">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kassadin.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카사딘</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zktjtm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Karthus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카서스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zktldhvpdk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Cassiopeia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카시오페아</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zkdltk"> 
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kaisa.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카이사</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zkwlrtm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Khazix.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카직스</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zkxkflsk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Katarina.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>카타리나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zkffltmxk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kalista.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>칼리스타</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zpsps">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kennen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>케넨</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zpdlxmffls">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Caitlyn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>케이틀린</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zpdls">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kayn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>케인</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zpdlf">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kayle.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>케일</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zhrmah">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/KogMaw.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>코그모</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zhfmzl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Corki.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>코르키</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="znls">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Quinn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>퀸</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zmtksxp">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/KSante.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>크산테</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zmffpem">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kled.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>클레드</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zldksk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Qiyana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>키아나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="zlsemfpem">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kindred.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>킨드레드</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="xkflr">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Taric.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>타릭</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="xkffhs">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Talon.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>탈론</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="xkffldi">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Taliyah.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>탈리야</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="xkazpscl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/TahmKench.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>탐 켄치</span>
                            </div>
                        </a>
                    </li>   
                    <li>
                        <a href="#" id="xmfjsemf">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Trundle.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>트런들</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="xmfltmxksk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Tristana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>트리스타나</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="xmflsekaldj">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Tryndamere.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>트린다미어</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="xmdnltmxlemvpdlxm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/TwistedFate.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>트위스티드 페이트</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="xmdnlcl">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Twitch.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>트위치</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="xlah">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Teemo.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>티모</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="vkdlzm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Pyke.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>파이크</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="vksxpdhs">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Pantheon.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>판테온</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="vlemftmxlr">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Fiddlesticks.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>피들스틱</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="vldhfk">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Fiora.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>피오라</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="vlwm">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Fizz.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>피즈</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="gkdlajeldrj">
                            <div>
                                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Heimerdinger.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                                    <span>하이머딩거</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" id="gpzkfla">
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
    <div class="profile_box1">
    
    <div class="profile-box" id="rkfps1">
        <div class="info-box">
            <div class="ghffl">
                <h1>가렌</h1>
                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Garen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                
            </div>
            <div class="dbgn">
                <h2>시작 아이템</h2>
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                
            </div>

            <div class="dbgn">
                <h2>코어 아이템</h2>
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6631.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3181.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3742.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                
            </div>
        </div>



        <div class="profile-box" id="rkffldh1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>갈리오</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Galio.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6656.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4637.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>




        <div class="profile-box" id="rodvmffodzm1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>갱플랭크</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gangplank.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>

                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2031.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3508.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6675.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6676.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">


                </div>
            </div>
        </div>

        <div class="profile-box" id="rmfkrktm1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>그라가스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gragas.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>

                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4636.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>





        <div class="profile-box" id="rmfpdlqmwm1">
            <div class="info-box">


                <div class="ghffl">
                    <h1>그레이브즈</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Graves.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>

                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1101.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3142.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6676.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>


        <div class="profile-box" id="rmdnps1">
            <div class="info-box">


                <div class="ghffl">
                    <h1>그웬</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gwen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">


                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3115.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4633.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">


                </div>
            </div>
        </div>

        <div class="profile-box" id="skfm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>나르</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Gnar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">

                </div>

                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3078.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3075.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>


        <div class="profile-box" id="skal1">
            <div class="info-box">


                <div class="ghffl">
                    <h1>나미</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nami.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>

                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4005.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2065.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3011.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>


        <div class="profile-box" id="sktjtm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>나서스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nasus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6632.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3110.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3065.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>


        
        <div class="profile-box" id="skvlfl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>나피리</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Naafiri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2031.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
                
                
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6692.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6694.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>


        <div class="profile-box" id="shxlffjtm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>노틸러스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nautilus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3858.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3001.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3050.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3109.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="shrxjs1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>녹턴</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nocturne.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1101.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6631.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6333.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>


        <div class="profile-box" id="snsndhkdnjffjavm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>누누와월럼프</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nunu.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204"
                        alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204"
                        alt="">
                
                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6667.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3075.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>

        <div class="profile-box" id="slekffl1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>니달리</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nidalee.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1101.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4636.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>

        <div class="profile-box" id="slzh1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>니코</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Neeko.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3152.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>

        <div class="profile-box" id="slffk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>닐라</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Nilah.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6676.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6675.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6673.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>

        <div class="profile-box" id="ekfldntm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>다리우스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Darius.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6631.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3742.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4401.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>


        <div class="profile-box" id="ekdldosk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>다이애나</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Diana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3115.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3152.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>

        <div class="profile-box" id="emfpdlqms1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>드레이븐</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Draven.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3078.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3134.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6676.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>


        <div class="profile-box" id="fkdlwm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>라이즈</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ryze.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6657.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3040.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>


        <div class="profile-box" id="fkzks1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>라칸</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rakan.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3858.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2065.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3050.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3011.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>


        <div class="profile-box" id="fkaajtm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>람머스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rammus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3075.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6665.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>


        <div class="profile-box" id="fjrtm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>럭스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lux.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6655.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>


        <div class="profile-box" id="fjaqmf1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>럼블</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rumble.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4637.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4636.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>

        <div class="profile-box" id="fpskxkrmffktmzm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>레나타글라스크</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Renata.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2065.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4005.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3011.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        
        <div class="profile-box" id="fpsprxhs1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>레넥톤</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Renekton.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6630.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3053.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="fpdhsk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>레오나</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Leona.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3858.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3001.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3109.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3050.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="fprtkdl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>렉사이</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/RekSai.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6631.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6333.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>



        <div class="profile-box" id="fpf1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>렐</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rell.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3858.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3001.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3109.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3050.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>

        
        <div class="profile-box" id="fpdrk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>렝가</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Rengar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6691.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3508.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="fntldks1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>루시안</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lucian.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    
                    
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6675.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="fnffn1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>룰루</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lulu.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2065.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3504.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3011.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="fmqmffkd1">
            <div class="info-box">


                <div class="ghffl">
                    <h1>르블랑</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Leblanc.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>

                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2031.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3087.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4636.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3100.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>

        <div class="profile-box" id="fltls1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>리신</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/LeeSin.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6630.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6333.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>


        <div class="profile-box" id="flqms1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>리븐</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Riven.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3074.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6692.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>

        <div class="profile-box" id="fltksemfk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>리산드라</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lissandra.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6656.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>

        <div class="profile-box" id="flffldk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>릴리아</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lillia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6653.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4637.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>

        <div class="profile-box" id="aktmxjdl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>마스터이</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/MasterYi.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3153.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3124.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3091.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="akdhzkdl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>마오카이</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Maokai.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4637.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6667.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>

        <div class="profile-box" id="akfwkgk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>말자하</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Malzahar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6653.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3116.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4637.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>

        <div class="profile-box" id="akfvkdlxm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>말파이트</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Malphite.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6662.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3075.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>

        <div class="profile-box" id="ahepzkdlwj1">
            <div class="info-box">


                <div class="ghffl">
                    <h1>모데카이저</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Mordekaiser.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3116.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6665.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4637.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="ahfmrksk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>모르가나</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Morgana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6653.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3116.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="ansehqkrtk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>문도박사</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/DrMundo.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3084.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3065.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>

        <div class="profile-box" id="altmvhcbs1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>미스포츈</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/MissFortune.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3142.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6676.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6694.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="alffldh1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>밀리오</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Milio.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2065.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3504.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3011.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="qkem1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>바드</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Bard.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3190.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3742.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3011.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
                </div>
        </div>

        <div class="profile-box" id="qkfntm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>바루스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Varus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2031.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>


                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3087.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3115.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4633.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="qkdl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>바이</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Vi.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6632.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6333.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="qpdlrk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>베이가</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Veigar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6656.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3089.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="qpdls1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>베인</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Vayne.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>


                <div class="dbgn">

                    
                    <h2>코어 아이템</h2>
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3087.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3078.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3153.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
            </div>
            </div>
        </div>

        <div class="profile-box" id="qprtm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>벡스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Vex.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                
                <div class="dbgn">

                    
                    
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6655.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="qpfqptm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>벨베스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Belveth.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3153.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6665.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="qpfzhwm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>벨코즈</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Velkoz.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">

                    
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6653.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3165.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="qhfflqpdj1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>볼리베어</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Volibear.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3115.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4633.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3181.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="qmfkdna1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>브라움</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Braum.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3858.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">

                    
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3190.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3109.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3050.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="qmfosem1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>브랜드</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Brand.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6653.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3116.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
            </div>
            </div>
        </div>

        <div class="profile-box" id="qmffkelalfm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>블라디미르</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Vladimir.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4636.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3089.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3135.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



            </div>
        </div>

        <div class="profile-box" id="qmfflcmzmfodzm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>블리츠크랭크</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Blitzcrank.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3858.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2065.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3050.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3109.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>

        <div class="profile-box" id="qldprh1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>비에고</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Viego.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3078.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>

        <div class="profile-box" id="qlrxhfm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>빅토르</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Viktor.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6655.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>

        <div class="profile-box" id="QhQl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>뽀삐</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Poppy.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6632.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3742.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4401.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>

        <div class="profile-box" id="tkalfk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>사미라</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Samira.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6691.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6676.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6673.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>

        <div class="profile-box" id="tkdldhs1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>사이온</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sion.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3084.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3181.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tkdlffjtm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>사일러스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sylas.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>

                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6656.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tizh1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>샤코</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Shaco.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6692.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6693.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>

        <div class="profile-box" id="tpsk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>세나</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Senna.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>

                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3862.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
                <div class="dbgn">

                    
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3179.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6692.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3094.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tpfkvls1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>세라핀</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Seraphine.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6620.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3116.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3011.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tpwndksl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>세주아니</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sejuani.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6667.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3075.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tpxm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>세트</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sett.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6631.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3748.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3053.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="thsk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>소나</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sona.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6620.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3040.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="thfkzk1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>소라카</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Soraka.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    <h2>코어 아이템</h2>

                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6617.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3107.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3011.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tnps1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>쉔</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Shen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3084.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3075.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tnlqksk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>쉬바나</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Shyvana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3078.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3053.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3193.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tmdnpdls1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>스웨인</h1>

                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Swain.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6653.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3116.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tmzksj1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>스카너</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Skarner.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3078.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3742.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tlqlfm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>시비르</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sivir.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1083.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3087.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6691.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tlsWkdh1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>신짜오</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/XinZhao.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6692.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6333.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tlsemfk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>신드라</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Syndra.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6655.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3089.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="tlswlem1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>신지드</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Singed.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3116.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6667.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4637.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="Tmfptnl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>쓰레쉬</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Thresh.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3858.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3190.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3050.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3109.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dkfl1">
            <div class="info-box">


                <div class="ghffl">
                    <h1>아리</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ahri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6656.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dkanan1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>아무무</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Amumu.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4637.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6665.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dkdnfpffldhsthf1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>아우렐리온솔</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/AurelionSol.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>

                <div class="dbgn">

                    
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6653.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3116.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dkdlqjs1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>아이번</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ivern.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6617.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3107.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6616.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



            </div>
        </div>

        <div class="profile-box" id="dkwlfm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>아지르</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Azir.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4644.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3115.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dkzkffl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>아칼리</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Akali.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3152.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dkzmtis1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>아크샨</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Akshan.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3153.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3124.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dkxmfhrtm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>아트록스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Aatrox.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6631.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6694.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dkvpffldhtm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>아펠리오스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Aphelios.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1083.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6671.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3072.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dkffltmxk1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>알리스타</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Alistar.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3858.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3001.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3109.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3050.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>

        <div class="profile-box" id="dosl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>애니</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Annie.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6655.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



            </div>
        </div>

        <div class="profile-box" id="doslqldk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>애니비아</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Anivia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6657.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3040.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>

        <div class="profile-box" id="dotnl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>애쉬</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ashe.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3078.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3085.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="ditmdh1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>야스오</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Yasuo.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3031.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3072.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dpzh1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>에코</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ekko.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3152.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3100.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



            </div>
        </div>

        <div class="profile-box" id="dpffltm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>엘리스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Elise.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1101.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4636.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dhrhd1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>오공</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/MonkeyKing.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6632.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6333.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dhfms1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>오른</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ornn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6665.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3075.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dhfldksk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>오리아나</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Orianna.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6655.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3040.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dhffkvm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>울라프</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Olaf.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3074.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6665.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6333.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>

        <div class="profile-box" id="dysp1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>요네</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Yone.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3031.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3072.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>

        <div class="profile-box" id="dyflr1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>요릭</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Yorick.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3078.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3181.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6694.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>


        <div class="profile-box" id="dnelfm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>우디르</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Udyr.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4637.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6665.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3110.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="dnfmrht1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>우르곳</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Urgot.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3748.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6665.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="dnjdnlr1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>워윅</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Warwick.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3077.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3153.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6665.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
                </div>
        </div>
        <div class="profile-box" id="dbal1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>유미</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Yuumi.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2065.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3222.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3011.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="dlfpffldk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>이렐리아</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Irelia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3153.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3091.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6665.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="dlqmffls1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>이블린</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Evelynn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1082.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3152.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3041.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        
        <div class="profile-box" id="dlwmfldjf1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>이즈리얼</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ezreal.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3078.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3042.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="dlffkdhdl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>일라오이</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Illaoi.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2033.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6662.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3053.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="wkfmqks4tp1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>자르반4세</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/JarvanIV.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>

                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6630.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6333.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        
        <div class="profile-box" id="wkdi1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>자야</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Xayah.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6675.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="wkdlfk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>자이라</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zyra.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6653.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3116.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="wkzm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>자크</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zac.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6667.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3075.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="wkssk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>잔나</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Janna.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6617.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3107.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3504.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="wortm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>잭스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jax.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6632.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3161.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="wpem1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>제드</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zed.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3074.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6691.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="wpfktm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>제라스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Xerath.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">wpdltm
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6655.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3089.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="wpfl1">
            <div class="info-box">

            <div class="ghffl">
                <h1>제리</h1>
                <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zeri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
            </div>

                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1083.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3087.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6675.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3085.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="wpdltm1">
            <div class="info-box">

            
                <div class="ghffl">
                    <h1>제이스</h1>

                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jayce.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    
                    
                    <h2>코어 아이템</h2>
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6692.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3042.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
            </div>
            </div>
        </div>
        <div class="profile-box" id="whdl1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>조이</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zoe.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6655.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="wlrtm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>직스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ziggs.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6653.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3040.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="wls1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>진</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jhin.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3095.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6671.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3094.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="wlffldjs1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>질리언</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zilean.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2065.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3011.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



            </div>
        </div>
        <div class="profile-box" id="wldzmtm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>징크스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jinx.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3031.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3085.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="chrktm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>초가스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Chogath.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3084.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3075.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="zkfmak1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>카르마</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Karma.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2065.png?image=q_auto,f_webp,w_64&v=1692340347204"
                        alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3011.png?image=q_auto,f_webp,w_64&v=1692340347204"
                        alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6616.png?image=q_auto,f_webp,w_64&v=1692340347204"
                        alt="">
                
                </div>

            </div>
        </div>
        <div class="profile-box" id="zkalf1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>카밀</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Camille.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    
                                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6632.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3074.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6333.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>
        <div class="profile-box" id="zktkels1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>카사딘</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kassadin.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6657.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3040.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="zktjtm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>카서스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Karthus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1101.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6653.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3089.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="zktldhvpdk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>카시오페아</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Cassiopeia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    
                                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6657.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3040.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="zkdltk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>카이사</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kaisa.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3087.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3115.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3124.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="zkwlrtm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>카직스</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Khazix.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6691.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3814.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6694.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



            </div>
        </div>
        <div class="profile-box" id="zkxkflsk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>카타리나</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Katarina.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1082.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2031.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3115.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3152.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



            </div>
        </div>
        <div class="profile-box" id="zkffltmxk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>칼리스타</h1>

                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kalista.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">   
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">

                    <h2>코어 아이템</h2>
                    
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3153.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3124.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3085.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>
            </div>
        </div>
        <div class="profile-box" id="zpsps1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>케넨</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kennen.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3152.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>

        <div class="profile-box" id="zpdlxmffls1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>케이틀린</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Caitlyn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3095.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6671.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3094.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>


        <div class="profile-box" id="zpdls1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>케인</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kayn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6691.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6696.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6694.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>

        <div class="profile-box" id="zpdlf1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>케일</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kayle.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>

                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3115.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4633.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3089.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>
        <div class="profile-box" id="zhrmah1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>코그모</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/KogMaw.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>

                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3153.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3124.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3085.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>
        <div class="profile-box" id="zhfmzl1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>코르키</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Corki.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1083.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    
                </div>
                
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3087.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3042.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>

        <div class="profile-box" id="znls1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>퀸</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Quinn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2031.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                </div>

                
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3087.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6671.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="zmtksxp1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>크산테</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/KSante.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">

                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6662.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3193.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>

        <div class="profile-box" id="zmffpem1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>클레드</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kled.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    
                                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3074.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6692.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>
        <div class="profile-box" id="zldksk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>카이나</h1>

                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Qiyana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2031.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6691.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6693.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6694.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>
        <div class="profile-box" id="zlsemfpem1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>킨드레드</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kindred.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1103.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3078.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="xkflr1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>타릭</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Taric.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3858.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3190.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3121.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="xkffhs1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>탈론</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Talon.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>

                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1036.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2031.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3142.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6693.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3814.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



            </div>
        </div>
        <div class="profile-box" id="xkffldi1">
            <div class="info-box">



                <div class="ghffl">
                    <h1>탈리야</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Taliyah.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1101.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6655.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="xkazpscl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>탐켄치</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/TahmKench.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3084.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3068.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3075.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



            </div>
        </div>

         <div class="profile-box" id="xmfjsemf1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>트런들</h1>

                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Trundle.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3074.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3078.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3181.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



            </div>
        </div> <div class="profile-box" id="xmfltmxksk1">
            <div class="info-box">
                <div class="ghffl">
                    <h1>트리스타나</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Tristana.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6675.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3046.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



            </div>
        </div>

         <div class="profile-box" id="xmflsekaldj1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>트린다미어</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Tryndamere.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1054.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6672.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6675.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3046.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>



            </div>
        </div>
         <div class="profile-box" id="xmdnltmxlemvpdlxm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>트위스티드페이트</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/TwistedFate.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2033.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6656.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3100.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3094.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div> <div class="profile-box" id="xmdnlcl1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>트위치</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Twitch.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3153.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3124.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3085.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>

        
        <div class="profile-box" id="xlah1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>티모</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Teemo.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>




                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1056.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3115.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6653.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4637.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
    
        <div class="profile-box" id="vkdlzm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>파이크</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Pyke.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3854.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3179.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6691.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3814.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>
        <div class="profile-box" id="vksxpdhs1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>판테온</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Pantheon.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    
                                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6692.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3071.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3814.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>

        <div class="profile-box" id="vlemftmxlr1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>피들스틱</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Fiddlesticks.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3152.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/4645.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>

        
        <div class="profile-box" id="vldhfk1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>피오라</h1>

                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Fiora.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                
                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6632.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3074.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3181.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>
            </div>
        </div>


        
        <div class="profile-box" id="vlwm1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>피즈</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Fizz.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2033.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6655.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3100.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>


        
        <div class="profile-box" id="gkdlajeldrj1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>하이머딩거</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Heimerdinger.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                    
                </div>


                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3850.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3116.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6653.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3157.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>


            </div>
        </div>

        
        <div class="profile-box" id="gpzkfla1">
            <div class="info-box">

                <div class="ghffl">
                    <h1>헤카림</h1>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/champion/Hecarim.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_160&v=1692327966378" alt="">
                </div>



                <div class="dbgn">
                    <h2>시작 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/1102.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

                <div class="dbgn">
                    <h2>코어 아이템</h2>
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3070.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/6691.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">
                    <img src="https://opgg-static.akamaized.net/meta/images/lol/item/3042.png?image=q_auto,f_webp,w_64&v=1692340347204" alt="">

                </div>

            </div>
        </div>

         </div>
        </div>
        

    



































    <script src="https://code.jquery.com/jquery-3.7.0.min.js"
    integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
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
		

    $(document).ready(function () {
    $(".profile-image").on("click", function (e) {
      e.stopPropagation(); // 이벤트 전파 중단 (버블링 방지)
      $("#editBox").css("visibility", "visible");
    });
    

    $(document).click(function (e) {
      if (!$(e.target).is('.profile-image')) {
        $("#editBox").css("visibility", "hidden");
      }
      $("#editBox").css("visibility", "hidden");

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

        $("#rkfps").on("click",function(){
            $("#rkfps1").css("visibility"," visible");
            console.log("rkfps")
        });
        
        $("#rkffldh").on("click",function(){
            $("#rkffldh1").css("visibility"," visible");
        });
        $("#rodvmffodzm").on("click",function(){
            $("#rodvmffodzm1").css("visibility"," visible");
        });
        $("#rmfkrktm").on("click",function(){
            $("#rmfkrktm1").css("visibility"," visible");
        });
        $("#rmfpdlqmwm").on("click",function(){
            $("#rmfpdlqmwm1").css("visibility"," visible");
        });
        $("#rmdnps").on("click",function(){
            $("#rmdnps1").css("visibility"," visible");
        });
        $("#skfm").on("click",function(){
            $("#skfm1").css("visibility"," visible");
        });
        $("#skal").on("click",function(){
            $("#skal1").css("visibility"," visible");
        });
        $("#sktjtm").on("click",function(){
            $("#sktjtm1").css("visibility"," visible");
        });
        $("#skvlfl").on("click",function(){
            $("#skvlfl1").css("visibility"," visible");
        });
        $("#shxlffjtm").on("click",function(){
            $("#shxlffjtm1").css("visibility"," visible");
        });
        $("#shrxjs").on("click",function(){
            $("#shrxjs1").css("visibility"," visible");
        });
        $("#snsndhkdnjffjavm").on("click",function(){
            $("#snsndhkdnjffjavm1").css("visibility"," visible");
        });
        $("#slekffl").on("click",function(){
            $("#slekffl1").css("visibility"," visible");
        });
        $("#slzh").on("click",function(){
            $("#slzh1").css("visibility"," visible");
        });
        $("#slffk").on("click",function(){
            $("#slffk1").css("visibility"," visible");
        });
        $("#ekfldntm").on("click",function(){
            $("#ekfldntm1").css("visibility"," visible");
        });
        $("#ekdldosk").on("click",function(){
            $("#ekdldosk1").css("visibility"," visible");
        });
        $("#emfpdlqms").on("click",function(){
            $("#emfpdlqms1").css("visibility"," visible");
        });
        $("#fkdlwm").on("click",function(){
            $("#fkdlwm1").css("visibility"," visible");
        });
        $("#fkzks").on("click",function(){
            $("#fkzks1").css("visibility"," visible");
        });
        $("#fkaajtm").on("click",function(){
            $("#fkaajtm1").css("visibility"," visible");
        });
        $("#fjrtm").on("click",function(){
            $("#fjrtm1").css("visibility"," visible");
        });
        $("#fjaqmf").on("click",function(){
            $("#fjaqmf1").css("visibility"," visible");
        });
        $("#fpskxkrmffktmzm").on("click",function(){
            $("#fpskxkrmffktmzm1").css("visibility"," visible");
        });
        $("#fpsprxhs").on("click",function(){
            $("#fpsprxhs1").css("visibility"," visible");
        });
        $("#fpdhsk").on("click",function(){
            $("#fpdhsk1").css("visibility"," visible");
        });
        $("#fprtkdl").on("click",function(){
            $("#fprtkdl1").css("visibility"," visible");
        });
        $("#fpf").on("click",function(){
            $("#fpf1").css("visibility"," visible");
        });
        $("#fpdrk").on("click",function(){
            $("#fpdrk1").css("visibility"," visible");
        });
        $("#fntldks").on("click",function(){
            $("#fntldks1").css("visibility"," visible");
        });
        $("#fnffn").on("click",function(){
            $("#fnffn1").css("visibility"," visible");
        });
        $("#fmqmffkd").on("click",function(){
            $("#fmqmffkd1").css("visibility"," visible");
        });
        $("#fltls").on("click",function(){
            $("#fltls1").css("visibility"," visible");
        });
        $("#flqms").on("click",function(){
            $("#flqms1").css("visibility"," visible");
        });
        $("#fltksemfk").on("click",function(){
            $("#fltksemfk1").css("visibility"," visible");
        });
        $("#flffldk").on("click",function(){
            $("#flffldk1").css("visibility"," visible");
        });
        $("#aktmxjdl").on("click",function(){
            $("#aktmxjdl1").css("visibility"," visible");
        });
        $("#akdhzkdl").on("click",function(){
            $("#akdhzkdl1").css("visibility"," visible");
        });
        
        $("#akfwkgk").on("click",function(){
            $("#akfwkgk1").css("visibility"," visible");
        });
        $("#akfvkdlxm").on("click",function(){
            $("#akfvkdlxm1").css("visibility"," visible");
        });
        $("#ahepzkdlwj").on("click",function(){
            $("#ahepzkdlwj1").css("visibility"," visible");
        });
        $("#ahfmrksk").on("click",function(){
            $("#ahfmrksk1").css("visibility"," visible");
        });
        $("#ansehqkrtk").on("click",function(){
            $("#ansehqkrtk1").css("visibility"," visible");
        });
        $("#altmvhcbs").on("click",function(){
            $("#altmvhcbs1").css("visibility"," visible");
        });
        $("#alffldh").on("click",function(){
            $("#alffldh1").css("visibility"," visible");
        });
        $("#qkem").on("click",function(){
            $("#qkem1").css("visibility"," visible");
        });
        $("#qkfntm").on("click",function(){
            $("#qkfntm1").css("visibility"," visible");
        });
        $("#qkdl").on("click",function(){
            $("#qkdl1").css("visibility"," visible");
        });
        $("#qpdls").on("click",function(){
            $("#qpdls1").css("visibility"," visible");
        });
        $("#qprtm").on("click",function(){
            $("#qprtm1").css("visibility"," visible"); 
        });
        $("#qpfqptm").on("click",function(){
            $("#qpfqptm1").css("visibility"," visible");
        });
        $("#qpfzhwm").on("click",function(){
            $("#qpfzhwm1").css("visibility"," visible");
        });
        $("#qhfflqpdj").on("click",function(){
            $("#qhfflqpdj1").css("visibility"," visible");
        });
        $("#qmfkdna").on("click",function(){
            $("#qmfkdna1").css("visibility"," visible");
        });
        $("#qmfosem").on("click",function(){
            $("#qmfosem1").css("visibility"," visible");
        });
        $("#qmffkelalfm").on("click",function(){
            $("#qmffkelalfm1").css("visibility"," visible");
        });
        $("#qmfflcmzmfodzm").on("click",function(){
            $("#qmfflcmzmfodzm1").css("visibility"," visible");
        });
        $("#qldprh").on("click",function(){
            $("#qldprh1").css("visibility"," visible");
        });
        $("#qlrxhfm").on("click",function(){
            $("#qlrxhfm1").css("visibility"," visible");
        });
        $("#QhQl").on("click",function(){
            $("#QhQl1").css("visibility"," visible");
        });
        $("#tkalfk").on("click",function(){
            $("#tkalfk1").css("visibility"," visible");
        });
        $("#tkdldhs").on("click",function(){
            $("#tkdldhs1").css("visibility"," visible");
        });
        $("#tkdlffjtm").on("click",function(){
            $("#tkdlffjtm1").css("visibility"," visible");
        });
        $("#tizh").on("click",function(){
            $("#tizh1").css("visibility"," visible");
        });
        $("#tpsk").on("click",function(){
            $("#tpsk1").css("visibility"," visible");
        });
        $("#tpfkvls").on("click",function(){
            $("#tpfkvls1").css("visibility"," visible");
        });
        $("#tpwndksl").on("click",function(){
            $("#tpwndksl1").css("visibility"," visible");
        });
        $("#tpxm").on("click",function(){
            $("#tpxm1").css("visibility"," visible");
        });
        $("#thsk").on("click",function(){
            $("#thsk1").css("visibility"," visible");
        });
        $("#thfkzk").on("click",function(){
            $("#thfkzk1").css("visibility"," visible");
        });
        $("#tnps").on("click",function(){
            $("#tnps1").css("visibility"," visible");
        });
        $("#tnlqksk").on("click",function(){
            $("#tnlqksk1").css("visibility"," visible");
        });
        $("#tmdnpdls").on("click",function(){
            $("#tmdnpdls1").css("visibility"," visible");
        });
        
        $("#tmzksj").on("click",function(){
            $("#tmzksj1").css("visibility"," visible");
        });
        $("#tlqlfm").on("click",function(){
            $("#tlqlfm1").css("visibility"," visible");
        });
        $("#tlsWkdh").on("click",function(){
            $("#tlsWkdh1").css("visibility"," visible");
        });
        $("#tlsemfk").on("click",function(){
            $("#tlsemfk1").css("visibility"," visible");
        });
        $("#tlswlem").on("click",function(){
            $("#tlswlem1").css("visibility"," visible");
        });
        $("#Tmfptnl").on("click",function(){
            $("#Tmfptnl1").css("visibility"," visible");
        });
        $("#dkfl").on("click",function(){
            $("#dkfl1").css("visibility"," visible");
        });
        $("#dkanan").on("click",function(){
            $("#dkanan1").css("visibility"," visible");
        });
        $("#dkdnfpffldhsthf").on("click",function(){
            $("#dkdnfpffldhsthf1").css("visibility"," visible");
        });
        $("#dkdlqjs").on("click",function(){
            $("#dkdlqjs1").css("visibility"," visible");
        });
        $("#dkwlfm").on("click",function(){
            $("#dkwlfm1").css("visibility"," visible");
        });
        $("#dkzkffl").on("click",function(){
            $("#dkzkffl1").css("visibility"," visible");
        });
        $("#dkzmtis").on("click",function(){
            $("#dkzmtis1").css("visibility"," visible");
        });
        $("#dkxmfhrtm").on("click",function(){
            $("#dkxmfhrtm1").css("visibility"," visible");
        });
        $("#dkvpffldhtm").on("click",function(){
            $("#dkvpffldhtm1").css("visibility"," visible");
        });
        $("#dkffltmxk").on("click",function(){
            $("#dkffltmxk1").css("visibility"," visible");
        });
        $("#dosl").on("click",function(){
            $("#dosl1").css("visibility"," visible");
        });
        $("#doslqldk").on("click",function(){
            $("#doslqldk1").css("visibility"," visible");
        });
        $("#dotnl").on("click",function(){
            $("#dotnl1").css("visibility"," visible");
        });
        $("#ditmdh").on("click",function(){
            $("#ditmdh1").css("visibility"," visible");
        });
        $("#dpzh").on("click",function(){
            $("#dpzh1").css("visibility"," visible");
        });
        $("#dpffltm").on("click",function(){
            $("#dpffltm1").css("visibility"," visible");
        });

        $("#dhrhd").on("click",function(){
            $("#dhrhd1").css("visibility"," visible");
        });
        $("#dhfms").on("click",function(){
            $("#dhfms1").css("visibility"," visible");
        });
        $("#dhfldksk").on("click",function(){
            $("#dhfldksk1").css("visibility"," visible");
        });
        $("#dhffkvm").on("click",function(){
            $("#dhffkvm1").css("visibility"," visible");
        });
        $("#dysp").on("click",function(){
            $("#dysp1").css("visibility"," visible");
        });
        $("#dyflr").on("click",function(){
            $("#dyflr1").css("visibility"," visible");
        });
        $("#dnelfm").on("click",function(){
            $("#dnelfm1").css("visibility"," visible");
        });
        $("#dnfmrht").on("click",function(){
            $("#dnfmrht1").css("visibility"," visible");
        });
        $("#dnjdnlr").on("click",function(){
            $("#dnjdnlr1").css("visibility"," visible");
        });
        $("#dbal").on("click",function(){
            $("#dbal1").css("visibility"," visible");
        });
        $("#dlfpffldk").on("click",function(){
            $("#dlfpffldk1").css("visibility"," visible");
        });
        $("#dlqmffls").on("click",function(){
            $("#dlqmffls1").css("visibility"," visible");
        });
        $("#dlwmfldjf").on("click",function(){
            $("#dlwmfldjf1").css("visibility"," visible");
        });
        $("#dlffkdhdl").on("click",function(){
            $("#dlffkdhdl1").css("visibility"," visible");
        });
        $("#wkfmqks4tp").on("click",function(){
            $("#wkfmqks4tp1").css("visibility"," visible");
        });
        $("#wkdi").on("click",function(){
            $("#wkdi1").css("visibility"," visible");
        });
        $("#wkdlfk").on("click",function(){
            $("#wkdlfk1").css("visibility"," visible");
        });
        $("#wkzm").on("click",function(){
            $("#wkzm1").css("visibility"," visible");
        });
        $("#wkssk").on("click",function(){
            $("#wkssk1").css("visibility"," visible");
        });
        $("#wortm").on("click",function(){
            $("#wortm1").css("visibility"," visible");
        });
        $("#wpem").on("click",function(){
            $("#wpem1").css("visibility"," visible");
        });
        $("#wpfktm").on("click",function(){
            $("#wpfktm1").css("visibility"," visible");
        });
        $("#wpfl").on("click",function(){
            $("#wpfl1").css("visibility"," visible");
        });
        $("#wpdltm").on("click",function(){
            $("#wpdltm1").css("visibility"," visible");
        });
        $("#whdl").on("click",function(){
            $("#whdl1").css("visibility"," visible");
        });
        $("#wlrtm").on("click",function(){
            $("#wlrtm1").css("visibility"," visible");
        });
        $("#wls").on("click",function(){
            $("#wls1").css("visibility"," visible");
        });
        $("#wlffldjs").on("click",function(){
            $("#wlffldjs1").css("visibility"," visible");
        });
        $("#wldzmtm").on("click",function(){
            $("#wldzmtm1").css("visibility"," visible");
        });
        $("#chrktm").on("click",function(){
            $("#chrktm1").css("visibility"," visible");
        });
        $("#zkfmak").on("click",function(){
            $("#zkfmak1").css("visibility"," visible");
        });
        $("#zkalf").on("click",function(){
            $("#zkalf1").css("visibility"," visible");
        });
        $("#zktkels").on("click",function(){
            $("#zktkels1").css("visibility"," visible");
        });
        $("#zktjtm").on("click",function(){
            $("#zktjtm1").css("visibility"," visible");
        });
        $("#zktldhvpdk").on("click",function(){
            $("#zktldhvpdk1").css("visibility"," visible");
        });
        $("#zkdltk").on("click",function(){
            $("#zkdltk1").css("visibility"," visible");
        });
        $("#zkwlrtm").on("click",function(){
            $("#zkwlrtm1").css("visibility"," visible");
        });
        $("#zkxkflsk").on("click",function(){
            $("#zkxkflsk1").css("visibility"," visible");
        });
        $("#zkffltmxk").on("click",function(){
            $("#zkffltmxk1").css("visibility"," visible");
        });
        $("#zpsps").on("click",function(){
            $("#zpsps1").css("visibility"," visible");
        });
        $("#zpdlxmffls").on("click",function(){
            $("#zpdlxmffls1").css("visibility"," visible");
        });
        $("#zpdls").on("click",function(){
            $("#zpdls1").css("visibility"," visible");
        });
        $("#zpdlf").on("click",function(){
            $("#zpdlf1").css("visibility"," visible");
        });
        $("#zhrmah").on("click",function(){
            $("#zhrmah1").css("visibility"," visible");
        });
        $("#zhfmzl").on("click",function(){
            $("#zhfmzl1").css("visibility"," visible");
        });
        $("#znls").on("click",function(){
            $("#znls1").css("visibility"," visible");
        });
        $("#zmtksxp").on("click",function(){
            $("#zmtksxp1").css("visibility"," visible");
        });
        $("#zmffpem").on("click",function(){
            $("#zmffpem1").css("visibility"," visible");
        });
        $("#zldksk").on("click",function(){
            $("#zldksk1").css("visibility"," visible");
        });
        $("#zlsemfpem").on("click",function(){
            $("#zlsemfpem1").css("visibility"," visible");
        });
        $("#xkflr").on("click",function(){
            $("#xkflr1").css("visibility"," visible");
        });
        $("#xkffhs").on("click",function(){
            $("#xkffhs1").css("visibility"," visible");
        });
        $("#xkffldi").on("click",function(){
            $("#xkffldi1").css("visibility"," visible");
        });
        $("#xkazpscl").on("click",function(){
            $("#xkazpscl1").css("visibility"," visible");
        });
        $("#xmfjsemf").on("click",function(){
            $("#xmfjsemf1").css("visibility"," visible");
        });
        $("#xmfltmxksk").on("click",function(){
            $("#xmfltmxksk1").css("visibility"," visible");
        });
        $("#xmflsekaldj").on("click",function(){
            $("#xmflsekaldj1").css("visibility"," visible");
        });
        $("#xmdnltmxlemvpdlxm").on("click",function(){
            $("#xmdnltmxlemvpdlxm1").css("visibility"," visible");
        });
        
        $("#xmdnlcl").on("click",function(){
            $("#xmdnlcl1").css("visibility"," visible");
        });
        $("#xlah").on("click",function(){
            $("#xlah1").css("visibility"," visible");
        });
        $("#vkdlzm").on("click",function(){
            $("#vkdlzm1").css("visibility"," visible");
        });
        $("#vksxpdhs").on("click",function(){
            $("#vksxpdhs1").css("visibility"," visible");
        });
        $("#vlemftmxlr").on("click",function(){
            $("#vlemftmxlr1").css("visibility"," visible");
        });
        $("#vldhfk").on("click",function(){
            $("#vldhfk1").css("visibility"," visible");
        });
        $("#vlwm").on("click",function(){
            $("#vlwm1").css("visibility"," visible");
        });
        $("#gkdlajeldrj").on("click",function(){
            $("#gkdlajeldrj1").css("visibility"," visible");
        });
        $("#gpzkfla").on("click",function(){
            $("#gpzkfla1").css("visibility"," visible");
        });

        $("#qpdlrk").on("click",function(){
            $("#qpdlrk1").css("visibility"," visible");
        });
    
        






        
    </script>
    

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
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


</body>

</html>