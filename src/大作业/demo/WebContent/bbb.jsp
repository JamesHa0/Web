<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<title>标兵班风采</title>
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
											<a href="guohu.jsp">国护日常</a> <a href="bbb.jsp">标兵班风采</a>
										</div>
									</div>
								</td>
								<td>
									<div class="dropbtn">
										<a href="skill.jsp">军训秘籍</a>
									</div>
								</td>
								<td></td>
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
						<h1>退伍不褪色</h1>
						<h4>——哈尔滨学院退役大学生风采展示</h4>
						<p>2023-05-14</p>
						<p>在哈尔滨学院每年都有这样一批优秀的有志青年，他们积极响应国家号召，踊跃参军入伍。在服役期间，他们军营追梦，无悔青春。从校园走进军营，他们扛起责任和担当，为广大有志青年树立了新的榜样！</p>
						<p>
							在学校的操场上，有这样一道不一样的风景，他们自全国各地的军营历练蜕变而来，在操场上续写着自己火红的青春篇章。他们身上不同的军装，是每个人独有的部队记忆，但他们的心中有着一个相同的坚定信念，刻苦训练，<b>若有战，召必回！</b>
						</p>
						<p>
							哈尔滨学院的退役大学生们，在每天的早晨以及周末，按时抵达训练场进行训练，重温班战术展开、单兵战术动作，以及擒敌拳等军事训练科目。训练时严肃认真，以军人的标准做到<b>“令行禁止”</b>，在同学们之中发挥了榜样的作用。
						</p>
						<p>戎装虽卸，但使命犹在。相信重返校园后，他们定会卸肩章而不卸担当，褪戎装而不退荣光,在未来的道路上星光璀璨、前程似锦！</p>
						<p>哈尔滨学院军事爱好者协会、大学生国旗护卫队向你们致敬！向所有退伍军人致敬！</p>
						<img src="img/ps1.webp">
						<p>
							<b>“</b>当了一回兵，就不会变回原来的样子，因为胸中已有丘壑，眼里已存山河。<b>”</b>
						</p>
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