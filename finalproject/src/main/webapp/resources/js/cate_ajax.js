var mdata;

function workajax(){
	$.ajax({
		url: 'WMusicList.do', 
		type: 'post', 
		headers: { 'Pragma': 'no-cache' },
		cache: false,
		success: function (data) {

			mdata = data;

			localStorage.setItem('mdata', JSON.stringify(mdata));
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
		headers: { 'Pragma': 'no-cache' },
		cache: false,
		success: function (data) {

			mdata = data;

			localStorage.setItem('mdata', JSON.stringify(mdata));
			console.log('ajax:',mdata)
			console.log(JSON.stringify(mdata))
			
			alert('study합격')
			},
		error: function (data) {
			alert('error');
		}
	})
}

function deleteAllCookies() {
 var c = document.cookie.split("; ");
 for (i in c)
  document.cookie =/^[^=]+/.exec(c[i])[0]+"=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
}