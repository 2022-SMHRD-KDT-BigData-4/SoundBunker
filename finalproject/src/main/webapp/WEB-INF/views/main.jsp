<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- dir = ltr 은 왼쪽부터 오른쪽 방향으로 써지는 텍스트  -->
<html lang="ko" dir="ltr">

<head>
    <!-- strat : 메타 태그 -->
    <meta name="naver-site-verification" content="1d869866ce3008a0a9d02dd1acbd4775df888e32" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>SOUNDBUNKER</title>
    <link rel="shortcut icon" href="imgs/common/favicon.ico">
    <!-- end : 메타태그 -->

    <!-- category mode player css-->
    <link rel="stylesheet" href="resources/css/cate_player.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">
    <!-- category mode player js-->

    <link rel="stylesheet" href="resources/css/base.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/header.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/main.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/modal.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/slick.css">
    <link rel="stylesheet" href="resources/css/swiper.min.css">
    <!-- 카테고리 방 들어가는 section 관련 css -->
    <link rel="stylesheet" href="resources/css/slider.css">
    <!-- 카테고리 모드 알람 css -->
    <link rel="stylesheet" href="resources/css/alert_style.css">
    <!-- 알람 내 타이핑 효과 관련 css & js -->
    <link rel="stylesheet" href="resources/css/typing.css">
    <!-- siri css -->
    <link rel="stylesheet" href="resources/css/siri_style.css">
    <!-- 캠 css -->
    <link rel="stylesheet" href="resources/css/cam.css">

    <script src="resources/js/jquery-3.6.0.js"></script>
    <script src="resources/js/common.js"></script>
    <script src="resources/js/main.js"></script>
    <script src="resources/js/slick.js"></script>
    <script src="resources/js/slider.js"></script>
    <script src="resources/js/swiper.min.js"></script>
    <!-- 캠 js -->
    <script src="resources/js/jquery-3.6.0.js"></script>
    <script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
    <!---->
    <script src="resources/js/slider_copy.js" defer="defer"></script>
    <!-- <link rel="stylesheet" href="/Front/img/공부.mp4"> -->
    <!-- start : 백그라운드 비디오 -->
    <script>
        $(function () {
            $(this).scrollTop(0);
            console.log("START LOAD");
            try {
                var videoUrl = [
                    "resources/img/공부.mp4",
                    "resources/img/요가.mov",
                    "resources/img/청소.mov",
                    "resources/img/훌라훌라.mov",
                    // 큰형DJ "https://oz-z.com/videos/rainbow99_together,_dog.mp4",
                    "https://oz-z.com/videos/we_are_the_night_dream_catcher.mp4",
                ];
                var videoStr = [
                    "Rainbow99 <br> Altteureu",
                    "Rainbow99 <br> Together, Dog",
                    "We Are The Night <br> Dream Catcher",
                ];

                var current = new Date();
                var index = current.getSeconds() % videoUrl.length;

                var videoP = document.getElementsByTagName('video')[0];
                var sourcesP = videoP.getElementsByTagName('source');

                sourcesP[0].src = videoUrl[index];
                videoP.load();
                $("#credit").html(videoStr[index]);
            } catch (e) { console.err("ERROR==" + e); }

        });
    </script>
    <!-- end : 백그라운드 비디오 -->

</head>

