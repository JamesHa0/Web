<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta charset="utf-8">
	<title>军训秘籍</title>
	<link rel="stylesheet" type="text/css" href="CSS/login.css">
</head>
<body>
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
                                            <a href="guohu.jsp">国护日常</a>
                                            <a href="bbb.jsp">标兵班风采</a>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="dropbtn">
                                        <a href="skill.jsp">军训秘籍</a>
                                    </div>
                                </td>
                                <td>
                                </td>
                                <td>
                                    <div>
                                        <ul class='userName'>
											<%
												String userName = (String) session.getAttribute("userName");
												if (userName == null) {
											%>
											<li><a href="L_R.jsp">登录&注册</a></li>
											<%
												} else {
											%>
											<li>
												<p>欢迎您，${sessionScope.userName}</p>
											</li>
											<li><a href="logout.jsp">登出</a></li>
											<%
												}
											%>
										</ul>
                                    </div>
                                </td>
                        </tr>
                        </table>
                    <!-- </div> -->
                </tr>
                <tr>
                    <div>
                        <iframe src="word/skill.html" class="word" ></iframe>
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