package com.n2s.miniProject.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.n2s.miniProject.DBClass;

@WebServlet("/delete")
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		int a=1;

		DBClass obj1 = new DBClass();
		out.println("<html><body>");
		out.println("<link href= static/css/style.css rel=stylesheet type=text/css>");
		String id = request.getParameter("id");
		int id1 = Integer.parseInt(id);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			obj1.conn = DriverManager.getConnection(obj1.DB_URL, obj1.USER, obj1.PASS);
			System.out.println("connection established..");
			obj1.stmt = obj1.conn.createStatement();

			String sql = "DELETE FROM student1 where id = '" + id1 + "' ";
			obj1.stmt.executeUpdate(sql);
			// out.println("data deleted..<br>");
			
			do{
			out.println("<script>alert('Data Deleted!!');</script>");
			a--;
			}while(a>0);

			out.println("<a href='adminConsole.jsp'>homepage</a>" + "</body></html>");
			response.sendRedirect("adminConsole.jsp");
			obj1.stmt.close();
			obj1.conn.close();

		} catch (Exception se) {
			se.printStackTrace();
			out.println("<script>alert('Data Not Found!!');</script>");
		}
	}

}
