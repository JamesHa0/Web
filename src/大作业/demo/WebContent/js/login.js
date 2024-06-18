/**
 * 
 */
window.onload = function() {
	var img = document.getElementById("checkcode1");
	img.onclick = function() {
		var date = new Date().getTime();
		img.src = "/demo/CheckCodeServlet?" + date;
	}
}

function reImg(){  
    var img = document.getElementById("checkcode1"); 
    var date = new Date().getTime();
    img.src = "/demo/CheckCodeServlet?" + date;
} 
