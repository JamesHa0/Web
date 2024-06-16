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
import com.demo.userDaoImp;

@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		 String userId=  request.getParameter("userId");
		 userDaoImp userImp = new userDaoImp();
		 String message = null;
			try {
				int success=userImp.removeUser(userId);
				if(success>0){
					message = "删除记录成功！";
				}else {
					message="删除记录失败,找不到该用户！";
				}
			} catch (SQLException | DaoException e1) {
				e1.printStackTrace();
				message = "连接数据库失败！";
			}finally {
				request.setAttribute("msg", message);
				RequestDispatcher rd = request.getRequestDispatcher("Admin/delete.jsp");
				rd.forward(request, response);
			}
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
