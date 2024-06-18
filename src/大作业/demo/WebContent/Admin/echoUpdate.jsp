<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.demo.User"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>显示要修改的信息</title>
<style type="text/css">
* {
	margin: 0px auto;
}
</style>

</head>
<body>
	<%
		User user = (User) session.getAttribute("user");
		String message = (String) request.getAttribute("msg");
		if (message != null) {
	%>
	<script type="text/javascript">
	alert("<%=message%>");
		location.href = "Admin/update.jsp";
	</script>
	<%
		}
	%>
	<form action="echoUpdate" method="post">
		<table style="align: center">
			<caption>请输入用户信息</caption>
			<tr>
				<td>ID</td>
				<td>${user.userId }</td>
			</tr>

			<tr>
				<td>用户名</td>
				<td><input type="text" name="userName"
					value="<%=user.getUserName()%>" /></td>
			</tr>

			<tr>
				<td>密码</td>
				<td><input type="password" name="password"
					value="<%=user.getPassword()%>" /></td>
			</tr>

			<tr>
				<td>手机号</td>
				<td><input type="text" name="phoneNumber"
					value="<%=user.getPhoneNumber()%>" /></td>
			</tr>

			<tr>
				<td>邮箱</td>
				<td><input type="text" name="email"
					value="<%=user.getEmail()%>" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="确定" /></td>
			</tr>

			<tr>
				<td><input type="hidden" name="userId"
					value="<%=user.getUserId()%>" /></td>
			</tr>
		</table>
	</form>

</body>
</html>