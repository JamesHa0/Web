<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录注册</title>
<script type="text/javascript" src="js/L_R.js"></script>
<link rel="stylesheet" type="text/css" href="CSS/L_R.css">
</head>
<body>
	<%
		String message = (String) request.getAttribute("userLogin_msg");
		if (message != null) {
	%>
	<script type="text/javascript">
	alert("<%=message%>");
	</script>
	<%
		request.removeAttribute("userLogin_msg");
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
											<li><a href="L_R.jsp">登录&注册</a></li>
										</ul>
									</div>
								</td>
							</tr>
						</table>
				</tr>
				<tr>
					<div class="container right-panel-active">
						<!-- Sign In -->
						<div class="container__form container--signin">
							<form action="loginServlet" class="form" id="form2" method="post">
								<h2 class="form__title">登录</h2>
								<p>
									<a href="${pageContext.request.contextPath }/login.jsp">管理员登录</a>
								</p>
								<input name="userId" type="text" placeholder="学号/ID" class="input" />
								<input name="password" type="password" placeholder="密码" class="input" />
								<input name="checkcode" placeholder="点击下方图片刷新" value="" class="checkcode">
								<img id="checkcode1" src="/demo/CheckCodeServlet" />

								<button class="btn" type="submit">登录</button>
                                <input type="hidden" name="isAdmin" value="false" />
							</form>
						</div>


						<!-- Sign Up 注册在左边 是form2 -->
						<div class="container__form container--signup">
							
							<form action="registServlet" method="post" class="form" id="form1"
								onsubmit="return reg(this);">
								<h2 class="form__title">注册</h2>
								<input name="userId" type="text" placeholder="学号*" class="input" />
								<input name="userName" type="text" placeholder="用户名*" class="input" />
								<input name="phoneNumber" type="text" placeholder="手机号*" class="input" />
								<input name="email" type="text" placeholder="邮箱" class="input" />
								<input name="password1" type="password" placeholder="密码*" class="input" />
								<input name="password2" type="password" placeholder="确认密码*" class="input" />
								<button class="btn">注册</button>
							</form>
						</div>

						<div class="container__overlay">
							<div class="overlay">
								<div class="overlay__panel overlay--left">
									<button class="btn" id="signIn">没有账号？注册一个</button>
								</div>
								<div class="overlay__panel overlay--right">
									<button class="btn" id="signUp">已有账号，直接登录</button>
								</div>
							</div>
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
<script>
    const signInBtn = document.getElementById("signIn");
    const signUpBtn = document.getElementById("signUp");
    const fistForm = document.getElementById("form1");
    const secondForm = document.getElementById("form2");
    const container = document.querySelector(".container");
 
    signInBtn.addEventListener("click", () => {
      container.classList.remove("right-panel-active");
    });
 
    signUpBtn.addEventListener("click", () => {
      container.classList.add("right-panel-active");
    });

  </script>
</html>