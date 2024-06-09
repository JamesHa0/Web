<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
<link rel="stylesheet" type="text/css" href="CSS/login.css">
</head>
<body>
	<%
		String message = (String) request.getAttribute("login_msg");
		if (message != null) {
	%>
	<script type="text/javascript">
	alert("<%=message%>");
	</script>
	<%
		}
	%>
	<div>
        <div class="box-m">
            <table>
                <tr>
                    <div class="top">
                        <img class="duihui" src="img/队徽.png">
                    </div>
                </tr>
                <tr>
                    <div>
                        <table class="nav">
                            <tr>
                                <td>
                                    <div class="dropbtn">
                                    <a href="index.html">首页</a>
                                    </div>
                                </td>
                                <td>
                                    <div class="dropdown">
                                        <button class="dropbtn">新闻资讯</button>
                                        <div class="dropdown-content">
                                            <a href="guohu.html">国护日常</a>
                                            <a href="bbb.html">标兵班风采</a>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="dropbtn">
                                        <a href="skill.html">军训秘籍</a>
                                    </div>
                                </td>
                                <td>
                                </td>
                                <td>
                                    <div>
                                        <ul>
                                            <li><a href="login.jsp">登录</a></li>
                                            <li><a href="register.html">注册</a></li>
                                        </ul>
                                    </div>
                                </td>
                        </tr>
                        </table>
                </tr>
                <tr>
                    <div class="login">
                        <div class="container">
                            <form name="login" method="post" action="/demo/loginServlet">
                                <table>
                                    <tr>
                                        <th colspan="2">用户登录</th>
                                    </tr>
                                    <tr>
                                        <td>用户名：</td>
                                        <td><input type="text" name="username"></td>
                                    </tr>
                                    <tr>
                                        <td>密&nbsp;码：</td>
                                        <td><input type="password" name="password"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img id="checkcode1" src="/loginDemo/CheckCodeServlet" />
                                        </td>
                                        <td>
                                            <button onclick="refreshCaptcha()">刷新</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <input id="checkcode" type="text" placeholder="请输入验证码(不区分大小写)"> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <button onclick="validateCaptcha()">提交</button>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </tr>
                <tr>
                    <div class="foot">
                        <table>
                            <tr>
                                <td width="300px">
                                    <div>
                                        <img src="img/校徽.png" width=200px float="left">
                                    </div>
                                </td>
                                <td width="400px">
                                    <div>
                                        <ul>
                                            <li>军事爱好者协会|新媒体部门</li>
                                            <li>22023237-詹宇昊</li>
                                            <li>联系电话：13305852043</li>
                                        </ul>
                                    </div>
                                </td>
                                <td width="300px">
                                    <div>
                                        <img src="img/douyin.jpg" width=200px class="douyin">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </tr>
            </table>
        </div>
    </div>
    <script>
        function refreshCaptcha() {
    		generateRandomImage();
    		document.getElementById("inputCode").value = ""; // 清空验证码输入框
  		}  

      </script>
</body>
</html>