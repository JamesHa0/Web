package com.zyh;

import java.io.*;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fileDownloadServlet")
public class fileDownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String filename = request.getParameter("filename");
		String filetype = request.getParameter("filetype");
		String userId = request.getParameter("userId");
		ServletContext servletcontext = this.getServletContext();
		String realpath = servletcontext.getRealPath("/source/"+ userId +"/" + filetype + "/" + filename);
		File file = new File(realpath);
		if (file.exists()) {
			FileInputStream fis = new FileInputStream(realpath);
			String minetype = servletcontext.getMimeType(filename);
			response.setHeader("content-type", minetype);
			response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(filename,"UTF-8"));
			BufferedInputStream bis = null;
			byte[] buffer = new byte[1024];
			bis = new BufferedInputStream(fis);
			OutputStream os = response.getOutputStream();
			int i = bis.read(buffer);
			while (i != -1) {
				os.write(buffer, 0, i);
				i = bis.read(buffer);
			}
			if (bis != null) {
				bis.close();
			}
			if (fis != null) {
				fis.close();
			}
		} else {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("�ļ������ڣ�");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
