package com.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.DaoException;
import com.demo.Student;
import com.demo.StudentDao;
import com.demo.StudentDaoImp;

@WebServlet("/echoUpdate")
public class echoUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String sno = request.getParameter("sno");
		String sname = request.getParameter("sname");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		String institute = request.getParameter("institute");

		Student s = new Student();
		s.setSno(sno);
		s.setSname(sname);
		s.setSex(sex);
		s.setBirthday(birthday);
		s.setInstitute(institute);

		StudentDao dao = new StudentDaoImp();
		int success;
		String message = null;
		try {
			success = dao.update(s);
			if (success > 0) {
				message = "修改记录成功";
			} else {
				message = "修改记录失败";
			}

		} catch (DaoException e) {
			e.printStackTrace();
			message = "连接数据库失败！";
		}finally {
			request.setAttribute("msg", message);
			RequestDispatcher rd = request.getRequestDispatcher("echoUpdate.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
