<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增用户</title>
<style type="text/css">
* {
	margin: 0px auto;
}
</style>
</head>
<body>
	<%
		String message = (String) request.getAttribute("msg");
		if (message != null) {
	%>
	<script type="text/javascript">
	alert("<%=message%>");
	</script>
	<%
		}
	%>
	<form action="../addServlet" method="post">

		${msg}<br /> <br /> <br />
		<table style="align: center">
			<caption>请输入用户信息</caption>
			<tr>
				<td>ID</td>
				<td><input type="text" name="userId" /></td>
			</tr>

			<tr>
				<td>用户名</td>
				<td><input type="text" name="userName" /></td>
			</tr>

			<tr>
				<td>密码</td>
				<td><input type="password" name="password"  />
			</tr>

			<tr>
				<td>手机号</td>
				<td><input type="text" name="phoneNumber" /></td>
			</tr>

			<tr>
				<td>邮箱</td>
				<td><input type="text" name="email" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="确定" /></td>
				<td><input type="reset" value="重置" /></td>
			</tr>
		</table>
	</form>



</body>
</html>