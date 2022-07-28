<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- dir = ltr 은 왼쪽부터 오른쪽 방향으로 써지는 텍스트  -->
<html lang="ko" dir="ltr">
<head>
    <!-- strat : 메타 태그 -->
    <meta name="naver-site-verification" content="1d869866ce3008a0a9d02dd1acbd4775df888e32" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SOUNDBUNKER</title>
    <link rel="shortcut icon" href="imgs/common/favicon.ico">
    <!-- end : 메타태그 -->

    <link rel="stylesheet" href="css/base.css" type="text/css" />
    <link rel="stylesheet" href="css/header.css" type="text/css" />
    <link rel="stylesheet" href="css/main.css" type="text/css" />
    <link rel="stylesheet" href="css/modal.css" type="text/css" />
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/swiper.min.css">
    <!-- 카테고리 방 들어가는 section 관련 css -->
    <link rel="stylesheet" href="/Front/temp copy/css/slider.css">
    <!-- 카테고리 모드 알람 css -->
    <link rel="stylesheet" href="/Front/temp copy/css/alert_style.css">
    <!-- 알람 내 타이핑 효과 관련 css & js -->
    <link rel="stylesheet" href="/Front/temp copy/css/typing.css">
    <!-- siri css -->
    <link rel="stylesheet" href="/Front/temp copy/css/siri_style.css">


    <script src="/jquery-3.6.0.js"></script>
    <script src="js/common.js"></script>
    <script src="js/main.js"></script>
    <script src="js/slick.js"></script>
    <script src="js/slider.js"></script>
    <script src="js/swiper.min.js"></script>
    <!-- 이미지 슬라이드 js -->
    <script src="js/jquery-1.12.3.js" type="text/javascript"></script>
    <script src="/Front/temp copy/js/slider_copy.js" defer="defer"></script>
<link rel="stylesheet" href="/Front/img/공부.mp4">
    <!-- start : 백그라운드 비디오 -->
    <script>
        $(function () {
            $(this).scrollTop(0);
            console.log("START LOAD");
            try {
                var videoUrl = [
                    "/Front/img/공부.mp4",
                    "/Front/img/요가.mov",
                    "/Front/img/청소.mov",
                    "/Front/img/훌라훌라.mov",
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
                    <img src="/Front/img/logo.png" alt="logo" id="home_btn_logo" style="width: 140%;">
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
                            <a id="btn_signup" href="/Front/title/login.html" target="_blank"
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
                        <div class="conWrap">
                            
                            <div class="mainBoxText" id="mainBoxText1">
                                <span class="block">뮤직 서비스, SOUNDBUNKER</span>
                                <span class="engText">CATEGORY</span>
                            </div>
                            <div class="mainBoxSubText modalBtn_2 modal_btn" id="more_distribution">
                                <div class="textWrap" id="textWrap1">
                                    당신의 음악이<br>
                                    <span>전세계</span>에 <span>360도</span>로<br>
                                    펼쳐집니다.
                                </div>
                                <div class="subText" id="subText1">시작하기</div>
                            </div>
                            <div class="imgSlide" id="room_img">
                                <img src="/Front/img/room.png" id="room">
                                <div id="tablet"></div>
                                <div id="rest"></div>
                                <img src="/Front/img/book.png" id="book">
                                <img src="/Front/img/cleaner.png" id="cleaner">
                                <img src="/Front/img/dumbbell.png" id="dumbbell">

                                
                                    
                                  <!-- Modal content -->
                                  <div class="modal-content" id="alert" style="display: none;">
                                   <div id="question_1"></div>
                                   <div id="question_2"></div>
                                   <div id="yes">예</div>
                                   <div id="no">아니오</div>

                                      
                                     
                                    <!--  Recursion Puzzle Container   -->
                                    <!--  PUZZLE GOES INSIDE HERE   -->
                                    <div id="recursion-puzzle-container">


                                      
                                
                                    </div>
                                    <!--   end container   -->
                                
                                  </div>
                                  <!--  end modal content  -->
                                
                                </div>
                            <div id="room_slide">
                                <div id="siri_ment1">다음의 화면에서 아이콘을 클릭해 보세요!</div>
                                
                                <div id="recursionPuzzleModal" class="modal">
                                    <div class="rainbow-container">
                                        <div class="green"></div>
                                        <div class="pink"></div>
                                        <div class="blue"></div>
                                      </div>
                                      
                                


                                </div>


                                <!-- The Modal -->

  
  <!-- partial -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.10/vue.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.11/lodash.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.4/TweenMax.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.4/utils/Draggable.min.js'></script>


                            </div>



                        </div>

                        



                    </div>

                    <!-- 캠모드 -->
                    <!-- id 설정 잘해야 스크롤 및 header 클릭시 움직임 -->
                    <div class="mainBox mainBox_03" id="cammode" style="background-color: lightblue;">
                        <div class="conWrap">
                            <!-- 웹캠 -->
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
                                <div class="subText" id="subText2">자세히 보기</div>
                            </div>
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
                            <div class="logo"><a href="index.html"><img src="/Front/img/logo.png" alt="logo"></a>
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
                    <div class="subTitle"  style="cursor: pointer;">PLAYLIST</div>
                    <div class="con_box modalBtn_4" id="btn_accelerator_modal">
                        <p class="listTitle" id="accelerator_text" onclick="move_playlist()"><span>○</span>나만의 플레이리스트</p>
                        <div class="img_box">
                            <img src="imgs/main/service_05.png" alt="" id="accelerator_img">
                        </div>
                    </div>

                    <!-- 제작자 서비스가이드 -->
                    <div class="subTitle"  style="cursor: pointer;">BPMTEAM</div>
                    <div class="con_box modalBtn_5" id="btn_subscription_modal">
                        <p class="listTitle" id="subscription_text" onclick="move_team()"><span>○</span>Bunker PlayList Manager</p>
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
                                    <img src="/Front/img/사운드벙커 2.jpg" alt="">
                                    <div class="conText">
                                        <p class="title color">카테고리 버튼 클릭</p>
                                        <p class="con">카테고리 버튼을 클릭 시<br>카테고리 선택 화면으로 전환</p>
                                    </div>
                                </div>
                            </div>
                            <div class="slideList swiper-slide">
                                <div class="slideConBox">
                                    <p class="conNum">02</p>
                                    <img src="/Front/img/사운드벙커 5-2.jpg" alt="">
                                    <div class="conText">
                                        <p class="title color">전 세계 동시 발매</p>
                                        <p class="con">전 세계 92개 국가에서, 당신의 음악을 만날 수 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="slideList swiper-slide">
                                <div class="slideConBox">
                                    <p class="conNum">03</p>
                                    <img src="https://www.oz-z.com/imgs/main/slideWrap2_img_02.png" alt="">
                                    <div class="conText">
                                        <p class="title color">음악을 들어요</p>
                                        <p class="con">시작해볼까요?</p>
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
                                        <div id="btn_go_mv" class="go catego" style="cursor: pointer;" onclick="move_cammode()">GO</div>
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