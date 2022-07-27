<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="cam.css">
    <link rel="stylesheet" href="player.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">
</head>
<script src="/jquery-3.6.0.js"></script>

<style>
    @font-face {
        font-family: 'BRBA_B';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_seven@1.2/BRBA_B.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }


    :root {
        --pink: turquoise;
        --violet: violet;
        --white: #fff;
        --lightshadow: rgba(0, 0, 0, 0.15);
        --lightblack: #515c6f;
        --pinkshadow: #ffcbdd;
        --darkwhite: #cecaca;
    }

    .wrap__music {
        display: flex;
        align-items: center;
        justify-content: center;
        min-height: 100%;
        user-select: none;
    }

    .music__inner {
        width: 100%;
        padding: 25px 30px;
        overflow: hidden;
        position: relative;
        border-radius: 15px;
        background: none;
        box-shadow: 0 6px 15px var(--lightshadow);
        margin-left: -30px;
    }

    .music__top {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .music__top i {
        font-size: 30px;
        color: var(--lightblack);
    }

    .music__top h3 {
        font-size: 18px;
        color: var(--lightblack);
        font-weight: 500;
    }

    .music__img {
        width: 100%;
        height: 256px;
        overflow: hidden;
        border-radius: 15px;
        margin-top: 25px;
        box-shadow: 0 6px 12px var(--lightshadow);
    }

    .music__img img {
        width: 100%;
        height: 100%;
        vertical-align: top;
        object-fit: contain;
    }

    .music__song {
        text-align: center;
        margin: 30px;
    }

    .music__song p {
        color: var(--lightblack);
    }

    .music__song .name {
        color: white;
        font-weight: bold;
        font-size: 35px;
    }

    .music__song .artist {
        color: white;
        font-weight: bold;
        font-size: 25px;
        opacity: 0.9;
        line-height: 35px;
    }

    .music__progress {
        height: 6px;
        width: 100%;
        border-radius: 10px;
        background: #f0f0f0;
        cursor: pointer;
    }

    .music__progress .bar {
        height: inherit;
        width: 0%;
        position: relative;
        border-radius: inherit;
        background: linear-gradient(90deg, var(--pink) 0%, var(--violet) 100%);
    }

    .music__progress .timer {
        margin-top: 2px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        color: var(--lightblack);
        font-size: 0.9em;
        pointer-events: none;
    }

    .music__control {
        margin-top: -19px;
        display: flex;
        align-items: center;
        justify-content: space-around;
        margin-left: 55%;
        position: relative;
        left: -33%;
    }

    .music__control i {
        font-size: 28px;
        user-select: none;
        background: whitesmoke;
        background-clip: text;
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    .music__control i:nth-child(2),
    .music__control i:nth-child(4) {
        font-size: 55px;
    }

    .music__control .play-pause {
        width: 54px;
        height: 54px;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 50%;
        background: linear-gradient(var(--white) 0%, var(--darkwhite) 100%);
        box-shadow: 0 0 0 2px black;
        z-index: 1;
    }

    .music__control .play-pause::before {
        content: '';
        position: absolute;
        width: 40px;
        height: 40px;
        border-radius: inherit;
        background: black;
        z-index: -1;
    }

    .music__control .play-pause #control-play {
        -webkit-text-fill-color: var(--white);
        opacity: 0.8;
    }

    .music__list {
        position: absolute;
        background: var(--white);
        width: 100%;
        left: 0;
        bottom: -400px;
        z-index: 10;
        border-radius: 15px;
        padding: 15px 30px;
        box-shadow: 0 -3px 10px rgba(0, 0, 0, 0.1);
        transition: all 0.15s ease-out;
        opacity: 0;
        pointer-events: none;
    }

    .music__list.show {
        bottom: 0;
        opacity: 1;
        pointer-events: auto;
    }

    .music__list .title {
        display: flex;
        align-items: center;
        justify-content: space-between;
        color: var(--lightblack);
        margin-bottom: 10px;
    }

    .title .queue {
        vertical-align: -5px;
    }

    .music__list .list {
        color: var(--lightblack);
    }

    .music__list .list>ul {
        max-height: 260px;
        margin: 10px 0;
        overflow: auto;
    }

    .music__list .list>ul::-webkit-scrollbar {
        width: 0;
    }

    .music__list .list>ul>li {
        display: flex;
        align-items: center;
        justify-content: space-between;
        border-bottom: 1px solid #e5e5e5;
        padding-bottom: 5px;
        margin-bottom: 5px;
    }

    .music__list .list>ul>li.playing {
        color: var(--pinkshadow);
    }

    .music__list .list>ul>li>div em {
        font-style: normal;
    }

    .music__list .list>ul>li>div p {
        opacity: 0.8;
    }
</style>
</style>

<body>
    <!-- <button class="fullscreen" href="#" title="전체화면" onclick="openFullScreenMode()" >
            전체화면
        </button> -->
    <div id="main" style="margin: 50px">
        <div class="name">
            SoundBunker;
        </div>

        <div>
            <ul class="music">
                <li id="bar1"></li>
                <li id="bar2"></li>
                <li id="bar3"></li>
                <li id="bar4"></li>
                <li id="bar5"></li>
                <li id="bar6"></li>
                <li id="bar7"></li>
                <li id="bar8"></li>
                <li id="bar9"></li>
                <li id="bar10"></li>
                <li id="bar11"></li>
                <li id="bar12"></li>
                <li id="bar13"></li>
                <li id="bar14"></li>
                <li id="bar15"></li>
                <li id="bar16"></li>
                <li id="bar17"></li>
                <li id="bar18"></li>
            </ul>
        </div>
        <div class="wrap__music">
            <div class="music__inner">
                <!-- // music__top -->
                <div class="music__img" style="display: none;">
                    <img src="/musicplayer/images/music-1.jpg" alt="이미지1">
                </div>
                <!-- // music__img -->
                <div class="music__song">
                    <p class="name"></p>
                    <p class="artist"></p>
                </div>
                <!-- // music__song -->
                <div class="music__progress" style="display: none;">
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
                    <i id="control-repeat" class="material-icons" title="전체 반복" style="visibility: hidden;">repeat</i>
                    <i id="control-prev" class="material-icons" title="이전곡">skip_previous</i>
                    <div class="play-pause">
                        <i id="control-play" class="material-icons" title="재생">play_arrow</i>
                        <!-- <i class="material-icons">pause</i> -->
                    </div>
                    <i id="control-next" class="material-icons" title="다음곡">skip_next</i>
                    <i id="control-list" class="material-icons" title="재생목록" style="display: none;">queue_music</i>
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
    </div>

</body>
<script src="cam.js"></script>
<script src="/Front/musicplayer/api/music.js"></script>
<script>
    
    const musicWrap = document.querySelector(".wrap__music");
    const musicImg = musicWrap.querySelector(".music__img img");
    const musicName = musicWrap.querySelector(".music__song .name");
    const musicArtist = musicWrap.querySelector(".music__song .artist");
    const musicAudio = musicWrap.querySelector("#main-audio");
    const musicPlay = musicWrap.querySelector("#control-play");
    const musicPrevBtn = musicWrap.querySelector("#control-prev");
    const musicNextBtn = musicWrap.querySelector("#control-next");
    const musicProgress = musicWrap.querySelector(".music__progress");
    const musicProgressBar = musicProgress.querySelector(".bar");
    const musicProgressCurrent = musicProgress.querySelector(".current");
    const musicProgressDuration = musicProgress.querySelector(".duration");
    const musicRepeat = musicWrap.querySelector("#control-repeat");
    const musicList = musicWrap.querySelector(".music__list");
    const MusicListBtn = musicWrap.querySelector("#control-list");
    const MusicListClose = musicList.querySelector(".close");
    const musicListUl = musicList.querySelector(".list ul");

    let musicIndex = 1;

    
    // 음악 재생
    function loadMusic(num) {
        musicImg.alt = `${allMusic[num - 1].img}`;
        musicName.innerText = allMusic[num - 1].name;
        musicArtist.innerText = allMusic[num - 1].artist;
        musicAudio.src = `/Front/musicplayer/songs/${allMusic[num - 1].audio}.mp3`;
    }

    // 플레이 버튼
    function playMusic() {
        musicWrap.classList.add("paused");
        musicPlay.innerText = "pause";
        musicPlay.setAttribute("title", "일시정지")
        musicAudio.play();
    }
    // 일시정지 버튼
    function pauseMusic() {
        musicWrap.classList.remove("paused");
        musicPlay.innerText = "play_arrow";
        musicPlay.setAttribute("title", "재생")
        musicAudio.pause();
    }

    // 이전 곡 듣기 버튼
    function prevMusic() {
        musicIndex--;
        musicIndex < 1 ? musicIndex = allMusic.length : musicIndex = musicIndex;
        loadMusic(musicIndex);
        playMusic();
        playListMusic();
    }

    // 다음 곡 듣기 버튼
    function nextMusic() {
        musicIndex++;
        musicIndex > allMusic.length ? musicIndex = 1 : musicIndex = musicIndex;
        loadMusic(musicIndex);
        playMusic();
        playListMusic();
    }

    // 뮤직 진행바
    musicAudio.addEventListener("timeupdate", (e) => {
        const currentTime = e.target.currentTime;
        const duration = e.target.duration;
        let progressWidth = (currentTime / duration) * 100;
        musicProgressBar.style.width = `${progressWidth}%`

        musicAudio.addEventListener("loadeddata", () => {
            let audioDuration = musicAudio.duration;
            let totalMin = Math.floor(audioDuration / 60);
            let totalSec = Math.floor(audioDuration % 60);
            if (totalSec < 10) totalSec = `0${totalSec}`;

            musicProgressDuration.innerText = `${totalMin}:${totalSec}`;
        })

        let currentMin = Math.floor(currentTime / 60);
        let currentSec = Math.floor(currentTime % 60);
        if (currentSec < 10) currentSec = `0${currentSec}`;
        musicProgressCurrent.innerText = `${currentMin}:${currentSec}`
    })

    // 진행 버튼
    musicProgress.addEventListener("click", e => {
        let progressWidth = musicProgress.clientWidth;
        let clickedOffsetX = e.offsetX;
        let songDuration = musicAudio.duration;

        musicAudio.currentTime = (clickedOffsetX / progressWidth) * songDuration;
        playMusic();
    })




    // 재생/일시정지
    musicPlay.addEventListener("click", () => {
        const isMusicPaused = musicWrap.classList.contains("paused");
        isMusicPaused ? pauseMusic() : playMusic();
    })

    musicPrevBtn.addEventListener("click", () => {
        prevMusic();
    });
    musicNextBtn.addEventListener("click", () => {
        nextMusic();
    });

    

    // 반복 버튼
    musicRepeat.addEventListener("click", () => {
        let getText = musicRepeat.innerText;

        switch (getText) {
            case "repeat":
                musicRepeat.innerText = "repeat_one";
                musicRepeat.setAttribute("title", "한곡 반복")
                break;

            case "repeat_one":
                musicRepeat.innerText = "shuffle";
                musicRepeat.setAttribute("title", "랜덤 반복")
                break;

            case "shuffle":
                musicRepeat.innerText = "repeat";
                musicRepeat.setAttribute("title", "전체 반복")
                playListMusic();
                break;
        }
    })

    // 오디오가 끝나고 
    musicAudio.addEventListener("ended", () => {
        let getText = musicRepeat.innerText;

        switch (getText) {
            case "repeat":
                nextMusic();
                break;

            case "repeat_one":
                loadMusic(musicIndex);
                playMusic();
                break;

            case "shuffle":
                let randIndex = Math.floor((Math.random() * allMusic.length) + 1);
                do {
                    randIndex = Math.floor((Math.random() * allMusic.length) + 1);
                } while (musicIndex == randIndex);
                musicIndex = randIndex;
                loadMusic(musicIndex);
                playMusic();
                break;
        }
    })

    // 뮤직 리스트 버튼
    MusicListBtn.addEventListener("click", () => {
        musicList.classList.add("show");
    })

    // 뮤직 리스트 닫기 버튼
    MusicListClose.addEventListener("click", () => {
        musicList.classList.remove("show");
    })

    // 뮤직 리스트 구현하기
    // for (let i = 0; i < allMusic.length; i++) {
    //     let li = `
    //             <li data-index="${i + 1}">
    //                 <div>
    //                     <em>${allMusic[i].name}</em>
    //                     <p>${allMusic[i].artist}</p>
    //                 </div>
    //                 <audio class="${allMusic[i].audio}" src="/Front/musicplayer/songs/${allMusic[i].audio}.mp3"></audio>
    //                 <span id="${allMusic[i].audio}" class="audio-duration">3:36</span>
    //             </li>
    //         `;
    //     musicListUl.insertAdjacentHTML("beforeend", li);

    //     let liAudioDuration = musicListUl.querySelector(`#${allMusic[i].audio}`);
    //     let liAudio = musicListUl.querySelector(`.${allMusic[i].audio}`);

    //     liAudio.addEventListener("loadeddata", () => {
    //         let audioDuration = liAudio.duration;
    //         let totalMin = Math.floor(audioDuration / 60);
    //         let totalSec = Math.floor(audioDuration % 60);
    //         if (totalSec < 10) totalSec = `0${totalSec}`;

    //         liAudioDuration.innerText = `${totalMin}:${totalSec}`;
    //         liAudioDuration.setAttribute("data-duration", `${totalMin}:${totalSec}`);
    //     });
    // }

    // 뮤직 리스트 클릭하기
    // const musicListAll = musicListUl.querySelectorAll("li");



    // function playListMusic() {
    //     for (let j = 0; j < musicListAll.length; j++) {
    //         let audioTag = musicListAll[j].querySelector(".audio-duration");
    //         let adDuration = audioTag.getAttribute("data-duration");

    //         if (musicListAll[j].classList.contains("playing")) {
    //             musicListAll[j].classList.remove("playing");
    //             audioTag.innerText = adDuration;
    //         }

    //         if (musicListAll[j].getAttribute("data-index") == musicIndex) {
    //             musicListAll[j].classList.add("playing");
    //             audioTag.innerText = "재생중";
    //         }
    //         musicListAll[j].setAttribute("onclick", "clicked(this)");
    //     }
    // }

    // function clicked(el) {
    //     let getLiIndex = el.getAttribute("data-index");

    //     musicIndex = getLiIndex;
    //     loadMusic(musicIndex);
    //     playMusic();
    //     playListMusic();
    // }
    // 창이 열리면 노래 시작 
    
    window.addEventListener("load", () => {
        loadMusic(musicIndex);
        musicWrap.classList.add("paused");
        musicPlay.innerText = "pause";
        musicPlay.setAttribute("title", "일시정지")
        musicAudio.play();
    });


</script>


</html>

</html>