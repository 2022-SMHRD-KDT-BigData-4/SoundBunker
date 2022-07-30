//var songTitle = localStorage.getItem('mtitle')
//var songArtist = localStorage.getItem('martist')
var songData = localStorage.getItem('mdata')
var lastData = JSON.parse(songData)
// console.log(lastData[0].song_title)


var testMusic = []

for(idx in lastData) {

    testMusic[idx] = [
        {
            name : (idx, lastData[idx].song_title),
            artist : (idx, lastData[idx].artist),
       		audio : (idx, lastData[idx].song_title)
        },
   ]
}


var allMusic = [].concat.apply([], testMusic);
console.log(testMusic) 
console.log(allMusic) 





/*let allMusic = [
   {
       name : songTitle,
       artist : songArtist,
       img : "music-1",
       audio : songTitle
   },
   {
       name : songTitle,
       artist : songArtist,
       img : "music-2",
       audio : songTitle
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
]*/




