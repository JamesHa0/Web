<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增用户</title>
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
	<form action="addServlet" method="post">

		${msg}<br /> <br /> <br />
		<table style="align: center">
			<caption>请输入学生信息</caption>
			<tr>
				<td>学号</td>
				<td><input type="text" name="sno" maxlength="8" /></td>
			</tr>

			<tr>
				<td>姓名</td>
				<td><input type="text" name="sname" /></td>
			</tr>

			<tr>
				<td>性别</td>
				<td><input type="radio" name="sex" value="男" checked="checked" />男
					<input type="radio" name="sex" value="女" />女</td>
			</tr>

			<tr>
				<td>出生日期</td>
				<td><input type="text" name="birthday" placeholder="yyyy-MM-dd" /></td>
			</tr>

			<tr>
				<td>所在学院</td>
				<td><select name="institute">
						<option value="信息工程学院">信息工程学院</option>
						<option value="土木工程学院">土木工程学院</option>
						<option value="食品工程学院">食品工程学院</option>
						<option value="文法学院">文法&nbsp;&nbsp;&nbsp;&nbsp;学院</option>
						<option value="地理旅游学院">地理旅游学院</option>
				</select></td>
			</tr>

			<tr>
				<td><input type="submit" value="确定" /></td>
				<td><input type="reset" value="重置" /></td>
			</tr>
		</table>
	</form>



</body>
</html>