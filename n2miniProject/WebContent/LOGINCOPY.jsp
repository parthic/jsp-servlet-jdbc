package com.n2s.miniProject.servlet;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.n2s.miniProject.AdminRegister;
import com.n2s.miniProject.DBClass;
import java.util.*;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		AdminRegister ad = new AdminRegister();
		ad.setUname(request.getParameter("name"));
		ad.setPassword(request.getParameter("password"));
		String uname = ad.getUname();
		String password = ad.getPassword();
		String username = null;
		out.println("<html><body>");
		 out.println("<link href= static/css/style.css rel=stylesheet type=text/css>");

		try {
			DBClass obj1 = new DBClass();
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver started..");
			obj1.conn = DriverManager.getConnection(obj1.DB_URL, obj1.USER, obj1.PASS);
			System.out.println("connection established..");
			obj1.stmt = obj1.conn.createStatement();

			String sql1 = "SELECT * FROM registry";
			ResultSet rs = obj1.stmt.executeQuery(sql1);
//			out.println("<html><body>");
			//out.println("<table><tr><th>");
//			out.println("username      " + "</th>" + "<th>" + "password        " + "</th>");
//			out.println("----------------------------------------------------------");
			int a =0;
			while (rs.next()){
				username = rs.getString("uname");
				String pwd = rs.getString("password");

//				out.println("<tr><td>" + username + "</td><td>			" + pwd + "</td><td>		");
//				out.println("</table>");
			 
			if (username.equals(uname)) {
//				out.println("login successful");
				out.println("<script>alert('login successful!!');</script>");
				out.println("<br>");
				a++;
				out.println("<a href='adminConsole.jsp'>click to continue</a>");
				//String name = request.getParameter("username");
				//session.setAttribute("theName", username);
				HttpSession session = request.getSession(true);
				session.setAttribute("Name",username);
			}}
			if(a <= 0) {
//				out.println("<br>");
//				out.println("----------------------------------------------------------");
//				out.println("<br>");
//				out.println("login not successful");
				out.println("<br>");
//				out.println("----------------------------------------------------------");
//				out.println("<br>");
//				out.println("from jsp:  " + uname);
//				out.println("<br>");
//				out.println("from db : " + username);
//				out.println("NOT A AUTHORIZED USER,  " + uname);
				out.println("<script>alert('Not an Authorised USER!!');</script>");
				out.println("<a href='login.jsp'>tryagain!!</a>" + "</body></html>");
				
			}
			
			 
//			out.println("----------------------------------------------------------");
			out.println("<br>");
			
			rs.close();
			obj1.stmt.close();
			obj1.conn.close();

		} catch (Exception se) {
			se.printStackTrace();
		}
	}

}
