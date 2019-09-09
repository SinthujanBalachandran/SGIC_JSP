package com.sgic.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {
	public static Connection getDBConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/defect_tracker","root","");
			System.out.println("connected");
			return conn;
		}catch(Exception e){
			System.out.println(e);
			return null;
		}
					
		}
	}

