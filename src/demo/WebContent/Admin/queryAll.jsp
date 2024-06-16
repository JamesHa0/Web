<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*,com.demo.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>显示所有信息</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>ID</td>
			<td>用户名</td>
			<td>密码</td>
			<td>手机号</td>
			<td>邮箱</td>
		</tr>
		<%
			List<User> userList = (List<User>) session.getAttribute("userList");
			for (User user : userList) {
		%>
		<tr>
			<td><%=user.getUserId()%></td>
			<td><%=user.getUserName()%></td>
			<td><%=user.getPassword()%></td>
			<td><%=user.getPhoneNumber()%></td>
			<td><%=user.getEmail()%></td>
		</tr>
		<%
			}
		%>
	</table>
	<p style="align: center;">
		<a href="Admin/query.jsp"><span style="color: blue; font-size: 14px;">返回</span></a>
	</p>
</body>
</html>