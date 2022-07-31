var mdata;



function workajax(){
	$.ajax({
		url: 'WMusicList.do', 
		type: 'post', 
		cache: false,
		success: function (data) {
			
			mdata = data;

			sessionStorage.setItem('mdata', JSON.stringify(mdata));
			console.log('ajax:',mdata)
			console.log(JSON.stringify(mdata))
			alert('work합격')
			
			},
		error: function (data) {
			alert('error');
		}
	})
}

function studyajax(){
	$.ajax({
		url: 'SMusicList.do', 
		type: 'post', 
		cache: false,
		success: function (data) {
			
			mdata = data;

			sessionStorage.setItem('mdata', JSON.stringify(mdata));
			console.log('ajax:',mdata)
			console.log(JSON.stringify(mdata))
			
			alert('study합격')
			},
		error: function (data) {
			alert('error');
		}
	})
}
