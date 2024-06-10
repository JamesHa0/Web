/**
 * 
 */
var password1 = document.getElementById('password1');
var password2 = document.getElementById('password2');
var regex = /^(?=.*[a-zA-Z])(?=.*\d).{8,16}$/;
// 验证密码
function check() {
	event.preventDefault();

	var p1 = password1.value;
	if (p1.length >= 8 && p1.length <= 16) {
		if (regex.test(p1)) {
			var p2 = password2.value;
			if (p1 == p2) {
				alert('注册成功！');
			} else {
				alert('两次密码输入不一致，请重新输入');
			}
		} else {
			alert('密码应包含数字和字母，请重新设置');
		}
	} else {
		alert('密码长度应在8~16个字符之间，请重新设置');
	}
}