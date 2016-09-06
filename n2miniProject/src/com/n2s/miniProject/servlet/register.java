package com.n2s.miniProject.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.n2s.miniProject.AdminRegister;
import com.n2s.miniProject.DBClass;

@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AdminRegister ad = new AdminRegister();
		ad.setId(Integer.parseInt(request.getParameter("id")));
		ad.setUname(request.getParameter("name"));
		ad.setPassword(request.getParameter("password"));
		ad.setCpassword(request.getParameter("password2"));
		ad.setFname(request.getParameter("fname"));
		ad.setLname(request.getParameter("lname"));
		ad.setAddress(request.getParameter("address"));
		ad.setEmail(request.getParameter("email"));
		ad.setPhone(request.getParameter("phone"));
		int id = ad.getId();
		String uname = ad.getUname();
		String password = ad.getPassword();
		String passwordc = ad.getCpassword();
		String fname = ad.getFname();
		String lname = ad.getLname();
		String addr = ad.getAddress();
		String phone = ad.getPhone();
		String email = ad.getEmail();

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		DBClass obj1 = new DBClass();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver started..");
			obj1.conn = DriverManager.getConnection(obj1.DB_URL, obj1.USER, obj1.PASS);
			System.out.println("connection established..");
			obj1.stmt = obj1.conn.createStatement();
			PrintWriter out1 = response.getWriter();
			String sql = "insert into registry values('" + id + "','" + uname + "','" + password + "','" + passwordc + "','" + fname
					+ "','" + lname + "','" + addr + "','" + phone + "','" + email + "')";
			obj1.stmt.executeUpdate(sql);
			out.println("data  Inserted..<br>");
			out1.println("<a href='login.jsp'>homepage</a>" + "</body></html>");
			obj1.stmt.close();
			obj1.conn.close();

		} catch (Exception se) {
			se.printStackTrace();
		}
	}

}
