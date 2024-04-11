/**
 * 
 */
window.onload = function() {
	var img = document.getElementById("checkcode1");
	img.onclick = function() {
		var date = new Date().getTime();
		img.src = "/loginDemo/CheckCodeCervlet?" + date;
	}
}