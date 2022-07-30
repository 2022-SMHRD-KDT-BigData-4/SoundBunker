var mdata;
$(document).ready(() => {
	
	// ajax통신, 글데이터 가져오기
	$.ajax({
		url: 'MusicList.do', // 어디로 요청을 보낼 것인가? 
		type: 'post', //get?, post?
		success: function (data) {

			mdata = data;

			//for(let i = 0; i<=mdata.length; i++){
            //localStorage.setItem('mtitle' , mdata[i].song_title);
			//localStorage.setItem('martist' , mdata[i].artist);
			localStorage.setItem('mdata', JSON.stringify(mdata));
			console.log('ajax:',mdata)
			console.log(JSON.stringify(mdata))
			//}
			
			
			},
		error: function (data) {
			// 404,405,500 --> 요청자체가 실패
			// e--> 어떤 에러인지 담기는 변수
			alert('error');
		}
	})
})