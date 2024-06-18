<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<script type="text/javascript" src="js/regist.js"></script>
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
										<a href="index.html">首页</a>
									</div>
								</td>
								<td>
									<div class="dropdown">
										<button class="dropbtn">新闻资讯</button>
										<div class="dropdown-content">
											<a href="guohu.html">国护日常</a> <a href="bbb.html">标兵班风采</a>
										</div>
									</div>
								</td>
								<td>
									<div class="dropbtn">
										<a href="skill.html">军训秘籍</a>
									</div>
								</td>
								<td></td>
								<td>
									<div>
										<ul>
											<li><a href="login.jsp">登录</a></li>
											<li><a href="regist.jsp">注册</a></li>
										</ul>
									</div>
								</td>
							</tr>
						</table>
						<!-- </div> -->
				</tr>
				<tr>
					<div class="login">
						<div class="container">
							<form name="login" method="post" action="">
								<table>
									<th colspan="2">用户注册</th>
									<tr>
										<td>姓名：</td>
										<td><input type="text" /></td>
									</tr>
									<tr>
										<td>性别：</td>
										<td><input type="radio" name="sex" value="male">男<input
											type="radio" name="sex" value="female">女</td>
									</tr>
									<tr>
										<td>联系电话：</td>
										<td><input type="text" /></td>
									</tr>
									<tr>
										<td>电子邮箱：</td>
										<td><input type="text" /></td>
									</tr>
									<tr>
										<td>设置密码：</td>
										<td><input type="password" placeholder="8~16个字符,包含数字和字母"
											id="password1" /></td>
									</tr>
									<tr>
										<td>确认密码：</td>
										<td><input type="password" id="password2" /></td>
									</tr>
									<tr>
										<td align="center">
											<button onclick="check()">确定</button>
										</td>
										<td align="center">
											<button onclick="javascript:location.reload();">清空</button>
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
</body>
</html>