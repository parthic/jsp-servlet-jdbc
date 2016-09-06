package com.n2s.miniProject.servlet;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.n2s.miniProject.DBClass;

/**
 * Servlet implementation class update
 */
@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("data ..<br>");
		DBClass obj1 = new DBClass();

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String id = request.getParameter("id");
		int id1 = Integer.parseInt(id);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver started..");
			obj1.conn = DriverManager.getConnection(obj1.DB_URL, obj1.USER, obj1.PASS);
			System.out.println("connection established..");
			obj1.stmt = obj1.conn.createStatement();
			PrintWriter out1 = response.getWriter();
			String sql = "update  student1 SET fname='"+fname+"',lname='"+lname+"' where id = '"+id1+"' ";
			obj1.stmt.executeUpdate(sql);
			out.println("data  updated..<br>");

			out1.println("<a href='adminConsole.jsp'>homepage</a>" + "</body></html>");
			obj1.stmt.close();
			obj1.conn.close();

		} catch (Exception se) {
			se.printStackTrace();
		}
	}

}
