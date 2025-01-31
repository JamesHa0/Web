<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>index</title>
		<script type="text/javascript" src="js/index.js"></script>
		<link rel="stylesheet" type="text/css" href="CSS/index.css">
	</head>
	<body>
		<div class="video-box">
			<img class="duihui" src="img/队徽.png">
			<video class="video-background" preload="auto" loop playsinline autoplay src="video/1.mp4" tabindex="-1" muted="muted" ></video>
		</div>
		<ul class="nav">
			<li><a href="index.jsp" class="index">首页</a></li>
			<li>
				<div class="dropdown">
					<button class="dropbtn">新闻资讯</button>
					<div class="dropdown-content">
						<a href="guohu.jsp">国护日常</a>
						<a href="bbb.jsp">标兵班风采</a>
					</div>
				</div>
			</li>
			<li><a href="skill.jsp">军训秘籍</a></li>
		</ul>
		<ul class="login">
			<%
				String userName = (String)session.getAttribute("userName");
				if(userName == null){
			%>
			<li>
				<a href="L_R.jsp">登录&注册</a>
			</li>
			<%
				}else{
			%>
			<li>
				<p>欢迎您，${sessionScope.userName}</p>
			</li>
			<li>
				<a href="logout.jsp">登出</a>
			</li>
			<%
				}
			%>
			
		</ul>
		<div class="slogan">
		    <div class="subtitle">哈尔滨学院</div>
		    <div class="title">大学生军事爱好者协会</div>
		    <div class="try-btn"> <a href="#more">了解更多</a></div>
		</div>

		<div class="picture">
			<div class="picture-area">
				<ul id="item">
					<li class="item">
						<img src="img/duilie.webp" >
					</li>
					<li class="item">
						<img src="img/p1.webp" >
					</li>
					<li class="item">
						<img src="img/yangqi.webp" >
					</li>
					<li class="item">
						<img src="img/p2.webp" >
					</li>
					<li class="item">
						<img src="img/合照.webp" >
					</li>
				</ul>
			</div>
			<div id="btn-left"><</div>
			<div id="btn-right">></div>
			<ul id="circle">
				<li class="circle"></li>
				<li class="circle"></li>
				<li class="circle"></li>
				<li class="circle"></li>
				<li class="circle"></li>
			</ul>
		</div>


		<div class="introduction" id="more">
			<p><b class="b">哈尔滨学院军事爱好者协会</b>成立于2016年5月20日，由学生处（武装部）组建并直接指导，其中最重要的组成部分为哈尔滨学院大学生国旗护卫队。大学生国旗护卫队一直致力于面向本校师生和社会各界开展“信仰、信念、信心”教育；以宣讲国旗法、国歌法、承担校内外大型升国旗仪式和分列式表演等任务为载体，开展“进企业、进社区、进学校”，先后深入哈尔滨锅炉厂、哈尔滨市继红小学、哈尔滨市花园小学、哈尔滨市热电学校弘扬爱国主义、集体主义、社会主义和理想信念教育系列活动；作为共建培育基地，哈尔滨市新康小学到我校开展“红领巾进校园”活动；在纪念红军长征胜利八十周年之际，走进苏宁团开展了“传承长征精神，铭记历史丰碑”爱国主义教育活动，向社会展示了当代大学生的风采。两年来队员们始终秉承<b style="color: #215E21;">“忠诚、荣誉、责任、担当”</b>的队训，平日里刻苦训练并积极弘扬“团结拼搏、勇于奉献”的精神，遵行<b style="color: red;">“以我火红青春，谱写国旗礼赞；用我生命热血，捍卫国旗尊严”</b>的誓言。务实力行，开拓进取，向社会展现哈尔滨学院大学生热爱祖国、不辱使命、积极向上的精神风貌。</p>
		</div>


	
		<div class="foot">
			<table>
				<tr>
					<td rowspan='4'><img src="img/校徽.png" width=200px></td>
					<td>哈尔滨学院</td>
					<td rowspan='4'><img src="img/douyin.jpg" width=200px></td>
				</tr>
				<tr>
					<td>军事爱好者协会|新媒体部门</td>
				</tr>
				<tr>
					<td>22023237-詹宇昊</td>
				</tr>
				<tr>
					<td>联系电话：13305852043</td>
				</tr>
			</table>
		</div>
	</body>
</html>


