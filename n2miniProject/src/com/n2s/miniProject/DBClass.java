package com.n2s.miniProject;

import java.sql.Connection;
import java.sql.Statement;

public class DBClass {
	
		public static Connection conn = null;
		public static Statement stmt = null;
		public static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
		public static final String DB_URL = "jdbc:mysql://localhost/miniproject";
		public static final String USER = "root";
		public static final String PASS = "root";
		
	
}
