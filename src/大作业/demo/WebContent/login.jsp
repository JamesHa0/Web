<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登录</title>
<script type="text/javascript" src="js/login.js"></script>
<link rel="stylesheet" type="text/css" href="CSS/login.css">
</head>
<body>
	<%
		String message = (String) request.getAttribute("adminLogin_msg");
		if (message != null) {
	%>
	<script type="text/javascript">
	alert("<%=message%>");
	</script>
	<%
			request.removeAttribute("adminLogin_msg");
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
                                    <a href="index.jsp">首页</a>
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
                                            <li><a href="L_R.jsp">登录&注册</a></li>
                                        </ul>
                                    </div>
                                </td>
                        </tr>
                        </table>
                </tr>
                <tr>
                    <div class="login">
                        <div class="container">
                            <form name="login" method="post" action="loginServlet">
                                <table>
                                    <tr>
                                        <th colspan="2">管理员登录</th>
                                    </tr>
                                    <tr>
                                        <td>管理员ID：</td>
                                        <td><input type="text" name="userId"></td>
                                    </tr>
                                    <tr>
                                        <td>密&nbsp;码：</td>
                                        <td><input type="password" name="password"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img id="checkcode1" src="/demo/CheckCodeServlet" />
                                        </td>
                                        <td>
                                            <a href="#" onclick="reImg();">看不清换一张？</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <input id="checkcode" name="checkcode" type="text" placeholder="请输入验证码(不区分大小写)"> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                        	<input type="reset" />
                                        </td>
                                        <td align="center">
                                        	<input type="submit" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="hidden" name="isAdmin" value="true" /></td>
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
</body>
</html>