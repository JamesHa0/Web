package com.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.UserDao;
import com.demo.userDaoImp;

import com.demo.User;

@WebServlet("/queryServlet")
public class queryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		userDaoImp userImp = new userDaoImp();
		try {
			List<User> list = userImp.listUser();
			request.getSession().setAttribute("userList", list);
			RequestDispatcher rd = request.getRequestDispatcher("Admin/queryAll.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			String message = "查询失败";
			request.setAttribute("msg", message);
			RequestDispatcher rd = request.getRequestDispatcher("Admin/query.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		userDaoImp userImp = new userDaoImp();
		String userId = request.getParameter("userId");
		try {
			User list = userImp.listUserOne(userId);
			request.getSession().setAttribute("user", list);
			RequestDispatcher rd = request.getRequestDispatcher("Admin/queryOne.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			String message = "查询失败";
			request.setAttribute("msg", message);
			RequestDispatcher rd = request.getRequestDispatcher("Admin/query.jsp");
			rd.forward(request, response);
		}

	}

}
