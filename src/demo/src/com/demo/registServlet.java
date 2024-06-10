package com.demo;

import java.io.IOException;
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
		String username = request.getParameter("username");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		HttpSession session = request.getSession();
		session.setAttribute("uname", username);
		session.setAttribute("pwd", password1);
		if (password1 != null && password2 != null && username != null) {
			if (password1.equals(password2)) {
				request.setAttribute("uname", username);
				request.setAttribute("pwd", password1);
				request.getRequestDispatcher("/registsuccessServlet").forward(request, response);
			}else {
				request.getRequestDispatcher("/registfailServlet").forward(request, response);
			}
		} else {
			request.getRequestDispatcher("/registfailServlet").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
