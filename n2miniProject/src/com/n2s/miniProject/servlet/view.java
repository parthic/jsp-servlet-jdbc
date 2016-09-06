package com.n2s.miniProject.servlet;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.n2s.miniProject.DBClass;

@WebServlet("/view")
public class view extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		DBClass obj1 = new DBClass();
		out.println("<html><body>");
		 out.println("<link href= static/css/style.css rel=stylesheet type=text/css>");
		String id = request.getParameter("id");
		int id1 = Integer.parseInt(id);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver started..");

			obj1.conn = DriverManager.getConnection(obj1.DB_URL, obj1.USER, obj1.PASS);
			System.out.println("connection established..");
			obj1.stmt = obj1.conn.createStatement();

			String sql1 = "SELECT * FROM student1 where id = '" + id1 + "' ";
			ResultSet rs = obj1.stmt.executeQuery(sql1);

			out.println("<table><tr><th>");
			out.println("id" + "</th>" + "<th>" + "fname" + "</th>" + "<th>" + "lname" + "</th>" + "<th>" + "phone no"+ "<th>" + "address" + "</th>" + "<th>" + "course" + "</th>" +"</tr><br>");
			// out.println("----------------------------------------------------------");
			while (rs.next()) {
				id1 = rs.getInt("id");
				String fname = rs.getString("fname");
				String lname = rs.getString("lname");
				String phoneno = rs.getString("phoneno");
				String address = rs.getString("address");
				String course = rs.getString("course");
				out.println(
						"<tr><td>" + id1 + "</td><td>" + fname + "</td><td>" + lname +"</td><td>" + phoneno + "</td><td>" + address +"</td><td>" + course +"</td><tr>");
			}
			out.println("</table>");
			out.println("<a href='adminConsole.jsp'>homepage</a>" + "</body></html>");
			rs.close();
			obj1.stmt.close();
			obj1.conn.close();
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(" end of task");
	}

}
