package com.n2s.miniProject.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		

		DBClass obj1 = new DBClass();
		out.println("<html><body>");
		out.println("<link href= static/css/style.css rel=stylesheet type=text/css>");
		String id = request.getParameter("id");
		int id1 = Integer.parseInt(id);
		int id2 = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			obj1.conn = DriverManager.getConnection(obj1.DB_URL, obj1.USER, obj1.PASS);
			System.out.println("connection established..");
			obj1.stmt = obj1.conn.createStatement();

			
			// out.println("data deleted..<br>");
			
			String sql1 = "SELECT id FROM student1";
			ResultSet rs = obj1.stmt.executeQuery(sql1);
			int a =0;
			while (rs.next()){
				id2 = rs.getInt("id");
			 
			if (id2 == id1) {
				String sql = "DELETE FROM student1 where id = '" + id1 + "' ";
				obj1.stmt.executeUpdate(sql);
				out.println("<script>alert('data deleted!!');</script>");
				out.println("<br>");
				a++;
				out.println("<a href='adminConsole.jsp'>click to continue</a>");
				
			}}
			if(a <= 0) {
				
				out.println("<script>alert('   USER data not found!!');</script>");
				out.println("<a href='adminConsole.jsp'>homepage</a>");
			}
			
			out.println("</body></html>");
//			do{
//			out.println("<script>alert('Data Deleted!!');</script>");
//			a--;
//			}while(a>0);

//			out.println("<a href='adminConsole.jsp'>homepage</a>" + "</body></html>");
			//response.sendRedirect("adminConsole.jsp");
			obj1.stmt.close();
			obj1.conn.close();

		} catch (Exception se) {
			se.printStackTrace();
			out.println("<script>alert('Data Not Found!!');</script>");
		}
	}

}
