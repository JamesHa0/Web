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

@WebServlet("/echoUpdate")
public class echoUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String phoneNumber = request.getParameter("phoneNumber");
		String email = request.getParameter("email");

		User user = new User(userId,userName,password,phoneNumber,email);
		
		userDaoImp userImp = new userDaoImp();
		int success;
		String message = null;
		try {
			success = userImp.update(user);
			if (success > 0) {
				message = "修改记录成功";
			} else {
				message = "修改记录失败";
			}

		} catch (DaoException | SQLException e) {
			e.printStackTrace();
			message = "连接数据库失败！";
		}finally {
			request.setAttribute("msg", message);
			RequestDispatcher rd = request.getRequestDispatcher("Admin/echoUpdate.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
