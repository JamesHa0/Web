<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.demo.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改信息</title>
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
	<form action="../updateServlet" method="get">
		请输入用户ID：<input type="text" name="userId" />
		<input type="submit" value="确定" />
	</form>

</body>
</html>