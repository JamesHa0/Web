package com.demo;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		StudentDao dao = new StudentDaoImp();
		String sno = request.getParameter("sno");
		try {
			Student list = dao.listStudentOne(sno);
			request.getSession().setAttribute("student", list);
			RequestDispatcher rd = request.getRequestDispatcher("echoUpdate.jsp");
			rd.forward(request, response);
		} catch (DaoException e) {
			e.printStackTrace();
			String message = "连接数据库失败！";
			request.setAttribute("msg", message);
			RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
