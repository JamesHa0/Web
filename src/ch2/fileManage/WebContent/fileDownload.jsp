<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.zyh.fileBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件下载</title>
</head>
<body>
	<table align="center" border="1" cellspacing="0" width="90%"
		height="90%">
		<caption>
			<h1>请选择下载的文件</h1>
			<h2 style="color: red;">${message}</h2>
		</caption>
		<tr align="center">
			<td><h3>序号</h3></td>
			<td><h3>文件名</h3></td>
			<td><h3>文件类型</h3></td>
			<td><h3>上传人</h3></td>
			<td><h3>上传时间</h3></td>
			<td colspan="2"><h3>操作</h3></td>
		</tr>
		<tr align="center">
			<td><h4>01</h4></td>
			<td><h4>背景图片</h4></td>
			<td><h4>img</h4></td>
			<td><h4>zyh</h4></td>
			<td><h4>2024-05-04</h4></td>
			<td><a href="/fileManage/fileDownloadServlet?filename=bg.jpg&filetype=img&username=zyh">下载图片</a></td>
			<td><a href="/fileManage/browsPictureServlet?filename=bg.jpg&username=zyh">查看图片</a></td>
		</tr>
		<tr align="center">
			<td><h4>02</h4></td>
			<td><h4>Bon Jovi - It's My Life</h4></td>
			<td><h4>mp3</h4></td>
			<td><h4>zyh</h4></td>
			<td><h4>2024-05-04</h4></td>
			<td><a href="/fileManage/fileDownloadServlet?filename=Bon Jovi - It's My Life.mp3&filetype=mp3&username=zyh" >下载音频</a></td>
			<td><audio src="source/zyh/mp3/Bon Jovi - It's My Life.mp3" controls="controls"></audio></td>
		</tr>
		<tr align="center">
			<td><h4>03</h4></td>
			<td><h4>test</h4></td>
			<td><h4>file</h4></td>
			<td><h4>zyh</h4></td>
			<td><h4>2024-05-04</h4></td>
			<td colspan="2"><a href="/fileManage/fileDownloadServlet?filename=test.docx&filetype=file&username=zyh">下载文件</a></td>
		</tr>
		<%
			response.setContentType("text/html;charset=UTF-8");
			fileBean fb = (fileBean)request.getAttribute("fb");
			if (fb != null){
				out.print("<tr align='center'>");
				out.print("<td><h4>04</h4></td>");
				out.print("<td><h4>" + fb.getFileName() + "</h4></td>");
				out.print("<td><h4>" + fb.getFileType() + "</h4></td>");
				out.print("<td><h4>" + fb.getUserName() + "</h4></td>");
				out.print("<td><h4>" + fb.getUserDate() + "</h4></td>");
				if ("img".equals(fb.getFileType())){
					out.print("<td><a href=\"/fileManage/fileDownloadServlet?filename="+fb.getFileName()+"&username="+fb.getUserName()+"&filetype=img\">下载图片</a></td>");
					out.print("<td><a href=\"/fileManage/browsPictureServlet?filename="+fb.getFileName()+"\">查看图片</a></td>");
				}
				if ("mp3".equals(fb.getFileType())){
					out.print("<td><a href=\"/fileManage/fileDownloadServlet?filename="+fb.getFileName()+"&username="+fb.getUserName()+"&filetype=mp3\">下载音频</a></td>");
					out.print("<td><audio src=\"" +fb.getFileName()+ "\" controls=\"controls\"></audio></td>");
				}
				if ("file".equals(fb.getFileType())){
					out.print("<td colspan=\"2\"><a href=\"/fileManage/fileDownloadServlet?filename="+fb.getFileName()+"&username="+fb.getUserName()+"&filetype=file\">下载文件</a></td>");
				}
				out.print("</tr>");
			}
		%>
		<tr align="center">
			<td colspan="7"><a href="fileUpload.jsp" target="right"><h3>文件上传</h3></a></td>
		</tr>
	</table>
</body>
</html>