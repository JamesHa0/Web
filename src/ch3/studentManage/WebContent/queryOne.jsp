<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.demo.Student"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询单个信息</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>学号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>出生日期</td>
			<td>所在专业</td>
		</tr>
		<%
			Student student = (Student) session.getAttribute("student");
		%>
		<tr>
			<td><%=student.getSno()%></td>
			<td><%=student.getSname()%></td>
			<td><%=student.getSex()%></td>
			<td><%=student.getBirthday()%></td>
			<td><%=student.getInstitute()%></td>
		</tr>
		<%
			
		%>
	</table>
	<p style="align: center;">
		<a href="query.jsp"><span style="color: blue; font-size: 14px;">返回</span></a>
	</p>
</body>
</html>