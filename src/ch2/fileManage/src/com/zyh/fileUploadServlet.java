package com.zyh;

import java.io.*;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "/fileUploadServlet", urlPatterns = { "/fileUpload.do" })
@MultipartConfig(location = "D:\\", fileSizeThreshold = 1024)
public class fileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String getFilename(Part part) {
		String fname = null;
		String header = part.getHeader("content-disposition");
		System.out.println(header);
		fname = header.substring(header.lastIndexOf("=") + 2, header.length() - 1);
		return fname;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String path = this.getServletContext().getRealPath("/");
		String userName = request.getParameter("username");
		String mnumber = request.getParameter("mnumber");
		String fType = request.getParameter("list");
		String date = request.getParameter("userDate");
		Part p = request.getPart("filename");
		String message = "";
		if (p.getSize() > 10 * 1024 * 1024) {//���ƴ�С10MB
			p.delete();
			message = "�ļ�̫�󣬲����ϴ���";
		} else {
			path = path + "\\source\\" + userName +"\\"+ fType;
			File f = new File(path);
			if (!f.exists()) {
				f.mkdirs();
			}
			String fname = getFilename(p);
			System.out.println(fname);
			p.write(path + "\\" + fname);

			fileBean fb = new fileBean(fname,fType,userName,date);//����������fileBean����
			request.setAttribute("fb", fb);
			request.getRequestDispatcher("/fileDownload.jsp");
			
			message = "�ļ��ϴ��ɹ���";
		}
		request.setAttribute("message", message);
		RequestDispatcher rd = request.getRequestDispatcher("/fileDownload.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
