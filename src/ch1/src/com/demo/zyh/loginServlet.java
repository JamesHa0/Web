package com.demo.zyh;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String checkinput = request.getParameter("checkcode");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		String checkcode_session = (String) session.getAttribute("checkcode_session");
		Object uname = (String) session.getAttribute("uname");
		String Suname = (String) uname;
		Object pwd = (String) session.getAttribute("pwd");
		String Spwd = (String) pwd;
		String usernamelist[] = new String[] { "詹宇昊", "zyh", "ZhanYuHao", "JamesHao", "zhanyuhao", Suname };
		String passwordlist[] = new String[] { "22023237", "22023237", "22023237", "22023237", "22023237", Spwd };
		if (checkcode_session.equalsIgnoreCase(checkinput)) {
			if ((username == null || username.isEmpty()) || (password == null || password.isEmpty())) {
				request.setAttribute("error_massage", "用户名或密码不能为空！");
				request.getRequestDispatcher("/failServlet").forward(request, response);
			} else {
				boolean isMatch = false;
				for (int i = 0; i < usernamelist.length; i++) {
					if (username.equals(usernamelist[i]) && password.equals(passwordlist[i])) {
						request.setAttribute("username", username);
						request.getRequestDispatcher("/successServlet").forward(request, response);
						isMatch = true;
						break;
					}
				}
				if (!isMatch) {
					request.setAttribute("error_massage", "用户名或密码输入错误！");
					request.getRequestDispatcher("/failServlet").forward(request, response);
				}
			}
		} else {
			request.setAttribute("error_massage", "验证码输入错误，请重新登录");
			request.getRequestDispatcher("/failServlet").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
