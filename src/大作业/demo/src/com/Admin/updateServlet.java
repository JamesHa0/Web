package com.Admin;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.DaoException;
import com.demo.User;
import com.demo.userDaoImp;

@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		userDaoImp userImp = new userDaoImp();
		String userId = request.getParameter("userId");
		try {
			User list = userImp.listUserOne(userId);
			request.getSession().setAttribute("user", list);
			RequestDispatcher rd = request.getRequestDispatcher("Admin/echoUpdate.jsp");
			rd.forward(request, response);
		} catch (DaoException | SQLException e) {
			e.printStackTrace();
			String message = "连接数据库失败！";
			request.setAttribute("msg", message);
			RequestDispatcher rd = request.getRequestDispatcher("Admin/update.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
