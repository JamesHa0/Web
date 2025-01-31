<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta charset="utf-8">
	<title>国护日常</title>
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
                    <div class="txt">
                        <h1>同升一面旗，筑梦新征程</h1>
                        <h4>——国旗护卫队开展升旗活动</h4>
                        <p>2023-05-11</p>
                        <p>为继承和弘扬“五四”精神，展现当代青年大学生风采。我校大学生国旗护卫队于5月4日早在学校操场举行了以“五四烽火燃青春，爱国精神谱芳华”为主题的升旗活动。黑龙江职业学院学生处军训办教师全程参观了活动。队员们身着戎装，步伐坚毅，护卫着鲜艳的五星红旗走向升旗台。</p>
                        <p>伴着激昂雄壮的《义勇军进行曲》，国旗冉冉升起，在空中迎风飘扬。</p>
                        <p>国旗下，同学们通过红色诗词朗诵，表达了对祖国的热爱和对青年的赞颂。</p>
                        <p>学生代表分别发言，勉励大家传承五四精神，坚定理想信念，努力做新时代的有志、有识、有为青年。</p>
                        <p>本次升旗活动既是一次深刻的爱国主义主题教育，也是我校大学生国旗护卫队面向省内兄弟院校的一次风采展示。青春誓言，壮阔有力。哈尔滨学院大学生国旗护卫队将继续发扬“五四”精神，锐意进取、奋力拼搏，在新时代新征程上唱响更加壮丽的青春之歌。</p>
                        <img src="img/duilie.webp">
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