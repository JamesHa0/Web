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


//注册验证
function check(){
    event.preventDefault();
    var userId = document.getElementById('userId');
    var userName = document.getElementById('userName');
    var password1 = document.getElementById('password1');
    var password2 = document.getElementById('password2');
    var phoneNumber = document.getElementById('phoneNumber');
    var regex = /^(?=.*[a-zA-Z])(?=.*\d).{8,16}$/;
    var reg_tel = /^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$/;
    var p1 = password1.value;
    var p2 = password2.value;
    var ph = phoneNumber.value;
    
    //验证非空
    if(userId.value == ''){
    	alert('用户ID不得为空！');
    }else if(userName.value == ''){
    	alert('用户名不得为空！');
    }
    
    //验证手机号
    else if(!reg_tel.test(ph)){
    	alert('请输入正确的手机号');
    }
    
    //验证密码
    else if(p1.length >= 8 && p1.length <= 16){
        if(regex.test(p1)){
            if(p1 == p2){
            	document.form1.submit();
            }else{
                alert('两次密码输入不一致，请重新输入');
            }
        }else{
            alert('密码应包含数字和字母，请重新设置');
        }
    }else{
        alert('密码长度应在8~16个字符之间，请重新设置');
    }
}
