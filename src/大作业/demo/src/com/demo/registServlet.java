package com.demo;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/registServlet")
public class registServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String phoneNumber = request.getParameter("phoneNumber");
		String email = request.getParameter("email");
		String password = request.getParameter("password1");

		User user = new User(userId,userName,password,phoneNumber,email);
		userDaoImp userImp=new userDaoImp();
		boolean success;
		String message = null;
		try {
			success = userImp.addUser(user);
			if (success) {
				message = "注册成功！";
			} else {
				message = "注册失败！";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			message = "连接数据库失败！";
		} finally {
			request.setAttribute("userLogin_msg", message);
			RequestDispatcher rd = request.getRequestDispatcher("L_R.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
