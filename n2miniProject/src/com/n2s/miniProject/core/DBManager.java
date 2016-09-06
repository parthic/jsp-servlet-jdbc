//package com.n2s.miniProject.core;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//
//public class DBManager {
//
//	static Connection con;
//
//	public static Connection getDBconnection() {
//		try {
//			Class.forName("com.mysql.jdbc.Driver");
//			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ibe", "root", "admin");
//			System.out.println(con);
//		} catch (Exception e) {
//			System.out.println("class error" + e);
//		}
//		return con;
//	}
//
//	public void dbDisconnect() {
//
//	}
//
//}
