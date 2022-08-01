
var songData = sessionStorage.mdata
var lastData = JSON.parse(songData)
var camData = localStorage.getItem('cam')

console.log('[cate_music.js]:', localStorage.getItem('cam')) 

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

sessionStorage.setItem('allMusic2', JSON.stringify(allMusic));




