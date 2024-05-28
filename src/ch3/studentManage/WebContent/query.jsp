<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询信息</title>
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
	<p>
		<a href="queryServlet">查询所有信息</a>
	</p>
	<form action="queryServlet" method="post">
		请输入学号：<input type="text" name="sno" size="15" />
		<input type="submit" value="确定" />
	</form>
</body>
</html>