<body>

    <!-- start : 메인 전체 -->
    <div id="wrap">
        <!-- start : 헤더 -->
        <div id="header">
            <!-- 로고 전체 -->
            <h1 class="logo">
                <!-- logo 클릭시 새로고침 -->
                <a href="main.html">
                    <!-- logo 이미지 -->
                    <img src="resources/img/logo.png" alt="logo" id="home_btn_logo" style="width: 140%;">
                </a>
            </h1>

            <!-- 헤더 상단 바  -->
            <div class="nav">
                <ul>
                    <!-- 헤더 select 바 -->
                    <!-- main,js 63~94 on 뒤에 생성되면 밑줄 그어지며 글씨 굵어짐-->
                    <!-- li의 a 태그 id 바꿔야함 -->
                    <li class="category"><a id="gnb_category" href="#category">CATEGORY</a></li>
                    <li class="cammode"><a id="gnb_cammode" href="#cammode">CAMMODE</a></li>
                    <li class="playlist"><a id="gnb_playlist" href="#playlist">PLAYLIST</a></li>
                    <li class="team"><a id="gnb_team" href="#team">BPMTEAM</a></li>
                </ul>
            </div>
            <div class="navBtn">
                <ul>
                    <li class="on"><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                    <li><a href="#none"></a></li>
                </ul>
            </div>
        </div>
        <!-- end of :: header -->
        <!-- start of :: contents -->
        <div id="content">
            <div class="inner">
                <div class="fixedContents">
                    <div class="btnWrap">
                        <div class="inner">
                            <!-- <a id="btn_help" href="https://service.oz-z.com/support/help" target="_blank"
                                class="bg help">HELP</a> -->
                            <a id="btn_signup" href="login.do" target="_blank"
                                class="col signUp">Sign</a>
                            <a id="btn_service" href="#none" class="bg service">SERVICE</a>
                        </div>
                    </div>

                    <div class="callNav">
                        <div class="bar1"></div>
                        <div class="bar2"></div>
                        <div class="bar3"></div>
                    </div>
                    <!-- <div class="scrollDown"></div> -->
                </div>
                <div class="mainBoxWrap">
                    <div class="mainBox mainBox_01">
                        <div class="videoBox web">
                            <video width="100%" autoplay loop muted playsinline>
                                <source src="video/web_video.m4v">
                            </video>
                        </div>
                        <div class="video_cover"
                            style=" height: 100%; width: 100%; z-index: 5; position: absolute; background: rgba(106, 122, 232, 0.5); ">
                        </div>

                        <div class="conWrap">
                            <div class="mainText">
                                서영 <span>넌</span>듣기만 해,<br>
                                다음은 <span>교자</span>가<br>
                                할게.
                            </div>
                            <div class="serviceSlot">l
                            </div>
                        </div>
                    </div>

                    <!-- 메인 -->
                    <!-- 카테고리 -->
                    <!-- id 설정 잘해야 스크롤 및 header 클릭시 움직임 -->
                    <div class="mainBox mainBox_02" id="category" style="background-color: rebeccapurple;">
                        <div class="wrap__music" id="cate_player">
                            <div class="music__inner">
                                <div class="music__top">
                                    <i class="material-icons">expand_more</i>
                                    <h3>Now Playing</h3>
                                    <i class="material-icons"> </i>
                                </div>
                                <!-- // music__top -->
                                <div class="music__img">
                                    <img src="/musicplayer/images/music-1.jpg" alt="이미지1">
                                </div>
                                <!-- // music__img -->
                                <div class="music__song">
                                    <p class="name"></p>
                                    <p class="artist"></p>
                                </div>
                                <!-- // music__song -->
                                <div class="music__progress">
                                    <div class="bar">
                                        <audio id="main-audio" src=""></audio>
                                    </div>
                                    <div class="timer">
                                        <span class="current">0:00</span>
                                        <span class="duration">0:00</span>
                                    </div>
                                </div>
                                <!-- // music__progress -->
                                <div class="music__control">
                                    <i id="control-repeat" class="material-icons" title="전체 반복">repeat</i>
                                    <i id="control-prev" class="material-icons" title="이전곡">skip_previous</i>
                                    <div class="play-pause">
                                        <i id="control-play" class="material-icons" title="재생">play_arrow</i>
                                        <!-- <i class="material-icons">pause</i> -->
                                    </div>
                                    <i id="control-next" class="material-icons" title="다음곡">skip_next</i>
                                    <i id="control-list" class="material-icons" title="재생목록">queue_music</i>
                                    <!-- <i class="material-icons">repeat_one</i>
                                    <i class="material-icons">shuffle</i> -->
                                </div>
                                <!-- // music__control -->
                                <div class="music__list">
                                    <div class="title">
                                        <div>
                                            <i class="material-icons queue">queue_music</i>
                                            <span>Music List</span>
                                        </div>
                                        <i class="material-icons close">close</i>
                                    </div>
                                    <div class="list">
                                        <ul>
                                            <!-- Javascript -->
                                        </ul>
                                    </div>
                                </div>
                                <!-- // music__list -->
                            </div>
                        </div>

                        <script src="resources/js/cate_music.js"></script>
                        <script src="resources/js/cate_player.js"></script>
                        <div class="conWrap">
                            <div class="mainBoxText" id="mainBoxText1">
                                <span class="block">뮤직 서비스, SOUNDBUNKER</span>
                                <span class="engText">CATEGORY</span>
                            </div>
                            <div class="mainBoxSubText modalBtn_2 modal_btn" id="more_distribution">
                                <div class="textWrap" id="textWrap1">
                                    당신이 듣고 싶은 음악을<br>
                                    <span>직접</span>골라 <span>편의하게</span><br>
                                    감상해 보세요.
                                </div>
                                <div class="subText" id="subText1">시작하기</div>
                            </div>
                            <div class="imgSlide" id="room_img">
                                <img src="resources/img/room.png" id="room">
                                <div id="tablet"></div>
                                <div id="rest"></div>
                                <img src="resources/img/book.png" id="book">
                                <img src="resources/img/cleaner.png" id="cleaner">
                                <img src="resources/img/dumbbell.png" id="dumbbell">



                                <!-- Modal content -->
                                <div class="modal-content" id="alert" style="display: none;">
                                    <div id="question_1"></div>
                                    <div id="question_2"></div>
                                    <div id="yes"></div>
                                    <div id="no"></div>
                                    <div id="playing"></div>



                                    <!--  Recursion Puzzle Container   -->
                                    <!--  PUZZLE GOES INSIDE HERE   -->
                                    <div id="recursion-puzzle-container">




                                    </div>
                                    <!--   end container   -->

                                </div>
                                <!--  end modal content  -->

                            </div>
                            <div id="room_slide">
                                <div id="siri_ment1">저를 클릭해 주세요!</div>

                                <div id="recursionPuzzleModal" class="modal">
                                    <div class="rainbow-container">
                                        <div class="green"></div>
                                        <div class="pink"></div>
                                        <div class="blue"></div>
                                    </div>




                                </div>


                                <!-- The Modal -->


                                <!-- partial -->
                                <script
                                    src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
                                <script
                                    src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js'></script>
                                <script src='https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.10/vue.min.js'></script>
                                <script
                                    src='https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.11/lodash.min.js'></script>
                                <script
                                    src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.4/TweenMax.min.js'></script>
                                <script
                                    src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.4/utils/Draggable.min.js'></script>


                            </div>



                        </div>





                    </div>

                    <!-- 캠모드 -->
                    <!-- id 설정 잘해야 스크롤 및 header 클릭시 움직임 -->
                    <div class="mainBox mainBox_03" id="cammode" style="background-color: lightblue;">
                        <div class="conWrap">
                            <!-- 웹캠 -->
                            <a id="save" onclick="downFile(this)" style="display: none;">다운로드</a>
                            <button id="btn" onclick="cameraonoff()" style="display: none;">On</button>
                            <button id="snap" style="display: none;">캡쳐하기</button>
                            <video id="video" width="100%" height="640" autoplay></video>
                            <canvas id="canvas" width="640" height="480"></canvas>

                            <script>
                                var video = document.getElementById("video");
                                var btn = document.getElementById("btn");
                                var snap = document.getElementById("snap");
                                var save = document.getElementById("save");
                                // canvas 조작
                                var canvas = document.getElementById('canvas');
                                var context = canvas.getContext('2d');
                                var video = document.getElementById('video');

                                // 캡처 url 가져오기
                                document.getElementById("snap").addEventListener("click", function () {
                                    var file = canvas.toDataURL(); // 촬영한 이미지의 base64 문자열
                                    context.drawImage(video, 0, 0, 640, 480);
                                });
                                // 저장 url 가져오기
                                document.getElementById('save').addEventListener('click', function () {
                                    event.target.href = canvas.toDataURL()
                                });

                                var isPlaying = video.srcObject;


                                var arr = []
                                function downFile(down) {

                                    arr = []
                                    data = {
                                        "name": "hwang",
                                        "img": canvas.toDataURL('image/*')
                                    }
                                    arr.push(data);
                                    JSON.stringify(arr)

                                    $(down).attr('href', '');
                                    $(down).attr('download', 'img.jpg');

                                    request();
                                }

                                function request() {
                                    $.ajax({
                                        type: "POST",                               //1
                                        url: "http://127.0.0.1:5000/post",                          //2
                                        //dataType : 'json',                           //           //4
                                        data: { "json": JSON.stringify(arr) },                 //5
                                        success: successCall,                       //6
                                        error: errorCall                          //7

                                    });
                                }

                                function successCall(res) {
                                    alert(res);
                                }
                                function errorCall() {
                                    alert("전송실패");
                                }
                                // 반복 함수를 담을 객체 생성   
                                let image;

                                // 'subText2(캠모드 - 시작하기)' 버튼을 누르면 실행될 함수
                                function start() {
                                    // 시작될때 캠 강제클릭
                                    $(btn).trigger('click')

                                    // 2.5초마다 실행될 함수 (사진 저장)
                                    function save() {
                                        $(snap).trigger('click')
                                        $("#save").get(0).click();
                                    }
                                    // 2.5초마다 save 함수를 반복(변수에 담는 형식으로 실행)
                                    image = setInterval(save, 2500);
                                }
                                // Stop time 버튼을 누르면 실행될 함수(display:none)
                                function stop() {
                                    // image의 반복실행을 종료한다.
                                    clearInterval(image);
                                }

                                function cameraonoff() {
                                    if (!isPlaying) {
                                        cameraon();
                                    } else {
                                        cameraoff();
                                    }
                                }

                                function cameraon() {
                                    if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
                                        navigator.mediaDevices
                                            .getUserMedia({
                                                video: true
                                            })
                                            .then(function (stream) {
                                                video.srcObject = stream;
                                                console.log('video start')
                                                video.play();
                                            })
                                            .then(() => {
                                                isPlaying = true;
                                                console.log('text change off')
                                                btn.innerText = "Off";
                                            });
                                    }
                                }

                                function cameraoff() {
                                    const stream = video.srcObject;
                                    if (stream) {
                                        const tracks = stream.getTracks();

                                        tracks.forEach(function (track) {
                                            console.log('video stop')
                                            track.stop();
                                        });

                                        video.srcObject = null;
                                        isPlaying = false;
                                        console.log('text change on')
                                        btn.innerText = "On";
                                    }
                                }
                            </script>
                            <!-- 웹캠 끝 -->


                            <div class="mainBoxText" id="mainBoxText2">
                                <span class="block">뮤직 서비스, SOUNDBUNKER</span>
                                <span class="engText">CAMMODE</span>
                            </div>
                            <div class="mainBoxSubText modalBtn_3 modal_btn" id="more_marketing">
                                <div class="textWrap">
                                    당신의 음악으로<br>
                                    향하는 <span>마케팅</span>이<br>
                                    시작됩니다.
                                </div>
                                <script>


                                </script>
                                <div class="subText" id="subText2" onclick="start()">자세히 보기</div>

                            </div><button onclick="stop()" id="stop" style="display: none;">Stop time</button>

                        </div>
                    </div>

                    <!-- 플레이리스트 -->
                    <!-- id 설정 잘해야 스크롤 및 header 클릭시 움직임 -->
                    <div class="mainBox mainBox_04" id="playlist" style="background-color: peachpuff;">
                        <div class="conWrap">
                            <div class="mainBoxText">
                                <span class="block">뮤직 서비스, SOUNDBUNKER</span>
                                <span class="engText">PLAYLIST</span>
                            </div>
                            <div class="mainBoxSubText modalBtn_4 modal_btn" id="more_upstream">
                                <div class="textWrap">
                                    당신의 <span>커리어</span>가<br>
                                    다음 단계로<br>
                                    성장합니다.
                                </div>
                                <div class="subText">자세히 보기</div>
                            </div>
                        </div>
                    </div>

                    <!-- 개발진 -->
                    <!-- id 설정 잘해야 스크롤 및 header 클릭시 움직임 -->
                    <div class="mainBox mainBox_05" id="team" style="background-color: cadetblue;">
                        <div class="conWrap">
                            <div class="mainBoxText">
                                <span class="block">뮤직 서비스, SOUNDBUNKER</span>
                                <span class="engText">BPMTEAM</span>
                            </div>
                            <div class="mainBoxSubText modalBtn_5 modal_btn" id="more_subscription">
                                <div class="textWrap">
                                    베타 서비스<br>
                                    기간에 <span>오즈</span>를<br>
                                    무료로 만나보세요
                                </div>
                                <div class="subText">자세히 보기</div>
                            </div>
                        </div>
                    </div>
                    <div class="footer">
                        <div class="inner">
                            <div class="logo"><a href="index.html"><img src="resources/img/logo.png" alt="logo"></a>
                            </div>
                            <div class="contents">
                                <div class="link">
                                    <a id="privacy" href="https://service.oz-z.com/global/privacyPolicy"
                                        target="_blank">개인정보처리방침</a>
                                    <a id="terms" href="https://service.oz-z.com/global/termsOfService"
                                        target="_blank">이용약관</a>
                                    <a id="cs" href="https://service.oz-z.com/support/help" target="_blank">고객센터</a>
                                    <a id="partnership" href="https://service.oz-z.com/support/help"
                                        target="_blank">제휴문의</a>
                                    <a id="bizinfo" href="https://www.ftc.go.kr/bizCommPop.do?wrkr_no=1058805268"
                                        target="_blank">사업자정보</a>
                                </div>
                                <p class="footer_copy">
                                    마운드미디어(주) 대표이사 신동익 <br>
                                    주소: 서울특별시 강남구 강남대로 302, 3층(역삼동, 동희빌딩) | 사업자등록번호: 105-88-05268<br>
                                    통신판매업신고번호: 2022-서울강남-00989
                                </p>
                            </div>

                            <div class="site_link">
                                <!--
                                <a href="#none" class="facebook"></a>
                                <a href="#none" class="instar"></a>
                                <a href="#none" class="youtube"></a>
                            -->
                                <!--
                                <select onchange="if(this.value) window.open(this.value);">
                                    <option value="">Family Site</option>
                                    <option value="http://www.msbsound.com/">MSB SOUND</option>
                                    <option value="http://poclanos.com/">POCLANOS</option>
                                </select>
                            -->
                            </div>
                            <!-- 
                            <div class="">
                                <a href="http://www.msbsound.com" target="_blank"><img src="imgs/main/[LOGO] MSBsound_Frame_B.png" style="width:80px; margin-left:20px; margin-right:10px " alt="매직스트로베리 로고"></a>
                                <a href="https://poclanos.com/" target="_blank"><img src="imgs/main/poclanos_basiclogo_white.png" style="width:80px" alt="포크라노스 로고"></a>
                            </div>
                            -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- 자바스크립트로 on off 서비스 메뉴 main js 23번째 줄 -->
            <div class="modalBg"></div>

            <!-- 서비스 가이드 -->
            <div class="serviceBox modalBox">
                <div class="inner">
                    <p class="title">SOUNDBUNKER</p>
                    <a id="btn_close_modal" href="#none" class="close modalClose">BACK</a>
                    <!-- 카테고리 서비스가이드 -->
                    <div class="subTitle">CATEGORY</div>
                    <div class="con_box modalBtn_2" id="btn_release_modal">
                        <p class="listTitle" id="release_text"><span>○</span>카테고리 사용법</p>
                        <div class="img_box">
                            <img src="#" alt="" id="release_img">
                        </div>
                    </div>

                    <!-- 캠모드 서비스가이드 -->
                    <div class="subTitle">CAMMODE</div>
                    <div class="con_box modalBtn_3" id="btn_smartlink_modal">
                        <p class="listTitle" id="smartlink_text"><span>○</span>캠모드 사용법</p>
                        <div class="img_box">
                            <img src="#" alt="" id="smarlink_img">
                        </div>
                    </div>

                    <!-- 플레이리스트 서비스가이드 -->
                    <div class="subTitle" style="cursor: pointer;">PLAYLIST</div>
                    <div class="con_box modalBtn_4" id="btn_accelerator_modal">
                        <p class="listTitle" id="accelerator_text" onclick="move_playlist()"><span>○</span>나만의 플레이리스트
                        </p>
                        <div class="img_box">
                            <img src="imgs/main/service_05.png" alt="" id="accelerator_img">
                        </div>
                    </div>

                    <!-- 제작자 서비스가이드 -->
                    <div class="subTitle" style="cursor: pointer;">BPMTEAM</div>
                    <div class="con_box modalBtn_5" id="btn_subscription_modal">
                        <p class="listTitle" id="subscription_text" onclick="move_team()"><span>○</span>Bunker PlayList
                            Manager</p>
                        <div class="img_box">
                            <img src="imgs/main/service_07.png" alt="" id="subscription_img">
                        </div>
                    </div>
                </div>
            </div>

            <!-- 1번째 가이드 안 -->
            <div class="mainBox2_modal sub_modal modal_box">
                <div class="inner">
                    <a id="btn_close_distribution" href="#none" class="close modalClose">BACK</a>
                    <div class="slideWrap2 slideWrap swiper-container2">
                        <div class="swiper-wrapper">
                            <div class="slideList swiper-slide">
                                <div class="mainBoxText">
                                    <span class="block">음악은 어디서? '집에서'</span>
                                    <span class="engText">SOUNDBUNKER</span>
                                </div>
                                <div class="subBoxText">
                                    <p class="title color">카테고리<br>설명서</p>
                                    <p class="con">누구나 간편하게<br>사용할 수 있는 카테고리</p>
                                </div>
                            </div>
                            <div class="slideList swiper-slide">
                                <div class="slideConBox">
                                    <p class="conNum">01</p>
                                    <img src="resources/img/사운드벙커 2.jpg" alt="">
                                    <div class="conText">
                                        <p class="title color">카테고리 버튼 클릭</p>
                                        <p class="con">카테고리 버튼을 클릭 시<br>카테고리 선택 화면으로 전환</p>
                                    </div>
                                </div>
                            </div>
                            <div class="slideList swiper-slide">
                                <div class="slideConBox">
                                    <p class="conNum">02</p>
                                    <img src="resources/img/call_siri.png" alt="">
                                    <div class="conText">
                                        <p class="title color">애니메이션 아이콘 클릭</p>
                                        <p class="con">카테고리 모드를 이용하기 위해 애니메이션 아이콘을 클릭합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="slideList swiper-slide">
                                <div class="slideConBox">
                                    <p class="conNum">03</p>
                                    <img src="resources/img/icon_explain.png" alt="">
                                    <div class="conText">
                                        <p class="title color">아이콘 클릭</p>
                                        <p class="con">듣고 싶은 플레이리스트의 아이콘을 클릭합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="slideList swiper-slide">
                                <div class="mainBoxText">
                                </div>
                                <div class="subBoxText">
                                    <p class="title color">음악 카테고리</p>
                                </div>
                            </div>
                            <div class="slideList swiper-slide">
                                <div class="slideConBox">
                                    <p class="conNum">04</p>
                                    <img src="resources/img/reco_music.png" alt="">
                                    <div class="conText">
                                        <p class="title color">음악 감상</p>
                                        <p class="con">추천 받은 노래를 감상합니다. <br>감상중 다른 아이콘을 클릭하여 이용할 수 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-pagination2 sPage"></div>
                    </div>
                </div>
            </div>

            <!-- 2번째 가이드 안 -->
            <div class="mainBox3_modal sub_modal modal_box">
                <div class="inner">
                    <a id="btn_close_distribution" href="#none" class="close modalClose">BACK</a>
                    <div class="slideWrap3 slideWrap swiper-container2">
                        <div class="swiper-wrapper">
                            <div class="slideList swiper-slide">
                                <div class="mainBoxText">
                                    <span class="block">음악은 어디서? '집에서'</span>
                                    <span class="engText">SOUNDBUNKER</span>
                                </div>
                                <div class="subBoxText">
                                    <p class="title color">캠모드<br>설명서</p>
                                    <p class="con">누구나 간편하게<br>사용할 수 있는 카테고리</p>
                                </div>
                            </div>
                            <div class="slideList swiper-slide">
                                <div class="slideConBox">
                                    <p class="conNum">01</p>
                                    <img src="/Front/img/사운드벙커 2.jpg" alt="">
                                    <div class="conText">
                                        <p class="title color">캠모드 발매 솔루션</p>
                                        <p class="con">누구나 단 한번의 등록으로 원하는 날짜에 전 세계 동시<br>음원 발매가 가능해집니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="slideList swiper-slide">
                                <div class="slideConBox">
                                    <p class="conNum">02</p>
                                    <img src="/Front/img/사운드벙커 5-2.jpg" alt="">
                                    <div class="conText">
                                        <p class="title color">캠 모드 동시 발매</p>
                                        <p class="con">전 세계 92개 국가에서, 당신의 음악을 만날 수 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="slideList swiper-slide">
                                <div class="slideConBox">
                                    <p class="conNum">03</p>
                                    <img src="https://www.oz-z.com/imgs/main/slideWrap2_img_02.png" alt="">
                                    <div class="conText">
                                        <p class="title color">캠모드로 음악을을 들어요</p>
                                        <p class="con">시작해볼까요?</p>
                                    </div>
                                </div>
                            </div>
                            <div class="slideList swiper-slide">
                                <div class="mainBoxText">
                                </div>
                                <div class="subBoxText">
                                    <p class="title color">음악 캠모드</p>
                                    <p class="con">밑에 클릭</p>
                                    <div id="btn_go_mv" class="go catego" style="cursor: pointer;"
                                        onclick="move_cammode()">GO</div>
                                </div>
                            </div>
                            <div class="slideList swiper-slide">
                                <div class="slideConBox">
                                    <p class="conNum">04</p>
                                    <img src="https://www.oz-z.com/imgs/main/slideWrap2_img_03.png" alt="">
                                    <div class="conText">
                                        <p class="title color">온라인 카테고리시스템</p>
                                        <p class="con">실시간으로 클릭 <br>노래 재생할수 있음</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-pagination2 sPage"></div>
                    </div>
                </div>
            </div>

            <!-- end of :: contents -->
        </div>
        <!-- end : 메인 전체-->

</body>

</html>