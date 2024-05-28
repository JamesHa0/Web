package com.demo;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.StudentDao;
import com.demo.StudentDaoImp;

import com.demo.Student;

@WebServlet("/queryServlet")
public class queryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		StudentDao dao = new StudentDaoImp();
		try {
			List<Student> list = dao.listStudent();
			request.getSession().setAttribute("studentList", list);
			RequestDispatcher rd = request.getRequestDispatcher("queryAll.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			String message = "查询失败";
			request.setAttribute("msg", message);
			RequestDispatcher rd = request.getRequestDispatcher("query.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		StudentDao dao = new StudentDaoImp();
		String sno = request.getParameter("sno");
		try {
			Student list = dao.listStudentOne(sno);
			request.getSession().setAttribute("student", list);
			RequestDispatcher rd = request.getRequestDispatcher("queryOne.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			String message = "查询失败";
			request.setAttribute("msg", message);
			RequestDispatcher rd = request.getRequestDispatcher("query.jsp");
			rd.forward(request, response);
		}

	}

}
