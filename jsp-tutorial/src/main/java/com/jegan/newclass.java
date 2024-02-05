package com.jegan;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;

@WebServlet("/DemoServlet")
public class newclass extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		user u = new user("Jegan", 21, "Male");
		req.setAttribute("user", u);
		RequestDispatcher rd = req.getRequestDispatcher("display.jsp");
		rd.forward(req, res);
	}
}
