<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.demo.Student"%>

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
		Student student = (Student) session.getAttribute("student");
		String message = (String) request.getAttribute("msg");
		if (message != null) {
	%>
	<script type="text/javascript">
	alert("<%=message%>");
	location.href="update.jsp";
	</script>
	<%
		}
	%>
	<form action="echoUpdate" method="post">
		<table style="align: center">
			<caption>请输入学生信息</caption>
			<tr>
				<td>学号</td>
				<td><input type="text" name="sno" maxlength="8"
					value="<%=student.getSno()%>" /></td>
			</tr>

			<tr>
				<td>姓名</td>
				<td><input type="text" name="sname"
					value="<%=student.getSname()%>" /></td>
			</tr>

			<tr>
				<td>性别</td>
				<td><input type="text" name="sex" value="<%=student.getSex()%>" /></td>
			</tr>

			<tr>
				<td>出生日期</td>
				<td><input type="text" name="birthday"
					value="<%=student.getBirthday()%>" /></td>
			</tr>

			<tr>
				<td>所在学院</td>
				<td><input type="text" name="institute"
					value="<%=student.getInstitute()%>" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="确定" /></td>
			</tr>

		</table>
	</form>

</body>
</html>