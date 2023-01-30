package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url = "jdbc:mysql://127.0.0.1:3306/food_sys";
	private static  String userName = "root";
	private static String password ="abc123";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,userName,password); 
			
		}
		catch(Exception e){
			System.out.println("Database conecction is not success");
			 
		}
		return con;
		
	}
}
