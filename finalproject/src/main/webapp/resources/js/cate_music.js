let allMusic = [
    {
        name : "교진이 잡아",
        artist : "아이유(IU)",
        img : "music-1",
        audio : "music-1"
    },
    {
        name : "내가 아니라도",
        artist : "주호",
        img : "music-2",
        audio : "music-2"
    },
    {
        name : "나의 X에게",
        artist : "경서",
        img : "music-3",
        audio : "music-3"
    },
    {
        name : "검정색하트 (Feat. Leellamarz, BE'O)",
        artist : "TOIL",
        img : "music-4",
        audio : "music-4"
    },
    {
        name : "우리서로사랑하지는말자",
        artist : "기리보이",
        img : "music-5",
        audio : "music-5"
    },
    {
        name : "BROKEN FERRARI",
        artist : "호미들",
        img : "music-6",
        audio : "music-6"
    },
    {
        name : "만남은 쉽고 이별은 어려워 (Feat. Leellamarz) (Prod. TOIL)",
        artist : "베이식 (Basick)",
        img : "music-7",
        audio : "music-7"
    },
    {
        name : "거짓말 (Feat. BIG Naughty)",
        artist : "김승민",
        img : "music-8",
        audio : "music-8"
    },
    {
        name : "이혼서류",
        artist : "기리보이",
        img : "music-9",
        audio : "music-9"
    },
    {
        name : "봄 (Feat. ASH ISLAND, Skinny Brown)", //song_title
        artist : "TOIL", // artist
        img : "music-10", // music-[i]
        audio : "music-10"
    },
]

$(document).ready(() => {

	// ajax통신, 글데이터 가져오기
	$.ajax({
		url: 'MusicList.do', // 어디로 요청을 보낼 것인가? 
		type: 'post', //get?, post?
		data: {
		'key(name)' : value  // -> 보내줄데이터
		},
		/* dataType : 'json',  응답 받는 데이터가 어떤 형태인지 */
		success: function (res) {
			// 요청이 성공했을때  실행되는 Call back 함수 
			// res --> 응답받는 데이터가 담기는 변수
			console.log(res);
			},
		error: function (e) {
			// 404,405,500 --> 요청자체가 실패
			// e--> 어떤 에러인지 담기는 변수
			alert('error');
		}
	})
})
