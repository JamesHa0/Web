<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>删除用户</title>
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
	<form action="../deleteServlet" method="post">
		请输入要删除的用户ID：<input type="text" name="userId"><br /> <input
			type="submit" value="确认">

	</form>

</body>
</html>