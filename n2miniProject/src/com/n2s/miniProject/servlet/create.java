package com.n2s.miniProject.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.n2s.miniProject.DBClass;
import com.n2s.miniProject.StudentDetail;

import java.sql.*;

@WebServlet("/create")
public class create extends HttpServlet {
	private static final long serialVersionUID = 1L;

//	static Connection conn = null;
//	Statement stmt = null;
//	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
//	static final String DB_URL = "jdbc:mysql://localhost/miniproject";
//	static final String USER = "root";
//	static final String PASS = "root";


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		DBClass obj1 = new DBClass();
		StudentDetail sd = new StudentDetail();

		sd.setFname(request.getParameter("fname"));
		sd.setLname(request.getParameter("lname"));
		sd.setId(Integer.parseInt(request.getParameter("id")));
		sd.setPhno(request.getParameter("phno"));
		sd.setCourse(request.getParameter("course"));
		sd.setAddress(request.getParameter("address"));
		Integer id = sd.getId();
		String fname = sd.getFname();
		String lname = sd.getLname();
		String phoneno = sd.getPhno();
		String address =sd.getAddress(); 
		String course = sd.getCourse();
		
		PrintWriter out1 = response.getWriter();
		int id2 = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver started..");
			obj1.conn = DriverManager.getConnection(obj1.DB_URL, obj1.USER,obj1.PASS);
			System.out.println("connection established..");
			obj1.stmt = obj1.conn.createStatement();
			
			out.println("<html><body>");
			 out.println("<link href= static/css/style.css rel=stylesheet type=text/css>");
			
			
			//sql = "INSERT INTO table1 VALUES (a,b,c)";
			
			String sql1 = "SELECT id FROM student1";
			ResultSet rs = obj1.stmt.executeQuery(sql1);
			int a =0;
			while (rs.next()){
				id2 = rs.getInt("id");
			 
			if (id2 != id) {
				String sql = "insert into student1 values('" + id + "','" + fname + "','" + lname + "','" + phoneno + "','" + address + "','" + course + "')";
				obj1.stmt.executeUpdate(sql);
				++a;
				out.println("<h1>data  Inserted..<br></h1>");
				
				out1.println("<script>alert('Data Inserted!!');</script>");
				out.println("<br>");
				
				out.println("<a href='adminConsole.jsp'>click to continue</a>");
				break;
				
			}
			else if (id2 == id){
				
				out.println("<script>alert('   ID already exists!!');</script>");
				out.println("<a href='adminConsole.jsp'>homepage</a>");
			}
		}
			
			
//			String sql1 = "SELECT id, fname, lname FROM student1 where id='+id'";
//			ResultSet rs = obj1.stmt.executeQuery(sql1);
//			out1.println("<script>alert('Hello World!');</script>");
//			out.println("<table><tr><th>");
//			out.println("  id			name		age");
//			out.println("----------------------------------------------------------");
//			while (rs.next()) {
//				 id1 = rs.getInt("id");
//				 fname = rs.getString("fname");
//				 lname = rs.getString("lname");
//
//				System.out.println("" + id1 + "			" + fname + "		" + lname);
//			}
			
//			out.println("id""+<table><tr><th>");
			
//			response.sendRedirect("adminConsole.jsp");
//			out1.println("<a href='adminConsole.jsp'>homepage</a>"+"</body></html>");
//			rs.close();
			obj1.stmt.close();
			obj1.conn.close();
			rs.close();
			

			
//			Class.forName("com.mysql.jdbc.Driver");
//
//			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject", "root", "root");
//
//			PreparedStatement ps = con.prepareStatement("insert into Student values(?,?,?)");
//
//			ps.setString(1, id);
//			ps.setString(2, fname);
//			ps.setString(3, lname);
//			int i = ps.executeUpdate();
//
//			if (i > 0) {
//				out.println("details successfully added ");
//				System.out.println(fname+""+lname+""+id);
//				
//			}

		} catch (Exception se) {
			out1.println("<script>alert('ID alreday exits!!');</script>");
			out.println("<a href='adminConsole.jsp'>try again</a>");
			se.printStackTrace();
		}
		out.println("</body></html>");
	}

}
