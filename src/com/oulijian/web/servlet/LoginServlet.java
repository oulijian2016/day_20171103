package com.oulijian.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String username = request.getParameter("username");
		String userPassword = request.getParameter("userPassword");
		if(username == null || "".equals(username)){
			request.setAttribute("msg", "用户名为空，请重新输入！");
			request.getRequestDispatcher("/login/login/login.jsp").forward(request, response);
			return;
		}
		
		// 向session中放入用户名
		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		
		// 重定向到成功页面
		response.sendRedirect("/day_20171102/login/success/suss1.jsp");
	}

}
