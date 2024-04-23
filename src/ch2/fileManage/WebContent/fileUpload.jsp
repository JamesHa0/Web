<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传</title>
</head>
<body>
	<form action="fileUpload.do" enctype="multipart/form-data"
		method="post">
		<table align="center">
			<tr>
				<td colspan="2" align="center"><h4>文件上传</h4></td>
			</tr>
			<tr>
				<td><h4>会员号:</h4></td>
				<td><input type="text" name="mnumber" size="30" /></td>
			</tr>

			<tr>
				<td><h4>姓名:</h4></td>
				<td><input type="text" name="username" size="30" /></td>
			</tr>

			<tr>
				<td><h4>文件类型:</h4></td>
				<td><select name="list">
						<option value="" selected="selected">请选择文件类型</option>
						<option value="file">普通文件</option>
						<option value="img">图片文件</option>
						<option value="mp3">音频文件</option>
				</select></td>
			</tr>

			<tr>
				<td><h4>上传时间:</h4></td>
				<td><input name="userDate" type="date" /></td>
			</tr>

			<tr>
				<td><h4>文件名:</h4></td>
				<td><input type="file" name="filename" size="30" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="提交" /></td>
				<td><input type="reset" value="重置" /></td>
			</tr>
		</table>
	</form>
</body>
</html>