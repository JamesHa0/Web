package com.demo;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String checkinput = request.getParameter("checkcode");
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		String isAdmin = request.getParameter("isAdmin");
		HttpSession session = request.getSession();
		String checkcode_session = (String) session.getAttribute("checkcode_session");
		
		userDaoImp userImp=new userDaoImp();
		
		if (checkcode_session.equalsIgnoreCase(checkinput)) {
			if ((userId == null || userId.isEmpty()) || (password == null || password.isEmpty())) {
				if("true".equals(isAdmin)) {
					request.setAttribute("adminLogin_msg", "用户名或密码不能为空！");
					request.getRequestDispatcher("/login.jsp").forward(request, response);
				}else {
					request.setAttribute("userLogin_msg", "用户名或密码不能为空！");
					request.getRequestDispatcher("/L_R.jsp").forward(request, response);
				}
			} else {
				User user;
				try {
					if("true".equals(isAdmin)) {
						user = userImp.check2(userId, password);
						session.setAttribute("user", user);
						session.setAttribute("userName",user.getUserName());
						request.getRequestDispatcher("Admin/index.jsp").forward(request, response);
					}else {
						user = userImp.check(userId, password);
						session.setAttribute("user", user);
						session.setAttribute("userName",user.getUserName());
						request.getRequestDispatcher("/index.jsp").forward(request, response);
					}
				} catch (SQLException e) {
					if("true".equals(isAdmin)) {
						request.setAttribute("adminLogin_msg", "用户名或密码输入错误！");
						request.getRequestDispatcher("/login.jsp").forward(request, response);
					}else {
						request.setAttribute("userLogin_msg", "用户名或密码输入错误！");
						request.getRequestDispatcher("/L_R.jsp").forward(request, response);
					}
				}
			}
		} else {
			if("true".equals(isAdmin)) {
				request.setAttribute("adminLogin_msg", "验证码输入错误，请重新登录");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}else {
				request.setAttribute("userLogin_msg", "验证码输入错误，请重新登录");
				request.getRequestDispatcher("/L_R.jsp").forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}